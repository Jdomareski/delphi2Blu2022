program Project2;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UInterfaces in 'Pattern\Factorys\UInterfaces.pas',
  UApple in 'Pattern\Factorys\UApple.pas',
  UDell in 'Pattern\Factorys\UDell.pas',
  UiMac in 'Pattern\Entidades\UiMac.pas',
  UInspiron in 'Pattern\Entidades\UInspiron.pas',
  UMacBook in 'Pattern\Entidades\UMacBook.pas',
  UVostro in 'Pattern\Entidades\UVostro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
