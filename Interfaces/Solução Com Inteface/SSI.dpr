program SSI;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  UCarRental in 'Entities\UCarRental.pas',
  Uinvoice in 'Entities\Uinvoice.pas',
  UVehicle in 'Entities\UVehicle.pas',
  UBrazilTaxService in 'Services\UBrazilTaxService.pas',
  URentalServices in 'Services\URentalServices.pas',
  UTaxServices in 'Services\UTaxServices.pas',
  UUSATaxService in 'Services\UUSATaxService.pas';

var
 xCarModel : String;
 xStrStart, xStrFinish : String;
 xStart, xFinish : TDateTime;
 xCarRental: TCarRental;
 xStrPricePerDay, xStrPricePerHour : String;
 xPricePerHour, xPricePerDay : Double;
 xRentalService : TRentalService;

begin
  try
  Writeln('Entre com os dados do aluguel:');
  writeln('Modelo do Carro: ');
  Readln(xCarModel);

  writeln('Retirada (dd/mm/yyyy hh:mm):');
  Readln(xStrStart);
  xStart := StrToDateTime(xStrStart);

  writeln('Retorno(dd/mm/yyyy hh:mm):');
  Readln(xStrFinish);
  xFinish := StrToDateTime(xStrFinish);

  xCarRental := TCarRental.Create(xStart, xFinish, TVehicle.Create(xCarModel));

  writeln('EntreCom o Preço Por Hora : ');
  Readln(xStrPricePerHour);
  xPricePerHour := StrToFloatDef(xStrPricePerHour, 0);

  writeln('Entre com o preço por dia');
  readln(xStrPricePerDay);
  xPricePerDay := StrToFloatDef(xStrPricePerDay, 0);

  //xRentalService := TRentalService.Create(xPricePerDay, xPricePerHour, TBrazilTaxService.Create);

  xRentalService := TRentalService.Create(xPricePerDay, xPricePerHour, TUSATaxService.Create);
  xRentalService.ProcessInvoice(xCarRental);

  Writeln ('Fatura');
  writeln('Pagamento básico...', xcarRental.Invoice.BasicPayment.ToString);
  Writeln('Imposto............', xCarRental.Invoice.Tax.ToString);
  Writeln('Total..............', xCarRental.Invoice.TotalPayment.ToString);

  readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
