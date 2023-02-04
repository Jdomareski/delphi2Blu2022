// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:9090/wsdl/IHello_Word
//  >Import : http://localhost:9090/wsdl/IHello_Word>0
// Version  : 1.0
// (03/02/2023 19:29:00 - - $Rev: 103843 $)
// ************************************************************************ //

unit IHello_Word1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  TMyEmployee          = class;                 { "urn:Hello_WordIntf"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "urn:Hello_WordIntf"[GblSmpl] }
  TEnumTest = (etNone, etAFew, etSome, etAlot);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : TMyEmployee, global, <complexType>
  // Namespace : urn:Hello_WordIntf
  // ************************************************************************ //
  TMyEmployee = class(TRemotable)
  private
    FLastName: string;
    FFirstName: string;
    FSalary: Double;
  published
    property LastName:  string  read FLastName write FLastName;
    property FirstName: string  read FFirstName write FFirstName;
    property Salary:    Double  read FSalary write FSalary;
  end;

  TDoubleArray = array of Double;               { "urn:Hello_WordIntf"[GblCplx] }

  // ************************************************************************ //
  // Namespace : urn:Hello_WordIntf-IHello_Word
  // soapAction: urn:Hello_WordIntf-IHello_Word#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IHello_Wordbinding
  // service   : IHello_Wordservice
  // port      : IHello_WordPort
  // URL       : http://localhost:9090/soap/IHello_Word
  // ************************************************************************ //
  IHello_Word = interface(IInvokable)
  ['{B169589C-69FC-40AD-0FF9-106D02A7A953}']
    function  echoEnum(const Value: TEnumTest): TEnumTest; stdcall;
    function  echoDoubleArray(const Value: TDoubleArray): TDoubleArray; stdcall;
    function  echoMyEmployee(const Value: TMyEmployee): TMyEmployee; stdcall;
    function  echoDouble(const Value: Double): Double; stdcall;
    function  echoHelloWorld: string; stdcall;
  end;

function GetIHello_Word(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IHello_Word;


implementation
  uses System.SysUtils;

function GetIHello_Word(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IHello_Word;
const
  defWSDL = 'http://localhost:9090/wsdl/IHello_Word';
  defURL  = 'http://localhost:9090/soap/IHello_Word';
  defSvc  = 'IHello_Wordservice';
  defPrt  = 'IHello_WordPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IHello_Word);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { IHello_Word }
  InvRegistry.RegisterInterface(TypeInfo(IHello_Word), 'urn:Hello_WordIntf-IHello_Word', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IHello_Word), 'urn:Hello_WordIntf-IHello_Word#%operationName%');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TEnumTest), 'urn:Hello_WordIntf', 'TEnumTest');
  RemClassRegistry.RegisterXSClass(TMyEmployee, 'urn:Hello_WordIntf', 'TMyEmployee');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TDoubleArray), 'urn:Hello_WordIntf', 'TDoubleArray');

end.