unit URegistro;

interface

uses UIFuncServices;

type
  TRegistro = class // (TInterfacedObject, IFuncServices)
  Private
    FId: Integer;
    FDesc: String;
    function GetId: Integer;
    procedure SetId(const Value: Integer);
    function GetDesc: String;
    procedure SetDesc(const Value: String);
  public
    Property Id: Integer read GetId write SetId;
    Property Desc: String read GetDesc write SetDesc;

  end;

implementation

{ TRegistro }

function TRegistro.GetDesc: String;
begin
  Result := FDesc;
end;

function TRegistro.GetId: Integer;
begin
  Result := FId;
end;

procedure TRegistro.SetDesc(const Value: String);
begin
  FDesc := Value;
end;

procedure TRegistro.SetId(const Value: Integer);
begin
  FId := Value;

end;

end.
