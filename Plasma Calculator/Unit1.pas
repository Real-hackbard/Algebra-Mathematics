unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, math, XPMan;

type _farbe = record r,g,b:byte end;
     tfarbe = record name:string[20];
                 farbe:array[0..255] of _farbe;
               end;

  TForm1 = class(TForm)
    Panel1: TPanel;
    E1: TEdit;
    L7: TLabel;
    CB1: TComboBox;
    Label1: TLabel;
    PaintBox1: TPaintBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    procedure D1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure CB1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
  private
     pal : array[0..255] of _farbe;
     farbfeld : array of array of byte;
     bitmap : tbitmap;
     rowrgb : pbytearray;
     cyclestart:integer;
    procedure paletteladen(sender: tobject);
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

var rotation:boolean = false;
      waagerecht:boolean = false;
      zeichnenaktiv:boolean = false;

// Load palette color values
procedure tform1.paletteladen(sender: tobject);
var k:string;
    ms1: TResourcestream;
    sel:integer;
begin
    sel:=cb1.itemindex;
  if sel>=0 then begin
      k:=cb1.Items.strings[cb1.itemindex];
      fillchar(pal,sizeof(pal),1);
      ms1 := TResourceStream.Create(hinstance,uppercase(k),'RT_RCDATA');
    try
      ms1.read(pal,768);
    finally
      ms1.Free;
    end;
  end;
end;

// Drawing routine
procedure TForm1.D1Click(Sender: TObject);
var breite,hoehe,i,j,index,q:integer;
    Time1, Time2, Time3, Freq: Int64;
    s:string;
    zrect:trect;
    faktor,ber,code:integer;

    // Calculate the average of the colors
    function farbmitte(f1,f2,abweich: integer): integer;
    asm
         shr ecx, 1
         add eax, edx       //(f1+f2) div 2
         shr eax, 1
         cmp ecx, 1
         jbe @ohnea         //different < 2
         push eax           //(f1+f2) div 2 speichern
         xor edx, edx       //Random generator
         mov eax, ecx       //Initialization to 0 until deviates
         imul edx, [randseed], $08088405
         inc edx
         mov [randseed], edx
         mul edx
         mov eax, edx       //in eax is a random value [0,deviation-1]
         pop edx            //(f1+f2) div 2 retrieve
         add eax, edx       //Addition (f1+f2) div 2
         shr ecx, 1         //different div 2
         sub eax, ecx       //subtraction differs div 2
         jc @null
         @ohnea: and eax, 255       //mod 256
         cmp eax, 0         //Test for zero
         jz @null
         ret
         @null: mov eax, 1
       end;

    //based on an idea by Horst_H
    procedure fenster(xa,xe,ya,ye:integer);
    var farbe1,farbe2,farbe3,farbe4,farbe5:byte;
        xm,ym,dx,dy:integer;
        ux,uy:boolean;
        pixel1,pixel2,pixel3,pixel4:byte;
    begin
        //Diamond-Square Algorithm
        if (xe-xa<=1) and (ye-ya<=1) then exit;
        xm:=(xa+xe) shr 1;
        ym:=(ya+ye) shr 1;

        pixel1:=farbfeld[ya,xa];
        pixel2:=farbfeld[ya,xe];
        pixel3:=farbfeld[ye,xa];
        pixel4:=farbfeld[ye,xe];

        dy:=(ye-ya)*faktor;
        dx:=(xe-xa)*faktor;
        if waagerecht then ux:=xm<xe
                      else ux:=xm>xa;
        uy:=ym>ya;

        if xa>0 then
           farbe1:=farbfeld[ym,xa]
        else
        begin
           if uy then begin
             farbe1:=farbmitte(pixel1,pixel3,dy);
             farbfeld[ym,xa]:=farbe1;
//             inc(ber);
           end;
        end;

        if ya>0 then
           farbe2:=farbfeld[ya,xm]
        else
        begin
           if ux then begin
             farbe2:=farbmitte(pixel1,pixel2,dx);
             farbfeld[ya,xm]:=farbe2;
//             inc(ber);
           end;
        end;

        if uy then begin
          farbe3:=farbmitte(pixel2,pixel4,dy);
          farbfeld[ym,xe]:=farbe3;
//          inc(ber);
        end;

        if ux then begin
          farbe4:=farbmitte(pixel3,pixel4,dx);
          farbfeld[ye,xm]:=farbe4;
//          inc(ber);
        end else exit;

        if uy then begin
          farbe5:=(farbe1+farbe2+farbe3+farbe4) shr 2;
          farbfeld[ym,xm]:=farbe5;
//          inc(ber);

          //recursive construction
          fenster(xa,xm,ya,ym);
          fenster(xm,xe,ya,ym);
        end;

        fenster(xa,xm,ym,ye);
        fenster(xm,xe,ym,ye);
     end;

