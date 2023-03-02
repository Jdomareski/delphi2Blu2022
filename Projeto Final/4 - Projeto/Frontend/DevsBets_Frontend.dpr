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
  UService.team in 'Model\services\UService.team.pas',
  UService.Bet in 'Model\services\UService.Bet.pas',
  UService.Match in 'Model\services\UService.Match.pas',
  UUtils.Functions in 'Model\utils\UUtils.Functions.pas',
  UfraTeam in 'Model\views\UfraTeam.pas' {fraTeam: TFrame},
  UfraTeam.Registry in 'Model\views\UfraTeam.Registry.pas' {fraTeamRegistry: TFrame},
  UfraMatch in 'Model\views\UfraMatch.pas' {fraMatch: TFrame},
  UfraMatch.Registry in 'Model\views\UfraMatch.Registry.pas' {fraMatchRegistry: TFrame},
  UfraBet in 'Model\views\UfraBet.pas' {fraBet: TFrame},
  UfraBet.Registry in 'Model\views\UfraBet.Registry.pas' {fraBetRegistry: TFrame};

{$R *.res}

begin
  // ao fazer o deploy do cliente, comentar esta linha.
  ReportMemoryLeaksOnShutdown := true;

  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
