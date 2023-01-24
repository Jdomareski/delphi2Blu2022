unit TCalculadorServiceDefault;

interface

uses UcalculadorService;

Type
  TCalculadorServiceDefault = class(TInterfacedObject, ICalculadorService)

     private

     public
    function Sum(aNum1, aNUm2: Double): Double;
    function Subtract(aNum1, aNUm2: Double): Double;
    function Multiply(aNum1, aNUm2: Double): Double;
    function Dividem(aNum1, aNUm2: Double): Double;

  End;

implementation



{ TCalculadorServiceDefault }

function TCalculadorServiceDefault.Dividem(aNum1, aNUm2: Double): Double;
begin

end;

function TCalculadorServiceDefault.Multiply(aNum1, aNUm2: Double): Double;
begin

end;

function TCalculadorServiceDefault.Subtract(aNum1, aNUm2: Double): Double;
begin

end;

function TCalculadorServiceDefault.Sum(aNum1, aNUm2: Double): Double;
begin

end;

end.
