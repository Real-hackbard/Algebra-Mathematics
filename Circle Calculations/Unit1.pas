unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Jpeg, XPMan;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button1: TButton;
    Bevel1: TBevel;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Procedure Berechnungen(r: real);     //Nicht von Delphi geschrieben
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

Procedure Tform1.Berechnungen(r: real);
var
  d,u,a:real;
begin
  d := 2 *r;     // diameter
  u := Pi*d;     // circumference
  a := Pi*r*r;   // area
  Edit1.text := FloatToStr(r); // radius calculation
  Edit2.text := FloatToStr(d); // diameter calculation
  Edit3.text := FloatToStr(u); // circumference calculation
  Edit4.text := FloatToStr(a); // area calculation
end;

// pi calculation
function withPi(s:string): string;
var
  x: real;
  k: integer;
begin
  for k := 1 to 100 do
  Begin
    x := k*(strToFloat(s)/Pi + 1E-8);
     if frac(x) < 1E-5 then
     BEgin
       if k=1 then
        result := floatToStr(round(x))+'*Pi'
       else
        result := floatToStr(round(x))+'/'+IntToStr(k)+'*Pi';
       exit;
     End;
  End;
  result := s;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  r:real;
begin
  r := StrToFloat(Edit1.text); // radius
  berechnungen(r);
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                              'Images\radius.jpg');
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if sender <> Edit1 then Edit1.text := ''; // radius
  if sender <> Edit2 then Edit2.text := ''; // diameter
  if sender <> Edit3 then Edit3.text := ''; // Circumference
  if sender <> Edit4 then Edit4.text := ''; // area
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  r:real;
begin
  r := StrToFloat(Edit2.text)/2; // diameter
  berechnungen(r);
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                    'Images\diameter.jpg');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  r:real;
begin
  r := StrToFloat(Edit3.text)/(2*Pi); // Circumference
  berechnungen(r);
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                    'Images\scope.jpg');
end;


procedure TForm1.Button5Click(Sender: TObject);
var
  r:real;
begin
  r := sqrt(StrToFloat(Edit4.text)/Pi); // area
  berechnungen(r);
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                    'Images\area.jpg');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button2Click(nil);
  Edit3.Text := withPi(Edit3.text); // Circumference
  Edit4.text := withPi(Edit4.text); // area
  Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                    'Images\pi.jpg');
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    Button2.Enabled := false;
  end else begin
    Button2.Enabled := true;
    Button1.Enabled := true;
  end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  if Edit2.Text = '' then
  begin
    Button3.Enabled := false;
  end else begin
    Button3.Enabled := true;
    Button1.Enabled := true;
  end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  if Edit3.Text = '' then
  begin
    Button4.Enabled := false;
  end else begin
    Button4.Enabled := true;
    Button1.Enabled := true;
  end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  if Edit4.Text = '' then
  begin
    Button5.Enabled := false;
  end else begin
    Button5.Enabled := true;
    Button1.Enabled := true;
  end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

end.
