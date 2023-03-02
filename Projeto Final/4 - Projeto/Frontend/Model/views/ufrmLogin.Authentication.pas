unit ufrmLogin.Authentication;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit;

type
  TfrmLoginAuthentication = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectRegistrar: TRectangle;
    Label2: TLabel;
    rectVoltar: TRectangle;
    Label3: TLabel;
    rectLogin: TRectangle;
    edtLogin: TEdit;
    rectPassword: TRectangle;
    edtPassword: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rectRegistrarClick(Sender: TObject);
    procedure rectVoltarClick(Sender: TObject);
  private
    procedure logar;
    Procedure AbrirHome;
    Procedure VoltarTela;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginAuthentication: TfrmLoginAuthentication;

implementation

{$R *.fmx}

uses
UfrmLogin, UEntity.Logins,


//ufrmHome,

uService.Intf, uService.Login, UfrmHome;
{ TfrmLoginAuthentication }

procedure TfrmLoginAuthentication.AbrirHome;
begin

if not assigned (frmHome) then
  frmHome := tfrmHome.Create(Application);

  frmHome.Show;
  Application.MainForm := frmHome;
  self.close;


end;

procedure TfrmLoginAuthentication.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := TCloseAction.caFree;
frmLoginAuthentication :=nil;
end;

procedure TfrmLoginAuthentication.logar;
var
xserviceLogin: IService;
begin
  if trim(edtLogin.Text) = emptyStr then
    raise Exception.Create('Informe o Login');

  if trim(edtPassword.Text) = emptyStr then
    raise Exception.Create('Informe a Senha');

  xserviceLogin := TServiceLogin.Create(TLogin.Create(trim(edtLogin.Text),
    trim(edtPassword.Text)));

  try
    TServiceLogin(xserviceLogin).Autenticar;
    Self.AbrirHome;
  except
    on e: exception do
    raise Exception.Create('Login:  ' + e.Message);
  end;
end;


  procedure TfrmLoginAuthentication.rectRegistrarClick(Sender: TObject);
begin
  self.logar;
end;

procedure TfrmLoginAuthentication.rectVoltarClick(Sender: TObject);
begin
self.VoltarTela;
end;

procedure TfrmLoginAuthentication.VoltarTela;
  begin
   if not assigned (frmLogin) then
  frmLogin := TfrmLogin.Create(Application);

  frmLogin.Show;
  Application.MainForm := frmLogin;
  self.close;

  end;

end.