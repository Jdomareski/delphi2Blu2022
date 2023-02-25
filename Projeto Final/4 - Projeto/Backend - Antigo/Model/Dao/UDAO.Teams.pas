unit UDAO.Teams;

interface

uses
  UDAO.Base;

type
  TTeam = class(TDAOBase)
  public
    constructor Create;
  end;

implementation

{ TTeam }

constructor TTeam.Create;
begin
  FTabela := 'teams';
end;

end.
