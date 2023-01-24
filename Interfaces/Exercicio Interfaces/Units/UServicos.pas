unit UServicos;

interface

uses UcalculadorService, UCalculadorServiceDefault;

Type
  TTypeCalc = (tpSum, tpSub, tpMul, TpDiv);

  TCalculadora = Class
  Private
    FNum1: Double;
    FNum2: Double;
    Fservico: ICalculadorService;

  Public
    function ProcessCalc(aTypeCalc: TTypeCalc): Double;
    Constructor Create(const aNum1, aNUm2: Double;
      aServico: ICalculadorService);
    Destructor Destroy;

  End;

implementation

{ TCalculadora }

destructor TCalculadora.Destroy;
begin
  Inherited
end;

function TCalculadora.ProcessCalc(aTypeCalc: TTypeCalc): Double;

begin
  case aTypeCalc of
    tpSum:
      Result := Fservico.Sum(FNum1, FNum2);
    tpSub:
      Result := Fservico.Subtract(FNum1, FNum2);
    tpMul:
      Result := Fservico.Multiply(FNum1, FNum2);
    TpDiv:
      Result := Fservico.Divide(FNum1, FNum2);
  end;

end;

{ TCalculadora }

constructor TCalculadora.Create(const aNum1, aNUm2: Double;
  aServico: ICalculadorService);
begin
  FNum1 := aNum1;
  FNum2 := aNUm2;
  Fservico := aServico;
end;

end.
