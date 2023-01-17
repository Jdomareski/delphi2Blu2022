program Project2;

uses
  Vcl.Forms,
  Uclasse_1 in 'Uclasse_1.pas' {FrmFechamento},
  Uclasse in 'Uclasse.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmFechamento, FrmFechamento);
  Application.Run;
end.
