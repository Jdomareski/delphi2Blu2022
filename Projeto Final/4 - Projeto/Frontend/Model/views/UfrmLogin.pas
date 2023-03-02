unit UfrmLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.Edit;

type
  TfrmLogin = class(TForm)
    rectPrincipal: TRectangle;
    lytPrincipal: TLayout;
    imgLogo: TImage;
    lytBotoes: TLayout;
    rectRegistrar: TRectangle;
    Label2: TLabel;
    rectVoltar: TRectangle;
    Label3: TLabel;
    rectLogin: TRectangle;
    Label4: TLabel;
    procedure rectLoginClick(Sender: TObject);
    procedure rectRegistrarClick(Sender: TObject);
    procedure rectVoltarClick(Sender: TObject);


  private
    { Private declarations }
    procedure AbrirLoginAuthentication;
    procedure AbrirLoginRegistry;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses ufrmLogin.Authentication, ufrmLogin.Registry;



procedure TfrmLogin.AbrirLoginAuthentication;
begin
if not Assigned(frmLoginAuthentication) then
 frmLoginAuthentication := TfrmLoginAuthentication.create(Application);

 frmLoginAuthentication.Show;
 Application.MainForm := frmLoginAuthentication;
 self.Close;
end;

procedure TfrmLogin.AbrirLoginRegistry;
begin
if not Assigned(frmLOginRegistry) then
frmLoginRegistry := TfrmLoginRegistry.create(Application);

frmLoginRegistry.show;
Application.MainForm := frmLoginRegistry;
self.close;
end;

procedure TfrmLogin.rectLoginClick(Sender: TObject);
begin
self.AbrirLoginAuthentication;
end;

procedure TfrmLogin.rectRegistrarClick(Sender: TObject);
begin
self.AbrirLoginRegistry;
end;

procedure TfrmLogin.rectVoltarClick(Sender: TObject);
begin
Self.close;
end;

end.