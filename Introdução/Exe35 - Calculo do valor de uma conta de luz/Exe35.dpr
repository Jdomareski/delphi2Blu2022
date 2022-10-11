program Exe35;

uses
  Vcl.Forms,
  Exe35_CalculoEnergia in 'Exe35_CalculoEnergia.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
