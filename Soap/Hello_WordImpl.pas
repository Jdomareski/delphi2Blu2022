{ Invokable implementation File for THello_Word which implements IHello_Word }

unit Hello_WordImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, Hello_WordIntf;

type

  { THello_Word }
  THello_Word = class(TInvokableClass, IHello_Word)
  public
    function echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function echoDouble(const Value: Double): Double; stdcall;
    function echoHelloWorld: String; stdcall;
  end;

implementation

function THello_Word.echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
begin
  { TODO : Implement method echoEnum }
  Result := Value;
end;



function THello_Word.echoHelloWorld: String;
begin
Result := 'Hello World';
end;

function echoHelloWorld(const Value: String): String; stdcall;
begin
Result := Value;
end;

function THello_Word.echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
begin
  { TODO : Implement method echoDoubleArray }
  Result := Value;
end;

function THello_Word.echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
begin
  { TODO : Implement method echoMyEmployee }
  Result := Value;
end;

function THello_Word.echoDouble(const Value: Double): Double; stdcall;
begin
  { TODO : Implement method echoDouble }
  Result := Value;
end;


initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(THello_Word);
end.

