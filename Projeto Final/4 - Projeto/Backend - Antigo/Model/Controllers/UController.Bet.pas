unit UController.Bet;

interface

uses
  Horse, GBSwagger.path.Attributes, UController.Base, UEntity.Bets;

type
  [SwagPath('bets', 'Apostas')]
  TControllerBet = class(TControllerBase)
    private
    public
      [SwagGet('Listar Apostas', True)]
      [SwagResponse(200, TBet, 'Infomrações de Apostas', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGet('{id}', 'Procurar uma Aposta')]
      [SwagParamPath('id', 'id da Aposta')]
      [SwagResponse(200, TBet, 'Informações da Aposta')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPost('Adicionar Nova Aposta')]
      [SwagParamBody('Informações da Aposta', TBet)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar uma Aposta')]
      [SwagParamPath('id', 'Id da Aposta')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

  end;

implementation

{ TControllerBet }

uses UDAO.Intf, UDAO.Bets;

class procedure TControllerBet.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TBet.Create;
  inherited;
end;

class procedure TControllerBet.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TBet.Create;
  inherited;
end;

class procedure TControllerBet.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TBet.Create;
  inherited;
end;

class procedure TControllerBet.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TBet.Create;
  inherited;
end;

end.
