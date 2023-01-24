unit URentalServices;

interface

uses
  UCarRental, UBrazilTaxService, DateUtils, Math;

Type
  TRentalService = Class
  Private
    FPricePerDay: Double;
    FPricePerHour: Double;

    FTaxService: TBrazilTaxService;

  Public
    Constructor Create(Const APricePerDay, APricePerHour: Double;
      aTaxService: TBrazilTaxService);
    Destructor Destroy; Override;

    Procedure ProcessInvoice(aCarRental: TCarRental);

  End;

Implementation

uses
  System.SysUtils, Uinvoice;

{ TRentalService }

constructor TRentalService.Create(const APricePerDay, APricePerHour: Double;
  aTaxService: TBrazilTaxService);
begin
FPricePerDay := aPricePerDay;
FPricePerHour := aPricePerHour;

end;

destructor TRentalService.Destroy;
begin
FreeAndNil (FtaxService);
  inherited;
end;

procedure TRentalService.ProcessInvoice(aCarRental: TCarRental);
var
xHours : Double;
xBasicPayment : Double;
xTax : Double;

begin
xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.start) / 1000 /60 /60;

if xHours <= 12 then
xBasicPayment := FPricePerHour * Math.Ceil(xHours)
else
xBasicPayment := FPricePerDay * Math.Ceil(xHours / 24);

xTax := FTaxService.Tax(xBasicPayment);

aCarRental.Invoice := TInvoice.Create(xBasicPayment, xTax);


end;

end.
