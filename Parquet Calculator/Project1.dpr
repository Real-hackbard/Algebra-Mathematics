program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {parkettform};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(Tparkettform, parkettform);
  Application.Run;
end.
