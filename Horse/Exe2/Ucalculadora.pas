unit Ucalculadora;

interface

Type
  ICalculadora = Interface
    ['{BFB1F694-78F0-48E8-BA56-A34C1C4EE133}']

    function somar(anum1, anum2: Double): Double;
    function Subtrair(anum1, anum2: Double): Double;
    function Dividir(anum1, anum2: Double): Double;
    function Multiplicar(anum1, anum2: Double): Double;
  End;

implementation

end.
