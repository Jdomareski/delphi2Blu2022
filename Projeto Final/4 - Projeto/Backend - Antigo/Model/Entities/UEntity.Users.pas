unit UEntity.Users;

interface

uses
  System.JSON,
  GBSWagger.Model.Attributes;

type
  TUser = Class
  Private
    Fid: Integer;
    FName: String;
    FStatus: Byte;
    FLogin: String;
    FPassword: String;
    FJSON: TJSONObject;
    function GetId: Integer;
    function GetJSON: TJSONObject;
    function GetLogin: String;
    function GetName: String;
    function GetPassWord: String;
    function GetStatus: Byte;
    procedure SetId(const Value: Integer);
    procedure SetLogin(const Value: String);
    procedure SetName(const Value: String);
    procedure SetPassword(const Value: String);
    procedure SetStatus(const Value: Byte);

  Public
    Constructor Create(Const aNome, aLogin, aPassword: String);
    Destructor Destroy; Override;

    [SwagProp('Usuário Id', true)]
    Property Id: Integer Read GetId Write SetId;
    [SwagProp('Usuário Nome', true)]
    Property Name: String Read GetName Write SetName;
    [SwagProp('Usuário Status', true)]
    Property Status: Byte Read GetStatus Write SetStatus;
    [SwagProp('Usuário Login', true)]
    Property Login: String Read GetLogin Write SetLogin;
    [SwagProp('Usuário Senha', true)]
    Property Password: String Read GetPassWord Write SetPassword;

    Property JSON: TJSONObject Read GetJSON;

  End;

implementation

{ TUser }

constructor TUser.Create(const aNome, aLogin, aPassword: String);
begin
  FJSON := TJSONObject.Create;

  FName := aNome;
  FLogin := aLogin;
  FPassword := aPassword;
end;

destructor TUser.Destroy;
begin
  if Assigned(FJSON) then
    FJSON.Free;

  inherited;
end;

function TUser.GetId: Integer;
begin
  Result := Fid;

end;

function TUser.GetJSON: TJSONObject;
begin
  FJSON.AddPair('Name', FName);
  FJSON.AddPair('login', FLogin);
  FJSON.AddPair('password', FPassword);

end;

function TUser.GetLogin: String;
begin
  Result := FLogin;

end;

function TUser.GetName: String;
begin
  Result := FName;

end;

function TUser.GetPassWord: String;
begin
  Result := FPassword;

end;

function TUser.GetStatus: Byte;
begin
  Result := FStatus;

end;

procedure TUser.SetId(const Value: Integer);
begin
  Fid := Value

end;

procedure TUser.SetLogin(const Value: String);
begin
  FLogin := Value
end;

procedure TUser.SetName(const Value: String);
begin
  FName := Value

end;

procedure TUser.SetPassword(const Value: String);
begin
  FPassword := Value

end;

procedure TUser.SetStatus(const Value: Byte);
begin
  FStatus := Value

end;

end.