begin
    if zeichnenaktiv then exit;
    //Color rotation test
    if rotation then
    begin
      button2click(sender);
      button2.caption:='Color rotation';
      exit
    end;

      zeichnenaktiv:=true;
      button1.enabled:=false;
      cb1.enabled:=false;

      breite:=paintbox1.width;
      hoehe:=paintbox1.height;
      zrect.left:=0;
      zrect.top:=0;
      zrect.right:=breite;
      zrect.bottom:=hoehe;

      s:=e1.text;
      val(s,faktor,code);
      faktor:=abs(faktor);
      e1.text:=inttostr(faktor);

      QueryPerformanceFrequency(Freq);
      QueryPerformanceCounter(Time1);

      //Starting values
      farbfeld[0,0]:=random(255)+1;
      farbfeld[0,breite-1]:=random(255)+1;
      farbfeld[hoehe-1,0]:=random(255)+1;
      farbfeld[hoehe-1,breite-1]:=random(255)+1;

      //Recursion start
      ber:=4;
      fenster(0,breite-1,0,hoehe-1);

      QueryPerformanceCounter(Time2);

      for j:=0 to bitmap.height-1 do
      begin
        rowrgb:=bitmap.scanline[j];
        for i:=0 to bitmap.width-1 do
        begin
          q:=3*i;
          index:=farbfeld[j,i];
          rowrgb[q]:=pal[index].b;
          rowrgb[q+1]:=pal[index].g;
          rowrgb[q+2]:=pal[index].r;
        end;
      end;
      paintbox1.canvas.copyrect(zrect,bitmap.canvas,zrect);

      QueryPerformanceCounter(Time3);

//        form1.caption:='Plasma '+floattostrf(1000*(Time2-Time1)/freq,ffgeneral,4,3)+' ms / '
//          +inttostr(ber)+'zuviel Berechnungen, '+inttostr(breite*hoehe)+' Pixel';
      form1.caption:='Plasma '+floattostrf(1000*(Time2-Time1)/freq,ffgeneral,4,3)+' ms / '
         +floattostrf(1000*(Time3-Time1)/freq,ffgeneral,4,3)+' ms / '
         +inttostr(breite*hoehe)+' Pixel';
      cb1.enabled:=true;
      button1.enabled:=true;
      zeichnenaktiv:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j:integer;
begin
   if not rotation then
   begin
      //Initialization for color rotation
      cyclestart:=0;
      cb1.enabled:=false;
      timer1.interval:=20;
      button2.caption:='Stop';
      rotation:=true;
    end
    else
    begin
      //Cancel color rotation
      cb1.enabled:=true;
      rotation:=false;
      button2.caption:='Color rotation';

      timer1.interval:=0;
      bitmap.canvas.draw(0,0,bitmap);
      for i:=0 to paintbox1.width-1 do
        for j:=0 to paintbox1.height-1 do begin
          farbfeld[j,i]:=(farbfeld[j,i] + cyclestart) mod 256;
          if farbfeld[j,i]=0 then farbfeld[j,i]:=1;
        end;
    end;
end;

procedure TForm1.FormActivate(Sender: TObject);
//Color depth control
procedure farbtiefe;
var DesktopDC    : HDC;
    BitsPerPixel : integer;
begin
    DesktopDC := GetDC(0);
    BitsPerPixel := GetDeviceCaps(DesktopDC, BITSPIXEL);
    if BitsPerPixel < 24 then showmessage('Color depth too low');
    ReleaseDC(0, DesktopDC);
end;
begin
    randomize;
    farbtiefe;
    cb1.itemindex:=9;

    Bitmap := TBitmap.Create;
    Bitmap.Width := paintbox1.Width;
    Bitmap.Height := paintbox1.Height;
    bitmap.pixelformat:=pf24bit;

    setlength(farbfeld,paintbox1.height,paintbox1.width);
    waagerecht:=paintbox1.width<paintbox1.height;
    zeichnenaktiv:=false;
    rotation:=false;
    paletteladen(sender);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if rotation then
    begin
      button2click(sender);
      button2.caption:='Color rotation';
      exit
    end;
    setlength(farbfeld,0,0);
    Bitmap.free;
end;

//Color rotation
procedure TForm1.Timer1Timer(Sender: TObject);
var i,j,k,index  : integer;
begin
     cyclestart:=cyclestart+1;
     for j:=0 to bitmap.height-1 do
     begin
       rowrgb:=bitmap.scanline[j];
       for i:=0 to bitmap.width-1 do
       begin
         k:=farbfeld[j,i];
         if k<>0 then index:=(cyclestart+k) mod 255 +1
                 else index:=1;
         rowrgb[3*i]:=pal[index].b;
         rowrgb[3*i+1]:=pal[index].g;
         rowrgb[3*i+2]:=pal[index].r;
       end;
     end;
     paintbox1.canvas.draw(0,0,bitmap);
end;

//instant color change when palette changes
procedure TForm1.CB1Change(Sender: TObject);
var i,j,index:integer;
begin
    if rotation then exit;
    paletteladen(sender);

    for j:=0 to bitmap.height-1 do
    begin
      rowrgb:=bitmap.scanline[j];
      for i:=0 to bitmap.width-1 do
      begin
        index:=farbfeld[j,i];
        rowrgb[3*i]:=pal[index].b;
        rowrgb[3*i+1]:=pal[index].g;
        rowrgb[3*i+2]:=pal[index].r;
      end;
    end;
    paintbox1.canvas.draw(0,0,bitmap);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
    if rotation then begin
      cb1.enabled:=true;
      rotation:=false;
      button2.caption:='Color rotation';
      timer1.interval:=0;
    end;  
    bitmap.free;
    Bitmap := TBitmap.Create;
    Bitmap.Width := paintbox1.Width;
    Bitmap.Height := paintbox1.Height;
    bitmap.pixelformat:=pf24bit;
    setlength(farbfeld,0,0);
    setlength(farbfeld,paintbox1.height,paintbox1.width);
    waagerecht:=paintbox1.width<paintbox1.height;
    d1click(sender);
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
    paintbox1.canvas.draw(0,0,bitmap);
end;

end.
