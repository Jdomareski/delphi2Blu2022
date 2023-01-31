program Project2;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UWebServiceCorreios in 'Pattern\Adapter\UWebServiceCorreios.pas',
  UInterfaceViaCEP in 'Pattern\Adapter\UInterfaceViaCEP.pas',
  UTarget in 'Pattern\Adapter\UTarget.pas',
  UWebServiceVIACEP in 'Pattern\Adapter\UWebServiceVIACEP.pas',
  UAdaptee in 'Pattern\Adapter\UAdaptee.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
