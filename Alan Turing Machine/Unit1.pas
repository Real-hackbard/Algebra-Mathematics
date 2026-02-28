unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ComCtrls, XPMan;

type
  turaction = record
    zeichenneu: char;
    zustandneu: byte;
    dir: char;
  end;
  TForm1 = class(TForm)
    Tafel: TStringGrid;
    BtnStart: TButton;
    BtnStop: TButton;
    TuringTimer: TTimer;
    tbDelay: TTrackBar;
    lblDelay: TLabel;
    lblCounter: TLabel;
    lblRenderUpdate: TLabel;
    edtRender: TEdit;
    lblOnes: TLabel;
    BtnReset: TButton;
    Label1: TLabel;
    StartText: TEdit;
    Label2: TLabel;
    Band: TEdit;
    Label3: TLabel;
    function LookupAction(zeichen,zustand: byte): turaction;
    procedure RenderState(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StartTimer(Sender: TObject);
    procedure StopTimer(Sender: TObject);
    procedure TuringUpdate(Sender: TObject);
    procedure tbDelayChange(Sender: TObject);
    procedure ChangeSettings(Sender: TObject);
    procedure Reset(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  bandinschrift: string;
  zustand: byte;
  pos,schritte,renderupdate,rendercount: integer;

implementation

{$R *.dfm}

function TForm1.LookupAction(zeichen,zustand: byte):turaction;
var inhalt: string;
begin
  inhalt := Tafel.Cells[zeichen+1,zustand+1];
  result.zeichenneu := inhalt[1];
  result.zustandneu := StrToInt(inhalt[3]);
  result.dir := inhalt[5];
end;

procedure TForm1.RenderState(Sender: TObject);
var copy: string;
    i,count: integer;
begin
  copy := '';
  for i := pos-36 to pos-1 do
    copy := copy + bandinschrift[i];
  copy := copy + ' [ ' + bandinschrift[pos] + ' ] ';
  for i := pos+1 to pos+50 do
    copy := copy + bandinschrift[i];
  Band.Text := copy;
  lblCounter.Caption := 'Steps: ' + IntToStr(schritte);
  count := 0;
  for i := 0 to 100000 do
    if bandinschrift[i] = '1'
      then inc(count);
  lblOnes.Caption := 'Number ''1'': ' + IntToStr(count);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Tafel.Cells[0,0] := 'Sign:'; Tafel.Cells[1,0] := '0'; Tafel.Cells[2,0] := '1';
  Tafel.Cells[0,1] := 'Condition Z0'; Tafel.Cells[1,1] := '0,1,S'; Tafel.Cells[2,1] := '1,0,S';
  Tafel.Cells[0,2] := 'Condition Z1'; Tafel.Cells[1,2] := '1,2,R'; Tafel.Cells[2,2] := '1,3,L';
  Tafel.Cells[0,3] := 'Condition Z2'; Tafel.Cells[1,3] := '0,1,L'; Tafel.Cells[2,3] := '0,4,L';
  Tafel.Cells[0,4] := 'Condition Z3'; Tafel.Cells[1,4] := '1,1,L'; Tafel.Cells[2,4] := '1,0,L';
  Tafel.Cells[0,5] := 'Condition Z4'; Tafel.Cells[1,5] := '1,2,L'; Tafel.Cells[2,5] := '1,5,R';
  Tafel.Cells[0,6] := 'Condition Z5'; Tafel.Cells[1,6] := '0,4,R'; Tafel.Cells[2,6] := '0,2,R';

  Reset(sender);
  renderupdate := 1;
  RenderState(sender);

end;

procedure TForm1.StartTimer(Sender: TObject);
begin
  BtnStart.enabled:=false;
  BtnReset.Enabled:=false;
  TuringTimer.Enabled := True;
end;

procedure TForm1.StopTimer(Sender: TObject);
begin
  BtnStart.enabled:=true;
  BtnReset.Enabled:=true;
  TuringTimer.Enabled := False;
end;

procedure TForm1.TuringUpdate(Sender: TObject);
var zeichen: byte;
    aktion: turaction;
    rendercount : integer;
begin
  for rendercount := 1 to renderupdate do begin
    zeichen := StrToInt(bandinschrift[pos]);
    aktion := LookupAction(zeichen,zustand);
    bandinschrift[pos] := aktion.zeichenneu;
    zustand := aktion.zustandneu;
    case aktion.dir of
      'L': dec(pos);
      'R': inc(pos);
    end;
    inc(schritte);
    if zustand = 0 then begin
      StopTimer(sender);
      break;
    end;
  end;
  RenderState(sender);
end;

procedure TForm1.tbDelayChange(Sender: TObject);
begin
  case tbDelay.Position of
    1: TuringTimer.Interval := 1;
    2: TuringTimer.Interval := 50;
    3: TuringTimer.Interval := 100;
    4: TuringTimer.Interval := 500;
    5: TuringTimer.Interval := 1000;
  end;
end;

procedure TForm1.ChangeSettings(Sender: TObject);
begin
  TryStrToInt(edtRender.Text, renderupdate);
end;

procedure TForm1.Reset(Sender: TObject);
var i: integer;
begin
  zustand := 0;
  schritte := 0;
  pos := 50000;
  rendercount := 0;
  bandinschrift := '';
  for i := 1 to 100000 do
    bandinschrift := bandinschrift + '0';
  RenderState(sender);
end;

end.
