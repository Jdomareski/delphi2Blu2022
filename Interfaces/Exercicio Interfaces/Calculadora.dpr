program Calculadora;

uses
  Vcl.Forms,
  UPrincipal in 'Forms\UPrincipal.pas' {Form1},
  UcalculadorService in 'Units\UcalculadorService.pas',
  UCalculadorServiceDefault in 'Units\UCalculadorServiceDefault.pas',
  UServicos in 'Units\UServicos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
