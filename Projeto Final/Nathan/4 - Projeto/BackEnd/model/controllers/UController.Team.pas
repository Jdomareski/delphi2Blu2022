unit UController.Team;

interface

uses
  Horse, GBSwagger.path.Attributes, UController.Base, UEntity.Teams;

type
  [SwagPath('teams', 'Times')]
  TControllerTeam = class(TControllerBase)
    private
    public
      [SwagGet('Listar Times', True)]
      [SwagResponse(200, TTeam, 'Infomrações de Times', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGet('{id}', 'Procurar um Time')]
      [SwagParamPath('id', 'id do Time')]
      [SwagResponse(200, TTeam, 'Informações de Time')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPost('Adicionar Novo Time')]
      [SwagParamBody('Informações de Time', TTeam)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Deletar um Time')]
      [SwagParamPath('id', 'Id do Time')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;
  end;
implementation

{ TControllerTeam }

uses UDAO.Teams, UDAO.Intf;

class procedure TControllerTeam.Delete(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TTeam.Create;
  inherited;
end;

class procedure TControllerTeam.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TTeam.Create;
  inherited;
end;

class procedure TControllerTeam.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TTeam.Create;
  inherited;
end;

class procedure TControllerTeam.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TTeam.Create;
  inherited;
end;

end.
