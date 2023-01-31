program Project2;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {FrmPrincipal},
  UCommand in 'Pattern\UCommand.pas',
  UReceiver in 'Pattern\UReceiver.pas',
  UInvoker in 'Pattern\UInvoker.pas',
  UConcreteCommand in 'Pattern\UConcreteCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
