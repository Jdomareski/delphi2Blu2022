program Atores1;

uses
  Vcl.Forms,
  UAtores in 'UAtores.pas' {Form1},
  UExe_1 in 'UExe_1.pas' {frmRelNomeAtor},
  UDMSakila in 'UDMSakila.pas' {DataModule1: TDataModule},
  UExe_2 in 'UExe_2.pas' {frmRelCidades},
  UExe_3 in 'UExe_3.pas' {frmRelFilmes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmRelFilmes, frmRelFilmes);
  Application.Run;
end.
