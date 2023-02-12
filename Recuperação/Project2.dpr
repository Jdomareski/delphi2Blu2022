program Project2;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {FrmPrincipal},
  UFuncionario in 'Model\Entities\UFuncionario.pas',
  UIFuncServices in 'Model\Services\UIFuncServices.pas',
  UOperacoes in 'Model\Services\UOperacoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
