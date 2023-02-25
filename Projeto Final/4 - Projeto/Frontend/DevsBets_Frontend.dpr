program DevsBets_Frontend;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmLogin.Registry in 'Model\views\ufrmLogin.Registry.pas' {frmLoginRegistry},
  UfrmLogin in 'Model\views\UfrmLogin.pas' {frmLogin},
  ufrmLogin.Authentication in 'Model\views\ufrmLogin.Authentication.pas' {frmLoginAuthentication},
  UEntity.Bets in '..\backend\model\entities\UEntity.Bets.pas',
  UEntity.Logins in '..\backend\model\entities\UEntity.Logins.pas',
  UEntity.Matchs in '..\backend\model\entities\UEntity.Matchs.pas',
  UEntity.Teams in '..\backend\model\entities\UEntity.Teams.pas',
  UEntity.Users in '..\backend\model\entities\UEntity.Users.pas',
  Uservice.Intf in 'Model\services\Uservice.Intf.pas',
  uService.base in 'Model\services\uService.base.pas',
  Uservice.user in 'Model\services\Uservice.user.pas',
  UUtils.constants in 'Model\utils\UUtils.constants.pas',
  UService.login in 'Model\services\UService.login.pas',
  UService.User.Authenticated in 'Model\services\UService.User.Authenticated.pas',
  UfrmHome in 'Model\views\UfrmHome.pas' {frmHome},
  UUTils.Enums in 'Model\utils\UUTils.Enums.pas',
  UService.team in 'Model\services\UService.team.pas';

{$R *.res}

begin
  // ao fazer o deploy do cliente, comentar esta linha.
  ReportMemoryLeaksOnShutdown := true;

  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
