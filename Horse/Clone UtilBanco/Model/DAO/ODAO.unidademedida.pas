unit ODAO.unidademedida;

interface

uses
  UDAO.intf,
  System.JSON,
  Dataset.serialize,
  Uutil.banco,
  firedac.comp.Client,
  sysutils;

type

  TDAOunidademedida = class(TINterfacedObject, IDAO)
    function ObterRegistros: TJSONArray;
    function ProcurarPorID(Const aIdentificador: Integer): TJSONObject;
    function adicionarRegistro(aregistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

{ TDAOProdutos }

function TDAOunidademedida.adicionarRegistro(aregistro: TJSONObject): Boolean;
begin
  try
    Result := TUtilbanco.adicionarRegistro('unidademedida', aregistro.ToJSon);
  except
    on e: Exception do
      raise Exception.Create('Error Message');
  end;
end;

function TDAOunidademedida.DeletarRegistro(const aIdentificador: Integer): Boolean;
begin
  try
    Result := TUtilbanco.RemoverRegistro('unidademedida', aIdentificador);
  Except
    on e: Exception do
      raise Exception.Create('Error ao remover registro> ' + e.Message);

  end;

end;

function TDAOunidademedida.ObterRegistros: TJSONArray;
var
  xQuery: TFDQuery;

begin
  try
    try
      xQuery := TUtilbanco.executarconsulta('SELECT * FROM unidademedida');
      Result := xQuery.toJSONArray();

      //ToJSON Arrat e LoadFromTOJhonson - Dataset.serialize

    except
      on e: Exception do
        raise Exception.Create('Erro ao obter registros: ' + e.Message);
    end;
  finally
    FreeAndNil(xQuery);

  end;

end;

function TDAOunidademedida.ProcurarPorID(const aIdentificador: Integer): TJSONObject;
var
  xQuery: TFDQuery;

begin
  xQuery := Nil;
  try
    try
      xQuery := TUtilbanco.executarconsulta
        (Format('SELECT * FROM unidademedida WHERE ID = %d', [aIdentificador]));

      Result := xQuery.ToJSONObject();

    except
      on e: Exception do
        raise Exception.Create('Erro ao obter registros: ' + e.Message);

    end;
  finally

    FreeAndNil(xQuery);

  end;

end;

end.
