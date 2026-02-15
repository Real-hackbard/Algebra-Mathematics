program PellsEquation;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UPell in 'UPell.pas',
  UBigIntsV2 in 'UBigIntsV2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
