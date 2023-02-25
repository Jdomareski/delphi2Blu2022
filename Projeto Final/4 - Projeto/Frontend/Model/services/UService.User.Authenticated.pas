unit UService.User.Authenticated;

interface

uses
  uEntity.Users;

type
  // classe utilizando o padrão singleton
  // Para armazenar o usuario logado

  tUserAuthenticated = class

  private
    fUser: TUser;
    function GetUser: TUser;
    procedure SetUser(const Value: TUser);

  public
    Constructor create;
    Destructor Destroy; override;

    class function GetIstance: TUserAuthenticated;
    class function NewInstance: TObject; override;
    property User: TUser read GetUser write SetUser;

    end;
    var
    gbInstance : TUserAuthenticated;


implementation

uses
System.SysUtils;

{ tUserAuthenticated }

constructor tUserAuthenticated.create;
begin
// aqui não precisamos criar o FUser
// Quem passará o mesmo creiado será a tela de login

end;

destructor tUserAuthenticated.Destroy;
begin
  FreeandNil(FUser);
  inherited;
end;

class function tUserAuthenticated.GetIstance: TUserAuthenticated;
begin
  Result := TUserAuthenticated.create

end;

function tUserAuthenticated.GetUser: TUser;
begin
  Result := FUser;
end;

class function tUserAuthenticated.NewInstance: TObject;
begin
  if not assigned (GbInstance) then
  GbInstance := TUserAuthenticated(inherited Newinstance);
  Result := GbInstance;
end;

procedure tUserAuthenticated.SetUser(const Value: TUser);
begin
  fUser := value;

end;

initialization

finalization
  Freeandnil(GbInstance);
end.
