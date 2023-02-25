unit UDAO.Base;

interface

uses

  System.JSON,
  Dataset.Serialize, UDAO.Intf;

// UDAO.Intf;
Type
  TDAOBase = class(TInterfacedObject, IDAO)
  Protected
  FTabela : String;
  Public
    Function ObterRegistros: TJSONArray;
    Function ProcurarPorId(Const aIdentificador: Integer): TJSONObject;
    Function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
    Function DeletarRegistro(Const aIdentificador: Integer): Boolean;


  end;

implementation

uses
  FireDAC.Comp.Client,
  System.SysUtils,
  UUTil.Banco;


  { TDAOUsers }

function TDAOBase.AdicionarRegistro(aRegistro: TJSONObject): Boolean;
begin
  try
    Result := TUtilBanco.AdicionarRegistro(FTabela, aRegistro.ToJSON);
  except
    on e: Exception do
      raise Exception.Create('Erro ao adicionar registro: ' + e.Message);
  end;
  end;

  function TDAOBase.DeletarRegistro(const aIdentificador: Integer): Boolean;
  begin
  try
  Result := TUtilBanco.RemoverRegistro(FTabela, aIdentificador);

  Except
    on e: Exception do
      raise Exception.Create('Erro ao Remover registro: ' + e.Message);


  end;

  end;

  function TDAOBase.ObterRegistros: TJSONArray;
  begin
  try
  Result := TUtilBanco.ExecutarConsulta(Format('Select * From %s', [FTabela]));

  Except
    on e: Exception do
      raise Exception.Create('Erro ao Obetr registros: ' + e.Message);


  end;
  end;

  function TDAOBase.ProcurarPorId(const aIdentificador: Integer): TJSONObject;
var
xJSONArray : TJSONARray;
  begin
  try
  xJSONArray := TUtilBanco.ExecutarConsulta(Format('SELECT * FROM %s WHERE ID = %d',
  [FTabela, aIdentificador]));

  if xJSONArray.Count = 0 then
  begin
    Result := TJSONObject.Create;
    xJSONArray.Free;
    Exit;
  end;

  Result := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(xJSONArray[0].ToJSON), 0) as TJSONObject;

  except
  On e: Exception do
  raise Exception.Create('Erro ao obter registros: ' + e.Message);

  end;

  end;


end.
