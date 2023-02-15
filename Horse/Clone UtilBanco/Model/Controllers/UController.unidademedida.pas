unit UController.unidademedida;


interface
uses
  horse, ODAO.unidademedida;

type
TControllerunidademedida = class
  Private
  Public
  class procedure Getunidademedidas (Req: THorseRequest; Res: THorseresponse; next: TProc);
  class procedure Getunidademedida (Req: THorseRequest; Res: THorseresponse; next: TProc);
  class procedure Deleteunidademedida (Req: THorseRequest; Res: THorseresponse; next: TProc);
  class procedure Postunidademedida (Req: THorseRequest; Res: THorseresponse; next: TProc);
end;
implementation
uses
UDAO.intf, system.JSON, system.SysUtils;

{ TControllerProdutos }

class procedure TControllerunidademedida.Deleteunidademedida(Req: THorseRequest;
  Res: THorseresponse; next: TProc);
var
  xDAO: IDAO;
  xId: Integer;
begin
  if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;

  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDAO := TDAOunidademedida.Create;

  if xDAO.DeletarRegistro(xId) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerunidademedida.Getunidademedida(Req: THorseRequest;
  Res: THorseresponse; next: TProc);
var
  xDao: IDAO;
  xId: Integer;
begin
    if (Req.Params.Count <> 1) or (not(Req.Params.ContainsKey('id'))) then
  begin
    Res.Status(THTTPStatus.BadRequest);
    Exit;
  end;
  xId := StrToIntDef(Req.Params.Items['id'], 0);

  xDao := TDAOunidademedida.Create;

  Res.Send<TJSONObject>(xDAO.ProcurarPorId(xId));
end;




class procedure TControllerunidademedida.Getunidademedidas(Req: THorseRequest;
  Res: THorseresponse; next: TProc);
  var
  xDAO : IDAO;
begin
  xDAO := TDAOunidademedida.Create;
  res.Send<TJSONARRAY>(xDAO.ObterRegistros);

end;

class procedure TControllerunidademedida.Postunidademedida(Req: THorseRequest;
  Res: THorseresponse; next: TProc);
  var
  xDAO : IDAO;

begin
     xDAO := TDAOunidademedida.Create;
     if xDAO.adicionarRegistro(Req.Body<TJSONObject>) then
     Res.Status(THTTPStatus.Created)

     else
     Res.Status(THTTPStatus.InternalServerError)

end;


end.
