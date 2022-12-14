program MercadoLivree;

uses
  System.StartUpCopy,
  FMX.Forms,
  MercadoLivre in 'MercadoLivre.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
