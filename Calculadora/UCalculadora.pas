unit UCalculadora;

interface

Type
TOperacao = (opSomar, opSubtrair, opMultiplicar, opDividir);
TCalculadora = Class

Public

function somar(aNUm1, aNUm2 :Double): Double;
function subtrair(aNUm1, aNUm2 :Double): Double;
function multiplicar(aNUm1, aNUm2 :Double): Double;
function dividir(aNUm1, aNUm2 :Double): Double;



END;


implementation

{ TCalculadora }

function TCalculadora.dividir(aNUm1, aNUm2: Double): Double;
begin
result := aNum1 / aNum2
end;

function TCalculadora.multiplicar(aNUm1, aNUm2: Double): Double;
begin
result := aNum1 * aNum2
end;

function TCalculadora.somar(aNUm1, aNUm2: Double): Double;
begin
result := aNum1 + aNum2
end;

function TCalculadora.subtrair(aNUm1, aNUm2: Double): Double;
begin
result := aNum1 - aNum2
end;

end.
