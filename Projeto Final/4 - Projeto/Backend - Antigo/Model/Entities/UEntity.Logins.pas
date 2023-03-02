unit UEntity.Logins;

interface

uses

  GBSWagger.Model.Attributes;

type
  TLogin = Class
  Private
    FLogin, FPassword, FToken: String;
    function GetLogin: String;
    function GetPassword: String;
    function GetToken: String;
    procedure SetLogin(const Value: String);
    procedure SetPassword(const Value: String);
    procedure SetToken(const Value: String);

  public
    Constructor Create(Const aLogin, aPassword: string);

    [SwagProp('Autentica��o Login', true)]
    Property Login: String Read GetLogin Write SetLogin;
    [SwagProp('Autentica��o Password', true)]
    Property Password: String Read GetPassword Write SetPassword;
    [SwagProp('Autentica��o Token', true)]
    Property Token: String Read GetToken Write SetToken;
  End;

implementation

{ TLogin }

constructor TLogin.Create(const aLogin, aPassword: string);
begin
  FLogin := aLogin;
  FPassword := aPassword;
end;

function TLogin.GetLogin: String;
begin
  Result := FLogin;

end;

function TLogin.GetPassword: String;
begin
  Result := FPassword;

end;

function TLogin.GetToken: String;
begin
  Result := FToken;

end;

procedure TLogin.SetLogin(const Value: String);
begin
  FLogin := Value

end;

procedure TLogin.SetPassword(const Value: String);
begin
  FPassword := Value;

end;

procedure TLogin.SetToken(const Value: String);
begin
  FToken := Value;

end;

end.