unit URentalServices;

interface

uses
  UCarRental, UBrazilTaxService, DateUtils, Math, System.SysUtils, Uinvoice,
  UTaxServices;

Type
  TRentalService = Class
  Private
    FPricePerDay: Double;
    FPricePerHour: Double;
    FTaxService: ITaxService;

  Public
    Constructor Create(Const APricePerDay, APricePerHour: Double;
      aTaxService: ITaxService);
    Destructor Destroy; Override;

    Procedure ProcessInvoice(aCarRental: TCarRental);

  End;

Implementation

{ TRentalService }

constructor TRentalService.Create(const APricePerDay, APricePerHour: Double;
  aTaxService: ITaxService);
begin
  FPricePerDay := APricePerDay;
  FPricePerHour := APricePerHour;
  FtaxService := aTaxService;
end;

destructor TRentalService.Destroy;
  begin
  // FreeAndNil (FtaxService);
  inherited;
  end;
  // Variaveis/Atributos do tipo interface n�o precisam liberar da memoraia
  // o Delphi faz isso para a gente
  //freeandnil (FtaxService)

procedure TRentalService.ProcessInvoice(aCarRental: TCarRental);
var
  xHours: Double;
  xBasicPayment: Double;
  xTax: Double;

begin
  xHours := DateUtils.MilliSecondsBetween(aCarRental.Finish, aCarRental.start) /
    1000 / 60 / 60;

  if xHours <= 12 then
    xBasicPayment := FPricePerHour * Math.Ceil(xHours)
  else
    xBasicPayment := FPricePerDay * Math.Ceil(xHours / 24);

  xTax := FTaxService.Tax(xBasicPayment);

  aCarRental.Invoice := TInvoice.Create(xBasicPayment, xTax);

end;

end.
