program Project2;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UPrazoAnual in 'Pattern\FactoryMethod\UPrazoAnual.pas',
  UTipoPrazo in 'Pattern\FactoryMethod\UTipoPrazo.pas',
  UPrazoMensal in 'Pattern\FactoryMethod\UPrazoMensal.pas',
  UFabricaPrazos in 'Pattern\FactoryMethod\UFabricaPrazos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.