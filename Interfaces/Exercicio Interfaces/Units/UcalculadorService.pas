unit UcalculadorService;

interface

Type
  ICalculadorService = interface
    ['{365292ED-0B77-4CB3-91A5-D39582248568}']

    function Sum(aNum1, aNUm2: Double): Double;
    function Subtract(aNum1, aNUm2: Double): Double;
    function Multiply(aNum1, aNUm2: Double): Double;
    function Divide(aNum1, aNUm2: Double): Double;

  End;

implementation

end.
