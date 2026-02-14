unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, XPMan;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    StatusBar1: TStatusBar;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function Addition(sNum1:integer; sNum2:integer):integer;
begin
  asm
    mov eax, sNum2
    add snum1, eax
    mov eax, snum1
    mov @result, eax
  end;
end;

function Subtraction(sNum1:integer; sNum2:integer):integer;
begin
  asm
    mov eax, sNum2
    sub snum1, eax
    mov eax, snum1
    mov @result, eax
  end;
end;

function Multiplication(sNum1:integer; sNum2:integer):integer;
begin
  asm
    mov eax, sNum2
    mov edx,snum1
    mul edx
    mov @result,eax
  end;
end;

function Division(sNum1:integer; sNum2:integer):integer;
begin
  asm
    mov eax, sNum1
    mov edx,0
    mov ebx,snum2
    div ebx
    mov @result,eax
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  sNum1, sNum2 : integer;
begin
  sNum1 := StrToInt(Edit1.Text);
  sNum2 := StrToInt(Edit2.Text);
  Edit3.Text := IntToStr( Addition(sNum1,sNum2));
  StatusBar1.SetFocus;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  If not (Key in [#46, #48..#57, #8]) then Key := #0;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  sNum1, sNum2 : integer;
begin
  sNum1 := StrToInt(Edit1.Text);
  sNum2 := StrToInt(Edit2.Text);
  Edit3.Text := IntToStr( Subtraction(sNum1,sNum2));
  StatusBar1.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  sNum1, sNum2 : integer;
begin
  sNum1 := StrToInt(Edit1.Text);
  sNum2 := StrToInt(Edit2.Text);
  Edit3.Text := IntToStr( Multiplication(sNum1,sNum2));
  StatusBar1.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  sNum1, sNum2 : integer;
begin
  sNum1 := StrToInt(Edit1.Text);
  sNum2 := StrToInt(Edit2.Text);
  Edit3.Text := IntToStr( Division(sNum1,sNum2));
  StatusBar1.SetFocus;
end;
end.
 