unit UUSATaxService;


interface

uses UTaxServices;




Type
  TUSATaxService = Class(TInterfacedObject, ItaxService)

  Private
  Public
    Function Tax(Const aAmount: Double): Double;
  end;

implementation

{ TBrazilTaxService }



function TUSATaxService.Tax(const aAmount: Double): Double;
begin
  if (aAmount <= 100) then
    Result := aAmount * 0.3
  else
    Result := aAmount * 0.20;
end;

end.
