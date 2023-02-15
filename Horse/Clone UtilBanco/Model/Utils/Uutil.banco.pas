unit Uutil.banco;

interface

uses

  firedac.comp.Client,
  firedac.Phys.MySQL,
  firedac.DApt,
  firedac.Stan.Def,
  firedac.Stan.Async,
  data.db,
  dataset.serialize,
  system.SysUtils;

type
  TUtilBanco = Class
  Private
    class function conexao: TfdConnection;
  public
    class function executarconsulta(const aSQL: String): TfdQuery;
    class function adicionarregistro(const aTabela: string;
      const aJson: String): Boolean;
    Class function RemoverRegistro(Const aTabela: String;
      Const aIdentificador: Integer): Boolean;
  End;

implementation

{ TUtilBanco }

class function TUtilBanco.adicionarregistro(const aTabela,
  aJson: String): Boolean;
const
  COMANDO_INSERT = 'Insert into %s (%s) VALUES (%s)';

var
  I: Integer;
  xMemTable: TFDMemtable;
  xQuery: TfdQuery;
  xColunas: String;
  xValores: String;
begin
  xQuery := TfdQuery.Create(nil);
  xMemTable := TFDMemtable.Create(Nil);

  try
    try
      xMemTable.LoadFromJSON(aJson);

      for I := 0 to pred(xMemTable.FieldCount) do
      begin
        xColunas := xColunas + xMemTable.Fields[I].FieldName + ',';

        if xMemTable.Fields[I].DataType = ftFloat then
          xValores := xValores + StringReplace
            (FloatToStr(xMemTable.Fields[I].AsFloat), ',', '.',
            [rfReplaceAll]) + ','

        else

          xValores := xValores + QuotedStr(xMemTable.Fields[I].AsString) + ',';

      end;

      xColunas := Copy(xColunas, 1, Length(xColunas) - 1);
      xValores := Copy(xValores, 1, Length(xValores) - 1);

      xQuery.Connection := Self.conexao;
      xQuery.SQL.Clear;
      xQuery.SQL.add(Format(COMANDO_INSERT, [aTabela, xColunas, xValores]));
      xQuery.ExecSQL;

      Result := True;

    except
      on e: Exception do
        raise Exception.Create('Error Message');
    end;

  finally
    freeAndNil(xQuery);
    freeAndNil(xMemTable);

  end;

end;

class function TUtilBanco.conexao: TfdConnection;
var
  xdriver: TFDPhysMySqlDriverLink;
begin
  xdriver := TFDPhysMySqlDriverLink.Create(nil);
  Result := TfdConnection.Create(nil);

  // driver de conexao do mysql
  xdriver.VendorLib := extractFilePath(paramStr(0)) + 'libmysql.dll';

  // parametros de conexao de banco

  Result.DriverName := 'Mysql';
  Result.LoginPrompt := False;
  Result.Params.add('Database=api');
  Result.Params.add('User_name=root');
  Result.Params.add('Password=root');
  Result.Params.add('Server=localhost');
  Result.Params.add('DriverID=Mysql');
  Result.Open;

end;

class function TUtilBanco.executarconsulta(const aSQL: String): TfdQuery;
var
  xQuery: TfdQuery;

begin
  xQuery := TfdQuery.Create(nil);

  try
    xQuery.Connection := Self.conexao;
    xQuery.Open(aSQL);

    Result := xQuery;

  except
    on e: Exception do
      raise Exception.Create('Error Message');

  end;

end;

class function TUtilBanco.RemoverRegistro(const aTabela: String;
  const aIdentificador: Integer): Boolean;

const
  COMANDO_DELETE = 'DELETE FROM %s WHERE ID = %d';

var
  xQuery: TfdQuery;

begin
  xQuery := TfdQuery.Create(Nil);
  try
    try
      xQuery.Connection := Self.conexao;
      xQuery.SQL.Clear;
      xQuery.SQL.add(Format(COMANDO_DELETE, [aTabela, aIdentificador]));
      xQuery.ExecSQL;

      Result := True;

    except
      on e: Exception do
        raise Exception.Create('Error Message');
    end;
  finally
    freeAndNil(xQuery);
  end;
end;

end.
