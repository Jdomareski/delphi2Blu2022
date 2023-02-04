unit UCalculadoraService;

interface

uses Ucalculadora;

Type
  TCalculadora = class(TINterfacedObject, ICalculadora)

    function somar(anum1, anum2: Double): Double;
    function Subtrair(anum1, anum2: Double): Double;
    function Dividir(anum1, anum2: Double): Double;
    function Multiplicar(anum1, anum2: Double): Double;
  end;

implementation

{ TCalculadoraService }


{ TCalculadora }

function TCalculadora.Dividir(anum1, anum2: Double): Double;
begin
Result := anum1 / anum2;
end;

function TCalculadora.Multiplicar(anum1, anum2: Double): Double;
begin
Result := anum1 * anum2;
end;

function TCalculadora.somar(anum1, anum2: Double): Double;
begin
Result := anum1 + anum2;
end;

function TCalculadora.Subtrair(anum1, anum2: Double): Double;
begin
Result := anum1 - anum2;
end;

end.
