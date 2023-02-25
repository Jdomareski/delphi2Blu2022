unit UDAO.Users;

interface

uses UDAO.Base;


Type
TDAOUsers = class(TDAOBase)
  Public
  function validarLogin(Const aUser, aPassword: String): Boolean;
  Constructor Create;

end;

implementation

uses
  UUtil.Banco, System.JSON, System.SysUtils;

{ TDAOUsers }

constructor TDAOUsers.Create;
begin
  Ftabela := 'users';
end;

function TDAOUsers.validarLogin(const aUser, aPassword: String): Boolean;
var
xJSONArray : TJSONArray;
begin
try
  xJSONArray := TUtilBanco.ExecutarConsulta(
  Format('SELECT * FROM %s WHERE LOGIN = %s AND PASSWORD = %s', [FTabela, QuotedStr(aUser), QuotedStr(aPassword)]));

  Result := Assigned(xJSONArray) and (xJSONArray.count > 0);

  except
  on  e: Exception do
  raise exception.Create('Erro ao validar usuário: '+ e.Message);

end;

end;

end.
