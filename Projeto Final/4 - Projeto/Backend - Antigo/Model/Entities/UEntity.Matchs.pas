unit UEntity.Matchs;

interface

uses

  System.JSON, UEntity.Teams,
  GBSWagger.Model.Attributes;

Type
  TMatch = class
  Private
    FId: Integer;
    FDate: TDate;
    FHour: TTime;
    FTeamA, FTeamB: TTeam;
    FResultTeamA, FResultTeamB, FStatus: Byte;
    function GetDate: TDate;
    function GetHour: TTime;
    function GetId: Integer;

    function GetResultTeamA: Byte;
    function GetResultTeamB: Byte;
    function GetTeamA: TTeam;
    function GetTeamB: TTeam;
    procedure SetDate(const Value: TDate);
    procedure SetHour(const Value: TTime);
    procedure SetId(const Value: Integer);

    procedure SetResultTeamA(const Value: Byte);
    procedure SetResultTeamB(const Value: Byte);
    procedure SetTeamB(const Value: TTeam);
    function GetStatus: Byte;
    procedure SetStatus(const Value: Byte);

  Public
    // [SwagProp('Partida Id', true)]
    Property ID: Integer Read GetId Write SetId;
    // [SwagProp('Partida Data', true)]
    Property Date: TDate Read GetDate Write SetDate;
    // [SwagProp('Partida Hora', true)]
    Property Hour: TTime Read GetHour Write SetHour;
    // [SwagProp('Autentica��o Id', true)]
    Property TeamA: TTeam Read GetTeamA Write SetTeamB;
    // [SwagProp('Autentica��o Id', true)]
    Property TeamB: TTeam Read GetTeamB Write SetTeamB;
    // [SwagProp('Autentica��o Id', true)]
    Property ResultTeamA: Byte Read GetResultTeamA Write SetResultTeamA;
    // [SwagProp('Autentica��o Id', true)]
    Property ResultTeamB: Byte Read GetResultTeamB Write SetResultTeamB;
    // [SwagProp('Autentica��o Id', true)]
    Property Status: Byte Read GetStatus Write SetStatus;

  end;

implementation

{ TMatch }
function TMatch.GetDate: TDate;
begin
  Result := FDate
end;

function TMatch.GetHour: TTime;
begin
  Result := FHour
end;

function TMatch.GetId: Integer;
begin
  Result := FId
end;

function TMatch.GetStatus: Byte;
begin
  Result := FStatus
end;

function TMatch.GetResultTeamA: Byte;
begin
  Result := FResultTeamA
end;

function TMatch.GetResultTeamB: Byte;
begin
  Result := FResultTeamB
end;

function TMatch.GetTeamA: TTeam;
begin
  Result := FTeamA
end;

function TMatch.GetTeamB: TTeam;
begin
  Result := FTeamB
end;

procedure TMatch.SetDate(const Value: TDate);
begin
  FDate := Value
end;

procedure TMatch.SetHour(const Value: TTime);
begin
  FHour := Value
end;

procedure TMatch.SetId(const Value: Integer);
begin
  FId := Value
end;

procedure TMatch.SetStatus(const Value: Byte);
begin
  FStatus := Value
end;

procedure TMatch.SetResultTeamA(const Value: Byte);
begin
  FResultTeamA := Status
end;

procedure TMatch.SetResultTeamB(const Value: Byte);
begin
  FResultTeamB := Status
end;

procedure TMatch.SetTeamB(const Value: TTeam);
begin
  FTeamB := Value
end;

end.