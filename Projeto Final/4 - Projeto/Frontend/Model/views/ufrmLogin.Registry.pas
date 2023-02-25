unit ufrmLogin.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit;

type
  TfrmLoginRegistry = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectNome: TRectangle;
    rectRegistrar: TRectangle;
    Label2: TLabel;
    rectVoltar: TRectangle;
    Label3: TLabel;
    edtNome: TEdit;
    rectLogin: TRectangle;
    edtLogin: TEdit;
    rectPassword: TRectangle;
    edtPassword: TEdit;
    procedure rectRegistrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rectVoltarClick(Sender: TObject);
  private
    { Private declarations }
    Procedure VoltarTela;
    Procedure Registrar;

  public
    { Public declarations }
  end;

var
  frmLoginRegistry: TfrmLoginRegistry;

implementation

{$R *.fmx}

uses ufrmLogin, UEntity.Users, Uservice.user, Uservice.Intf;

procedure TfrmLoginRegistry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.cafree;
  frmLoginRegistry := nil
end;

procedure TfrmLoginRegistry.rectRegistrarClick(Sender: TObject);
begin
  Self.Registrar;
end;

procedure TfrmLoginRegistry.rectVoltarClick(Sender: TObject);
begin
  Self.VoltarTela;
end;

procedure TfrmLoginRegistry.Registrar;
 var
 xServiceUser : IService;
begin
  if trim(edtNome.Text) = EmptyStr then
    raise exception.Create('Informe o Nome');

  if trim(edtLogin.Text) = EmptyStr then
    raise exception.Create('Informe o Login');

  if trim(edtPassword.Text) = EmptyStr then
    raise exception.Create('Informe a Senha');

   xServiceUser := TServiceUser.create(
   TUser.create(trim(edtNome.Text),
   trim(edtLogin.Text),
   trim(edtPassword.Text)));

  try
     xServiceUser.registrar;
    ShowMessage('Usuário registrado com sucesso. ');
    Self.VoltarTela;
  except
    on e: exception do
      raise exception.Create('Erro  ' + e.Message);

  end;
end;

  procedure TfrmLoginRegistry.VoltarTela;
  begin
    if not Assigned(frmLogin) then
      frmLogin := TfrmLogin.Create(Application);

    frmLogin.Show;
    Application.MainForm := frmLogin;
    Self.Close;
  end;

end.
