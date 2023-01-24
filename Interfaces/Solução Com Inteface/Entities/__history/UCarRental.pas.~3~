unit UCarRental;

interface

uses
  UVehicle, UInvoice;

Type
  TCarRental = Class
  Private
    FStart: TDateTime;
    FFinish: TDateTime;
    FVehicle: TVehicle;
    FInvoice: TInvoice;
    function GetFinish: TDateTime;
    function GetInvoice: TInvoice;
    function GetStart: TDateTime;
    function GetVehicle: TVehicle;
    procedure SetFinish(const Value: TDateTime);
    procedure SetInvoice(const Value: TInvoice);
    procedure SetStart(const Value: TDateTime);
    procedure SetVehicle(const Value: TVehicle);

  Public
    Constructor Create(Const aStart, aFinish: TDateTime; avehicle: TVehicle);

    Property start: TDateTime Read GetStart write SetStart;
    Property Finish: TDateTime Read GetFinish write SetFinish;
    Property Vihicle: TVehicle Read GetVehicle write SetVehicle;
    Property Invoice: TInvoice Read GetInvoice write SetInvoice;
  End;

implementation

{ TCarRental }

constructor TCarRental.Create(const aStart, aFinish: TDateTime;
  avehicle: TVehicle);

begin
  FStart := aStart;
  FFinish := aFinish;
  FVehicle := avehicle;

end;

function TCarRental.GetFinish: TDateTime;
begin
  Result := FFinish;
end;

function TCarRental.GetInvoice: TInvoice;
begin
  Result := FInvoice;
end;

function TCarRental.GetStart: TDateTime;
begin
  Result := FStart;
end;

function TCarRental.GetVehicle: TVehicle;
begin
  Result := FVehicle;

end;

procedure TCarRental.SetFinish(const Value: TDateTime);
begin
  FFinish := Value;
end;

procedure TCarRental.SetInvoice(const Value: TInvoice);
begin
  FInvoice := Value;
end;

procedure TCarRental.SetStart(const Value: TDateTime);
begin
  FStart := Value;

end;

procedure TCarRental.SetVehicle(const Value: TVehicle);
begin
  FVehicle := Value;

end;

end.
