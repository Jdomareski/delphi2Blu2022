unit UCalculadorServiceDefault;

interface

uses UcalculadorService;

Type
  TCalculadorServiceDefault = class(TInterfacedObject, ICalculadorService)

     private

     public



    function Sum(aNum1, aNUm2: Double): Double;
    function Subtract(aNum1, aNUm2: Double): Double;
    function Multiply(aNum1, aNUm2: Double): Double;
    function Divide(aNum1, aNUm2: Double): Double;

  End;

implementation



{ TCalculadorServiceDefault }

function TCalculadorServiceDefault.Divide(aNum1, aNUm2: Double): Double;
begin
Result := aNum1/aNum2
end;

function TCalculadorServiceDefault.Multiply(aNum1, aNUm2: Double): Double;
begin
Result := aNum1 * aNum2
end;

function TCalculadorServiceDefault.Subtract(aNum1, aNUm2: Double): Double;
begin
Result := aNum1 - aNum2
end;

function TCalculadorServiceDefault.Sum(aNum1, aNUm2: Double): Double;
begin
Result := aNum1 + aNum2
end;

end.
