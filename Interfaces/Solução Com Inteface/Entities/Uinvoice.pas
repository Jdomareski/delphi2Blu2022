unit Uinvoice;

interface

type
  TInvoice = Class
    FBasicPayment: Double;
    FTax: Double;

  Private
    function GetBasicPayment: Double;
    function GetTax: Double;

    procedure SetBasicPayment(const Value: Double);
    procedure SetTax(const Value: Double);

  Public
    Constructor Create(Const aBasicPayment: Double; aTax: Double);
    Function TotalPayment: Double;

    Property BasicPayment: Double read GetBasicPayment Write SetBasicPayment;
    Property Tax: Double Read GetTax Write SetTax;
  End;

implementation

{ TInvoice }

constructor TInvoice.Create(const aBasicPayment: Double; aTax: Double);
begin
  FBasicPayment := aBasicPayment;
  FTax := aTax;

end;

function TInvoice.GetBasicPayment: Double;
begin
  Result := FBasicPayment
end;

function TInvoice.GetTax: Double;
begin
  Result := FTax;

end;

procedure TInvoice.SetBasicPayment(const Value: Double);
begin
  FBasicPayment := Value;
end;

procedure TInvoice.SetTax(const Value: Double);
begin
  FTax := Value;

end;

function TInvoice.TotalPayment: Double;
begin
  Result := GetBasicPayment + GetTax;
end;

end.
