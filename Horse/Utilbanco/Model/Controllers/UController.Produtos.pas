unit UController.Produtos;

interface

uses
  horse, ODAO.Produtos;

type
TControllerProdutos = class
  Private
  Public
  class procedure GetProdutos (Req: THorseRequest; Res: THorseresponse; next: TProc);
  class procedure GetProduto (Req: THorseRequest; Res: THorseresponse; next: TProc);
  class procedure DeleteProduto (Req: THorseRequest; Res: THorseresponse; next: TProc);
  class procedure PostProduto (Req: THorseRequest; Res: THorseresponse; next: TProc);
end;
implementation
uses
UDAO.intf, system.JSON, system.SysUtils;

{ TControllerProdutos }

class procedure TControllerProdutos.DeleteProduto(Req: THorseRequest;
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

  xDAO := TDAOProdutos.Create;

  if xDAO.DeletarRegistro(xId) then
    Res.Status(THTTPStatus.NoContent)
  else
    Res.Status(THTTPStatus.InternalServerError);
end;

class procedure TControllerProdutos.GetProduto(Req: THorseRequest;
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

  xDao := TDAOProdutos.Create;

  Res.Send<TJSONObject>(xDAO.ProcurarPorId(xId));
end;




class procedure TControllerProdutos.GetProdutos(Req: THorseRequest;
  Res: THorseresponse; next: TProc);
  var
  xDAO : IDAO;
begin
  xDAO := TDAOProdutos.Create;
  res.Send<TJSONARRAY>(xDAO.ObterRegistros);

end;

class procedure TControllerProdutos.PostProduto(Req: THorseRequest;
  Res: THorseresponse; next: TProc);
  var
  xDAO : IDAO;

begin
     xDAO := TDAOProdutos.Create;
     if xDAO.adicionarRegistro(Req.Body<TJSONObject>) then
     Res.Status(THTTPStatus.Created)

     else
     Res.Status(THTTPStatus.InternalServerError)

end;


end.
