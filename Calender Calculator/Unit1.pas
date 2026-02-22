unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
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
  Tag,Monat,Jahr,W,C,Y: Integer;
(*Zeller's formula

  Method for determining the day of the week according to Christian Zeller (1882):
  T … day, M … month, Y … year, W … day of the week,
  Sa = 0; So = 1, …, Fr = 6,

  C … past centuries, Y … year number in the current century, [ ] … integer division
  In ancient Roman times, January and February were counted as the 13th and 14th months of the previous year.

  Gregorian calendar
	W = (T+[13·(M+1)/5] +Y +[Y/4] +[C/4] -2C) mod 7

  Julian calendar
	W = (T + [13·(M+1)/5] + Y + [Y/4] + 5 - C) mod 7
*)
begin
  tag:=strtoint(edit1.text);
  monat:=strtoint(edit2.text);
  jahr:=strtoint(edit3.text);
  if monat<3 then begin
    monat:=monat+12;
    jahr:=jahr-1;
  end;
  y:=jahr mod 100;
  c:=jahr div 100;

  case ComboBox1.ItemIndex of
  0 : W :=(Tag+ (13*(Monat+1)) div 5 + Y + y div 4 + c div 4 -2*C) mod 7;
  1 : W := (Tag + (13*(Monat+1) div 5) + Y + (Y div 4) + 5 - C) mod 7;
  end;


  while w<0 do w:=w+7;

  if w=0 then edit4.text:='Saturday';
  if w=1 then edit4.text:='Sunday';
  if w=2 then edit4.text:='Monday';
  if w=3 then edit4.text:='Tuesday';
  if w=4 then edit4.text:='Wednesday';
  if w=5 then edit4.text:='Thursday';
  if w=6 then edit4.text:='Friday';
end;

end.
