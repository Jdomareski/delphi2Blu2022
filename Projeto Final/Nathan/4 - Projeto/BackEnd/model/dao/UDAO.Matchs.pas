unit UDAO.Matchs;

interface

uses
  UDAO.Base;

type
  TMatch = class(TDAOBase)
  public
    constructor Create;
  end;

implementation

{ TMatch }

constructor TMatch.Create;
begin
  FTabela := 'matchs';
end;

end.
