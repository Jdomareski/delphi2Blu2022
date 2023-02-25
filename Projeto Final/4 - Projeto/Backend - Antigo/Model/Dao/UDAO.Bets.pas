unit UDAO.Bets;

interface

uses
  UDAO.Base;

type
  TBet = class(TDAOBase)
  public
    constructor Create;
  end;


implementation

{ TBet }

constructor TBet.Create;
begin
  FTabela := 'bets';
end;

end.
