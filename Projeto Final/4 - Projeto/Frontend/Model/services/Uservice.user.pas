unit Uservice.user;

interface

uses
  uEntity.Users, Uservice.base;

type
  TserviceUser = class(TserviceBase)

  Private
    FUser: TUser;

  public

    constructor create; overload;
    constructor create(aUser: TUser); overload;
    destructor Destroy; override;

    Procedure Registrar; Override;
    Procedure Listar; Override;
    Procedure Excluir; override;

    function ObterRegistro(const aId: Integer): TObject; override;

  end;

implementation

uses
  REST.Types,
  System.JSON,
  UUtils.constants,
  System.SysUtils,
  System.Classes,
  Firedac.comp.Client,
  Dataset.Serialize;

{ TserviceUser }

constructor TserviceUser.create;
begin
  inherited create
end;

constructor TserviceUser.create(aUser: TUser);
begin
  FUser := aUser;
  self.create;

end;

destructor TserviceUser.Destroy;
begin
  FreeandNil(FUser);

  inherited;
end;

procedure TserviceUser.Excluir;
begin
// sem metodo por enquanto

end;

procedure TserviceUser.Listar;
begin
// sem metodo por enquanto
end;

function TserviceUser.ObterRegistro(const aId: Integer): TObject;
var
  xMemTable: Tfdmemtable;
begin

  Result := nil;

  xMemTable := Tfdmemtable.create(nil);

  try
    FRESTClient.baseURL := URL_BASE_USER + '/' + aId.Tostring;
    FRESTRequest.Method := rmGet;
    FRESTRequest.Execute;

    if FRESTResponse.StatusCode = API_SUCESSO then
    begin
      xMemTable.loadfromJSON(FRESTResponse.Content);

      if xMemTable.FindFirst then

        Result := TUser.create(xMemTable.FieldByName('id').AsInteger);
    end;

  finally
    FreeandNil(xMemTable);

  end;
end;

procedure TserviceUser.Registrar;
begin
  try
    FRESTClient.baseURL := URL_BASE_USER;
    FRESTRequest.Method := rmPost;
    FRESTRequest.Params.AddBody(FUser.JSON);
    FRESTRequest.Execute;
    case FRESTResponse.StatusCode of
      API_CRIADO:
        exit;
      API_NAO_AUTORIZADO:
        raise Exception.create('Usuário não autorizado');

    else
      raise Exception.create('Erro não catalogado');
    end;

  except
    on E: Exception do
      raise Exception.create(E.message);
  end;

end;

end.
