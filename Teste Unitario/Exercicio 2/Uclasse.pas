unit Uclasse;

interface

type

  TCompra = Class

  private
    FNomeProduto: String;
    FQuantidade: Double;
    FPreco, FValorTotal: Double;

    procedure SetNomeProduto(const Value: String);
    procedure SetPreco(const Value: Double);
    procedure SetQuantidade(const Value: Double);
    procedure SetValorTotal(const Value: Double);

  public

    Function CalcDesconto: Double;
    function valorSemDesconto : Double;
    function desconto : String;

    Property NomeProduto: String read FNomeProduto write SetNomeProduto;
    Property Quantidade: Double read FQuantidade write SetQuantidade;
    Property Preco: Double read FPreco write SetPreco;
    Property ValorTotal: Double read FValorTotal write SetValorTotal;

  End;

implementation

{ TCompra }



function TCompra.CalcDesconto: Double;
var
  xDesc: Double;
begin
  if (Fquantidade <=10) then
  Result := Fquantidade * FPreco
  Else if (Fquantidade >= 11) AND (FQuantidade <=50) then
  Result := (FQuantidade * FPreco) * 0.9
  else
  Result := (FQuantidade * FPreco) * 0.75
end;

function TCompra.desconto: String;
var
  xDesc1: String;
begin
  if (Fquantidade <10) then
  Result := 'Sem Desconto'
  Else if (Fquantidade >= 11) AND (FQuantidade <=50) then
  Result := '10%'
  else
  Result := '25%'
end;

procedure TCompra.SetNomeProduto(const Value: String);
begin
  FNomeProduto := Value;
end;

procedure TCompra.SetPreco(const Value: Double);
begin
FPreco := Value;
end;

procedure TCompra.SetQuantidade(const Value: Double);
begin
Fquantidade := Value;
end;

procedure TCompra.SetValorTotal(const Value: Double);
begin
fValorTotal := Value;
end;

function TCompra.valorSemDesconto: Double;
begin
Result := FPreco * FQuantidade;
end;


end.
