program Exe_28;

uses
  Vcl.Forms,
  Exe28 in 'Exe28.pas' {Form_Principal},
  frmMes in 'frmMes.pas' {Form_Mes},
  frmReajuste in 'frmReajuste.pas' {frm_reajuste},
  frmClassificar in 'frmClassificar.pas' {Form_classificar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.Run;
end.
