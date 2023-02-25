unit UController.Base;

interface

uses
  Horse, UDAO.Intf;

type
  TControllerBase = class
    protected
      class var FDAO: IDAO;
    public
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); Virtual;
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); Virtual;
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); Virtual;
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); Virtual;
  end;

implementation

uses
  System.JSON, System.SysUtils;

{ TControllerBase }

class procedure TControllerBase.Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  if FDAO.DeletarRegistro(xId) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerBase.Get(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  Res.Send<TJSONObject>(FDAO.ProcurarPorId(xid));
end;

class procedure TControllerBase.Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  Res.Send<TJSONArray>(FDAO.ObterRegistros);
end;

class procedure TControllerBase.Post(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  if FDAO.AdicionarRegistro(Req.Body<TJSONObject>) then
    Res.Status(THTTPSTATUS.Created)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

end.
