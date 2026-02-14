unit Unit1;

interface

{$J+}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PB1: TPaintBox;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    UpDown2: TUpDown;
    archimedisch: TCheckBox;
    procedure PB1Paint(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.PB1Paint(Sender: TObject);
const gg:integer=2;
      maxlaenge:integer=360;
var bitmap:tbitmap;
    b,h,i,z,w,maxzahl:integer;
    prim:array of boolean;
procedure ulam;
var gga,dd,w,x,y,z,i:integer;
    wi,gesamtlaenge:real;
procedure zahlzeichnen;
begin
    inc(z);
    if prim[z] then bitmap.canvas.ellipse(b+2*x-gg,h-2*y-gg,b+2*x+gg+1,h-2*y+gg+1);
end;
begin
    bitmap.canvas.pen.color:=clsilver;
    bitmap.canvas.brush.color:=clblue;

    // Archimedean spiral
    if archimedisch.checked then
    begin
      // Determine the length of the Archimedean spiral
      z:=2;
      wi:=0.3;
      repeat
        wi:=wi+0.3/sqrt(wi);
        inc(z);
      until z>maxzahl;
      gesamtlaenge:=wi;

      // Draw a spiral
      wi:=0;
      bitmap.canvas.moveto(b,h);
      bitmap.canvas.pen.style:=pssolid;
      repeat
        x:=round(b+gg/2*wi*cos(wi));
        y:=round(h-gg/2*wi*sin(wi));
        bitmap.canvas.lineto(x,y);
        wi:=wi+0.1;
      until wi>gesamtlaenge;

      // Enter prime numbers
      bitmap.canvas.pen.style:=psclear;
      gga:=gg;
      // Set maximum circle size
      if gga>8 then gga:=8;
      z:=2;
      wi:=0.3;
      repeat
        x:=round(b+gg/2*wi*cos(wi));
        y:=round(h-gg/2*wi*sin(wi));
        if prim[z] then bitmap.canvas.ellipse(x-gga,y-gga,x+gga+1,y+gga+1);
        inc(z);
        // Ensure that the arc length between two prime numbers remains constant.
        wi:=wi+0.3/sqrt(wi);
      until z>maxzahl;
      exit; // Abort at Archimedean spiral
    end;

    // Construction of the Ulam spiral
    x:=0;
    y:=0;
    bitmap.canvas.moveto(b+2*x,h-2*y);
    dd:=gg;
    bitmap.canvas.pen.style:=pssolid;
    repeat
      // up
      inc(y,dd);
      bitmap.canvas.lineto(b+2*x,h-2*y);
      // right
      inc(x,dd);
      bitmap.canvas.lineto(b+2*x,h-2*y);
      inc(dd,gg);
      // down
      dec(y,dd);
      bitmap.canvas.lineto(b+2*x,h-2*y);
      // left
      dec(x,dd);
      bitmap.canvas.lineto(b+2*x,h-2*y);
      inc(dd,gg);
    until dd>maxlaenge; // maximum length of a spiral path

    // Entering the prime numbers
    bitmap.canvas.pen.style:=psclear;
    x:=0;
    y:=0;
    z:=0;
    // Starting with number 1
    zahlzeichnen;
    w:=1;
    // after every 2 steps up, right, down, left
    // The spiral path is extended by approx. length and 1 number.
    repeat
      // w test numbers upwards
      i:=1;
      repeat inc(y,gg); zahlzeichnen; inc(i); until i>w;
      // w test numbers to the right
      i:=1;
      repeat inc(x,gg); zahlzeichnen; inc(i); until i>w;
      inc(w);
      // w test numbers downwards
      i:=1;
      repeat dec(y,gg); zahlzeichnen; inc(i); until i>w;
      // w test numbers to the left
      i:=1;
      repeat dec(x,gg); zahlzeichnen; inc(i); until i>w;
      inc(w);
    until w>maxlaenge div gg;
end;
begin
    gg:=strtoint(edit1.text);
    maxlaenge:=strtoint(edit2.text);
    maxzahl:=round((maxlaenge/gg+2)*((maxlaenge/gg+2)+1));

    // Prime number sieve
    setlength(prim,maxzahl+1);
    for i:=0 to maxzahl do prim[i]:=true;
    // Filter out even numbers >2
    for i:=2 to maxzahl div 2 do prim[i+i]:=false;
    prim[1]:=false;
    z:=3;
    repeat
      w:=z+z;
      repeat
        prim[w]:=false;
        w:=w+z;
      until w>maxzahl;
      inc(z,2);
      while prim[z]=false do inc(z,2);
    until z>sqrt(maxzahl);

    bitmap:=tbitmap.create;
    bitmap.width:=PB1.width;
    bitmap.height:=PB1.height;
    b:=bitmap.width div 2;
    h:=bitmap.height div 2;
    // Line spacing
    // spiral
    ulam;

    PB1.canvas.draw(0,0,bitmap);
    bitmap.free;
    setlength(prim,0);
end;

end.
