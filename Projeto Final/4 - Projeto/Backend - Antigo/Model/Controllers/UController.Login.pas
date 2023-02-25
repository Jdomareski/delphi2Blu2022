unit UController.Login;

interface

uses
  UController.Base,
  Horse,
  JOSE.CORE.JWT,
  JOSE.CORE.Builder,
  GBSwagger.Path.Attributes,
  UEntity.Logins;

type
  [SwagPath('login', 'Login')]
  TControllerLogin = class(TControllerBase)
    private
    public
      [SwagPost('Autenticação do Usuário')]
      [SwagParmBody('Informações do Login', TLogin)]
      [SwagResponse(200, 'Token (String)')]
      [SwagResponse(400)]
      class procedure PostLogin(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

uses
  System.JSON, System.SysUtils;

{ TControllerLogin }

class procedure TControllerLogin.PostLogin(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
var
  xToken: TJWT;
  xCompactToken: String;
  xJSONLogin: TJSONObject;
  xUser, xPassword: String;
begin
  xToken := TJWT.Create;
  try
    //Token Claims
    xToken.claims.Issuer := 'DevsBets';
    xToken.Claims.Subject := 'Projeto Final';
    xToken.Claims.Expiration := Now + 1;

    xJSONLogin := Req.Body<TJSONObject>;

    if not Assigned(xJSONLogin) then
    begin
      Res.Status(THTTPStatus.BadRequest);
      Exit;
    end;

    if not xJSONLogin.TryGetValue<String>('login', xUser) then
    begin
      Res.Status(THTTPStatus.BadRequest);
      Exit;
    end;

    if not xJSONLogin.TryGetValue<String>('password', xPassword) then
    begin
      Res.Status(THTTPStatus.BadRequest);
      Exit;
    end;

    //Outros Claims
    xToken.Claims.SetClaimOfType<String>('login', xUser);

    //Assinatura
    xCompactToken := TJOSE.SHA256CompactToken('KeyDevsBets', xToken);

    Res.Send(xCompactToken);
  finally
    xToken.Free;
  end;
end;

end.
