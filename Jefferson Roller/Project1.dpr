program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Fjefferson};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TFjefferson, Fjefferson);
  Application.Run;
end.
