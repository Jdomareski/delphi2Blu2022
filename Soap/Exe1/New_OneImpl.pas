{ Invokable implementation File for TNew_One which implements INew_One }

unit New_OneImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, sysUtils, New_OneIntf;

type

  { TNew_One }
  TNew_One = class(TInvokableClass, INew_One)
  public
   function somar(aNumero1, aNumero2: Double): Double; StdCall;
   function Subtrair(aNumero1, aNumero2: Double): Double; StdCall;
   function Dividir(aNumero1, aNumero2: Double): Double; StdCall;
   function Multiplicar(aNumero1, aNumero2: Double): Double; StdCall;
  end;

implementation




{ TNew_One }

function TNew_One.Dividir(aNumero1, aNumero2: Double): Double;
begin
if (aNumero2 = 0) then
raise
exception.create('Imposs�vel efetuar divis�o por zero');

Result := aNumero1/aNumero2
end;


function TNew_One.Multiplicar(aNumero1, aNumero2: Double): Double;
begin
result := aNumero1 * aNumero2;
end;

function TNew_One.somar(aNumero1, aNumero2: Double): Double;
begin
Result := aNumero1 + aNumero2;
end;

function TNew_One.Subtrair(aNumero1, aNumero2: Double): Double;
begin
Result := aNumero1 - aNumero2;
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TNew_One);
end.

