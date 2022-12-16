program IMC;

uses
  System.StartUpCopy,
  FMX.Forms,
  MercadoLivre in '..\mercado_livre\MercadoLivre.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
