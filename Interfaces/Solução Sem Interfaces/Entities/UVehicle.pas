unit UVehicle;

interface

Type
  TVehicle = Class

  Private
    FModel: String;

    function GetModel: String;
    procedure SetModel(const Value: String);
  Public
    Property Model: String Read GetModel Write SetModel;
    Constructor Create(Const aModel: String);

  End;

implementation

{ TVehicle }

constructor TVehicle.Create(const aModel: String);
begin
  FModel := aModel;

end;

function TVehicle.GetModel: String;
begin
  Result := FModel;
end;

procedure TVehicle.SetModel(const Value: String);
begin
  FModel := Value;
end;

end.
