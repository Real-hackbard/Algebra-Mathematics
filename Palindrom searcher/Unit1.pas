unit Unit1;

interface

{$J+}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  abbruch:boolean;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
const
  zmax:integer=999;
var
  k:string;
  i,anz,laenge:integer;
  gefunden:boolean;
  z,e:array of byte;
  Time1, Time2, Freq: Int64;
begin
    if abbruch=false then begin abbruch:=true; exit end;
    button1.caption:='Cancel';
    label3.caption:='';
    abbruch:=false;
    memo1.clear;
    application.processmessages;

    zmax:=strtoint(edit2.text);
    if zmax<100 then zmax:=100;

    setlength(z,zmax+2);
    setlength(e,zmax+2);
    for i:=0 to zmax do z[i]:=0;
    k:=edit1.text;
    if k='' then k:='196';
    laenge:=length(k);
    for i:=laenge downto 1 do z[laenge-i]:=ord(k[i])-48;
    anz:=0;

    QueryPerformanceFrequency(Freq);
    QueryPerformanceCounter(Time1);

    repeat
      inc(anz);
      if checkbox1.checked then begin
        k:='';
        for i:=0 to laenge-1 do k:=chr(z[i]+48)+k;
        memo1.lines.add(inttostr(anz)+#9+k+' ('+inttostr(laenge)+')');
      end;
      for i:=0 to laenge-1 do e[i]:=z[i]+z[laenge-1-i];
      for i:=0 to laenge-1 do begin
        if e[i]>9 then begin
          inc(e[i+1]);
          e[i]:=e[i]-10;
        end;
      end;
      if e[laenge]>0 then inc(laenge);

      gefunden:=true;
      i:=0;
      repeat
        if e[i]<>e[laenge-1-i] then gefunden:=false;
        inc(i);
      until (not gefunden) or (i>laenge div 2);

      if gefunden then
      begin
        memo1.lines.add('Palindrome found in step '+inttostr(anz));
        k:='';
        for i:=0 to laenge-1 do k:=chr(e[i]+48)+k;
        memo1.lines.add(k);
      end
      else
        for i:=0 to laenge-1 do z[i]:=e[i];

      if anz mod 1000 = 0 then begin
        label4.caption:=inttostr(laenge);
        QueryPerformanceCounter(Time2);
        label6.caption:=inttostr(anz)+' cycles | '+floattostrf((Time2-Time1)/freq,ffgeneral,10,6)+' s';
        application.processmessages;
      end;
    until abbruch or gefunden or (laenge>zmax);

    label4.caption:=inttostr(laenge);
    label6.caption:=inttostr(anz)+' cycles | '+floattostrf((Time2-Time1)/freq,ffgeneral,10,6)+' s';
    if abbruch or (laenge>zmax) then
    begin
      memo1.lines.add('Follow-up link in step '+inttostr(anz));
      memo1.lines.add('Length '+inttostr(laenge));
      if checkbox1.checked then begin
        k:='';
        for i:=0 to laenge-1 do k:=chr(z[i]+48)+k;
        memo1.lines.add(k);
      end;
    end;
    button1.caption:='Calculate';
    abbruch:=true;
    setlength(z,0);
    setlength(e,0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    abbruch:=true;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (Key in [#08, '0'..'9']) then
    Key := #0; 
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (Key in [#08, '0'..'9']) then 
    Key := #0; 
end;

end.
