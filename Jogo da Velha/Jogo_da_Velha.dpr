program Jogo_da_Velha;

uses
  System.StartUpCopy,
  FMX.Forms,
  JogodaVelha in 'JogodaVelha.pas' {FrmPrincipal},
  UfrmPrincipal in 'UfrmPrincipal.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
