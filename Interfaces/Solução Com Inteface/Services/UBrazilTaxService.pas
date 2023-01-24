unit UBrazilTaxService;

interface

uses UTaxServices;




Type
  TBrazilTaxService = Class(TInterfacedObject, ItaxService)

  Private
  Public
    Function Tax(Const aAmount: Double): Double;
  end;

implementation

{ TBrazilTaxService }



function TBrazilTaxService.Tax(const aAmount: Double): Double;
begin
  if (aAmount <= 100) then
    Result := aAmount * 0.2
  else
    Result := aAmount * 0.15;
end;

end.
