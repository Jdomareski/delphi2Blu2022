{ Invokable interface INew_One }

unit New_OneIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  TEnumTest = (etNone, etAFew, etSome, etAlot);

  TDoubleArray = array of Double;

  TMyEmployee = class(TRemotable)
  private
    FLastName: UnicodeString;
    FFirstName: UnicodeString;
    FSalary: Double;
  published
    property LastName: UnicodeString read FLastName write FLastName;
    property FirstName: UnicodeString read FFirstName write FFirstName;
    property Salary: Double read FSalary write FSalary;
  end;

  { Invokable interfaces must derive from IInvokable }
  INew_One = interface(IInvokable)
  ['{924FFE72-317F-4178-9AD3-EF62252EDD59}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
   function somar(aNumero1, aNumero2: Double): Double; StdCall;
   function Subtrair(aNumero1, aNumero2: Double): Double; StdCall;
   function Dividir(aNumero1, aNumero2: Double): Double; StdCall;
   function Multiplicar(aNumero1, aNumero2: Double): Double; StdCall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(INew_One));

end.
