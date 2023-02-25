unit UService.login;

interface

uses
  UEntity.Logins, UService.base;

type
  TServiceLogin = class(TserviceBase)
  private
    FLogin: TLogin;

    Procedure salvarToken;
    Procedure UsuarioAutenticado;

  Public
    Constructor Create(aLogin: TLogin);
    Destructor Destroy; override;

    Procedure Registrar; override;
    procedure listar; override;
    procedure Excluir; override;

    function ObterRegistro(Const aId: Integer): TOBject; override;

    Procedure Autenticar;

  end;

implementation

uses
  REST.Authenticator.Basic, REST.Types,
  System.JSON, UUTils.constants, System.SysUtils,
  System.Classes, UService.Intf, UService.user, UEntity.Users,
  JOSE.Core.JWT,
  JOSE.Core.Builder, UService.User.Authenticated;

{ TServiceLogin }

procedure TServiceLogin.Autenticar;
var
  xJSONBody: TJSONObject;
  xHTTPBasicAut: THTTPBasicauthenticator;
begin
  xJSONBody     := TJSONObject.Create;
  xHTTPBasicAut := THTTPBasicauthenticator.Create(FLogin.login, FLogin.Password);
  try
    try
    FRESTClient.Authenticator := xHTTPBasicAut;
    FRESTClient.BaseURL       := URL_BASE_LOGIN;

    xJSONBody.addPair('login', FLogin.login);
    xJSONBody.addpair('password', FLogin.password);

    FRESTRequest.Method := rmPost;
    FRESTRequest.Params.AddBody(xJSONBody);
    FRESTRequest.Execute;

    case FRESTResponse.StatusCode of
      API_SUCESSO:
      Begin
        Flogin.Token := FRESTResponse.Content;
        Self.salvarToken;
        Self.UsuarioAutenticado;
      end;
      API_NAO_AUTORIZADO:
        raise Exception.Create('Usu�rio N�o Autorizado');
      Else
        raise Exception.Create('Erro N�o Catalogado');
    end;
  Except
    on e: Exception do
      raise Exception.Create(e.message);

  end;
finally
  FreeandNil(xJSONBody);
  Freeandnil(xHTTPBasicAut);
end;
end;

constructor TServiceLogin.Create(aLogin: TLogin);
begin
  inherited Create;

  FLogin := aLogin;
end;

destructor TServiceLogin.Destroy;
begin
  FreeAndNil(FLogin);
  inherited;
end;

procedure TServiceLogin.Excluir;
begin
  inherited;
  // Sem implemta��o por enquanto

end;

procedure TServiceLogin.listar;
begin
  inherited;
  // Sem implemta��o por enquanto
end;

function TServiceLogin.ObterRegistro(const aId: Integer): TOBject;
begin
Result := nil;
  // Sem implemta��o por enquanto


end;

procedure TServiceLogin.Registrar;
begin
  inherited;
    // Sem implemta��o por enquanto
end;

procedure TServiceLogin.salvarToken;
var
  xStringList : TStringlist;
begin
  xStringlist := TStringlist.create;

  try
    xStringlist.add(FLogin.Token);
    xStringlist.savetofile('Token.jwt');

  finally
  xStringlist.free;
  end;
end;

procedure TServiceLogin.UsuarioAutenticado;
var
  xserviceuser : Iservice;
  xJWT : TJWT;
  xIdUser : Integer;
  xUserAuthenticated : TUserAuthenticated;

begin
  xJWT := TJOSE.DeserializeCompact('KeyDevsBets', FLogin.Token);

  Try
    if not xJWT.claims.JSON.TryGetValue<Integer>('id', xidUser) then
     raise Exception.Create('N�o Foi Possivel Registrar autentica��o');

    xServiceuser := TServiceuser.create;

    xUserAuthenticated  := tUserAuthenticated.GetIstance;
    xUserAuthenticated.User := TUser(xServiceUser.ObterRegistro(xiDUser));
  Finally
    FreeAndNil(xJWT);

  End;

end;

end.
