unit UController.Match;

interface

uses
  Horse, GBSwagger.path.Attributes, UController.Base, UEntity.Matchs;

type
  [SwagPath('matchs', 'Partidas')]
  TControllerMatch = class(TControllerBase)
    private
    public
      [SwagGet('Listar Partidas', True)]
      [SwagResponse(200, TMatch, 'Infomrações de Partidas', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGet('{id}', 'Procurar uma Partida')]
      [SwagParamPath('id', 'id da Partidas')]
      [SwagResponse(200, TMatch, 'Informações da Partidas')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPost('Adicionar Nova Partida')]
      [SwagParamBody('Informações da Partida', TMatch)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar uma Partida')]
      [SwagParamPath('id', 'Id da Partida')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;
  end;

implementation

{ TControllerMatch }

uses UDAO.Matchs, UDAO.Intf;

class procedure TControllerMatch.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TMatch.Create;
  inherited;
end;

class procedure TControllerMatch.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TMatch.Create;
  inherited;
end;

class procedure TControllerMatch.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TMatch.Create;
  inherited;
end;

class procedure TControllerMatch.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TMatch.Create;
  inherited;
end;

end.
