unit UEntity.Teams;

interface

uses
  System.JSON,
  GBSWagger.Model.Attributes;

Type
  TTeam = class
  Private
    FId: Integer;
    FName: String;
    FJSON: TJSONObject;
    function GetId: Integer;
    function GetJSON: TJSONObject;
    function GetName: String;
    procedure SetId(const Value: Integer);
    procedure SetName(const Value: String);

  public
    Constructor create(Const aName: String; Const aId: Integer = 0);
    Destructor Destroy; Override;

    [SwagProp('Autenticação Id', true)]
    Property Id: Integer Read GetId write SetId;
    [SwagProp('Autenticação Nome', true)]
    Property Name: String Read GetName write SetName;
    Property JSON: TJSONObject read GetJSON;
  end;

implementation

uses
  System.SysUtils;

{ TTeam }

constructor TTeam.create(const aName: String; const aId: Integer);
begin
  FJSON := TJSONObject.create;
  FId := aId;
  FName := aName;

end;

destructor TTeam.Destroy;
begin
  FreeAndNil(FJSON);

  inherited;
end;

function TTeam.GetId: Integer;
begin
  Result := FId;

end;

function TTeam.GetJSON: TJSONObject;
begin
  FJSON.addpair('Name', FName);

end;

function TTeam.GetName: String;
begin
  Result := FName;

end;

procedure TTeam.SetId(const Value: Integer);
begin
  FId := Value

end;

procedure TTeam.SetName(const Value: String);
begin
  FName := Value

end;

end.
