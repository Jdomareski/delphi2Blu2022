program DevsBets_BackEnd;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils,
  UEntity.Users in 'Model\Entities\UEntity.Users.pas',
  UEntity.Logins in 'Model\Entities\UEntity.Logins.pas',
  UEntity.Teams in 'Model\Entities\UEntity.Teams.pas',
  UEntity.Matchs in 'Model\Entities\UEntity.Matchs.pas',
  UEntity.Bets in 'Model\Entities\UEntity.Bets.pas',
  UDAO.Intf in 'Model\Dao\UDAO.Intf.pas',
  UDAO.Base in 'Model\Dao\UDAO.Base.pas',
  UUtil.Banco in 'Model\Utils\UUtil.Banco.pas',
  UDAO.Users in 'Model\Dao\UDAO.Users.pas';

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.