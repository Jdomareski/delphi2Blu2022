unit ODAO.Produtos;

interface

uses
  UDAO.intf,
  System.JSON,
  Dataset.serialize,
  Uutil.banco,
  firedac.comp.Client,
  sysutils;

type

  TDAOProdutos = class(TINterfacedObject, IDAO)
    function ObterRegistros: TJSONArray;
    function ProcurarPorID(Const aIdentificador: Integer): TJSONObject;
    function adicionarRegistro(aregistro: TJSONObject): Boolean;
    function DeletarRegistro(const aIdentificador: Integer): Boolean;
  end;

implementation

{ TDAOProdutos }

function TDAOProdutos.adicionarRegistro(aregistro: TJSONObject): Boolean;
begin
  try
    Result := TUtilbanco.adicionarRegistro('PRODUTOS', aregistro.ToJSon);
  except
    on e: Exception do
      raise Exception.Create('Error Message');
  end;
end;

function TDAOProdutos.DeletarRegistro(const aIdentificador: Integer): Boolean;
begin
  try
    Result := TUtilbanco.RemoverRegistro('PRODUTOS', aIdentificador);
  Except
    on e: Exception do
      raise Exception.Create('Error ao remover registro> ' + e.Message);

  end;

end;

function TDAOProdutos.ObterRegistros: TJSONArray;
var
  xQuery: TFDQuery;

begin
  try
    try
      xQuery := TUtilbanco.executarconsulta('SELECT * FROM PRODUTOS');
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

function TDAOProdutos.ProcurarPorID(const aIdentificador: Integer): TJSONObject;
var
  xQuery: TFDQuery;

begin
  xQuery := Nil;
  try
    try
      xQuery := TUtilbanco.executarconsulta
        (Format('SELECT * FROM PRODUTOS WHERE ID = %d', [aIdentificador]));

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
