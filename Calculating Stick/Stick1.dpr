program Stick1;

uses
  Forms,
  CalculatingStick1 in 'CalculatingStick1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
