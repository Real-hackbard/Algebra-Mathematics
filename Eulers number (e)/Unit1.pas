unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  n,m,i,j : integer;
  st:real;
  ueber,kidx:integer;
  c:array of integer;
  k:string;
  Time1, Time2, Time3, Freq: Int64;

function DivModI32(Dividend: Integer; Divisor: Integer; var Remainder: Integer): Integer; register;
 asm
 push ebx
 mov ebx, edx
 cdq
 idiv ebx
 mov [ecx], edx
 pop ebx
 end;
const
  digit : array[0..9] of char = ('0','1','2','3','4','5','6','7','8','9');

begin
    Screen.Cursor := crHourGlass;
    n:=strtoint(edit1.text);
    memo1.clear;
    application.processmessages;

    QueryPerformanceFrequency(Freq);
    QueryPerformanceCounter(Time1);
    st:=ln(2)/ln(10);
    i:=2;
    while st<n do
    begin
      inc(i);
      st:=st+ln(i)/ln(10);
    end;
    m:=i;

    setlength(c,m+1);
    for i:=1 to m do c[i]:=1;

    setlength(k,n+4);
    k[1]:='2';
    k[2]:=',';
    kidx:=3;

    for j:=1 to n do
    begin
      ueber:=0;
      for i:=m downto 1 do
         ueber:=DivModI32(10*c[i]+ueber,i+1,c[i]);
      k[kidx] := digit[ueber];
      inc(kidx);
    end;
    QueryPerformanceCounter(Time2);

    memo1.text:=k;
    QueryPerformanceCounter(Time3);
    label2.caption:='Time: '+floattostrf(1000*(Time2-Time1)/freq,ffgeneral,4,3)+' ms / '
                    +floattostrf(1000*(Time3-Time1)/freq,ffgeneral,4,3)+' ms';

    setlength(c,0);
    Screen.Cursor := crDefault;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if NOT (Key in [#08, '0'..'9']) then 
    Key := #0;
end;

end.
