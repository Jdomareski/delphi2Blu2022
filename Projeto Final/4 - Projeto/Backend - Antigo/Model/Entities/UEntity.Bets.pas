unit UEntity.Bets;

interface

uses
  UEntity.Matchs, UEntity.Users,
  GBSWagger.Model.Attributes;

Type

  TBet = Class
  Private
    FId: Integer;
    FUser: TUser;
    FMatch: TMatch;
    FResultTeamA, FResultTeamB: Byte;
    FStatus: Byte;
    function GetId: Integer;
    function GetMatch: TMatch;
    function GetResultTeamA: Byte;
    function GetResultTeamB: Byte;
    function GetStatus: Byte;
    function GetUser: TUser;
    procedure SetId(const Value: Integer);
    procedure SetMatch(const Value: TMatch);
    procedure SetResultTeamA(const Value: Byte);
    procedure SetResultTeamB(const Value: Byte);
    procedure SetStatus(const Value: Byte);
    procedure SetUser(const Value: TUser);

  Public

    [SwagProp('Palpite Id', true)]
    Property Id: Integer read GetId write SetId;
    [SwagProp('Palpite Usuário', true)]
    Property User: TUser read GetUser write SetUser;
    [SwagProp('Palpite Partida', true)]
    Property Match: TMatch read GetMatch write SetMatch;
    [SwagProp('Palpite Resultado Time A', true)]
    Property ResultTeamA: Byte read GetResultTeamA write SetResultTeamA;
    [SwagProp('Palpite Resultado Time B', true)]
    Property ResultTeamB: Byte read GetResultTeamB write SetResultTeamB;
    [SwagProp('Palpite Status', true)]
    Property Status: Byte read GetStatus write SetStatus;

  End;

implementation

{ TBet }

function TBet.GetId: Integer;
begin
  Result := FId

end;

function TBet.GetMatch: TMatch;
begin
  Result := FMatch
end;

function TBet.GetResultTeamA: Byte;
begin
  Result := FResultTeamA

end;

function TBet.GetResultTeamB: Byte;
begin
  Result := FResultTeamB

end;

function TBet.GetStatus: Byte;
begin
  Result := FStatus

end;

function TBet.GetUser: TUser;
begin
  Result := FUser
end;

procedure TBet.SetId(const Value: Integer);
begin
  FId := Value

end;

procedure TBet.SetMatch(const Value: TMatch);
begin
  FMatch := Value

end;

procedure TBet.SetResultTeamA(const Value: Byte);
begin
  FResultTeamA := Value

end;

procedure TBet.SetResultTeamB(const Value: Byte);
begin
  FResultTeamB := Value

end;

procedure TBet.SetStatus(const Value: Byte);
begin
  FStatus := Value

end;

procedure TBet.SetUser(const Value: TUser);
begin
  FUser := Value

end;

end.
