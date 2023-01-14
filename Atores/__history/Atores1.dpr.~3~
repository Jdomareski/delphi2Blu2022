program Atores1;

uses
  Vcl.Forms,
  UAtores in 'UAtores.pas' {Form1},
  UExe_1 in 'UExe_1.pas' {frmRelNomeAtor},
  UDMSakila in 'UDMSakila.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmRelNomeAtor, frmRelNomeAtor);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
