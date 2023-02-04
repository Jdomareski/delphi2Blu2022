// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:10000/wsdl/INew_One
// Version  : 1.0
// (03/02/2023 19:46:24 - - $Rev: 103843 $)
// ************************************************************************ //

unit INew_One1;

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
  // !:double          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:New_OneIntf-INew_One
  // soapAction: urn:New_OneIntf-INew_One#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : INew_Onebinding
  // service   : INew_Oneservice
  // port      : INew_OnePort
  // URL       : http://localhost:10000/soap/INew_One
  // ************************************************************************ //
  INew_One = interface(IInvokable)
  ['{888CF82F-1A26-A2DA-7026-2D6066A9E915}']
    function  somar(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
    function  Subtrair(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
    function  Dividir(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
    function  Multiplicar(const aNumero1: Double; const aNumero2: Double): Double; stdcall;
  end;

function GetINew_One(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): INew_One;


implementation
  uses System.SysUtils;

function GetINew_One(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): INew_One;
const
  defWSDL = 'http://localhost:10000/wsdl/INew_One';
  defURL  = 'http://localhost:10000/soap/INew_One';
  defSvc  = 'INew_Oneservice';
  defPrt  = 'INew_OnePort';
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
    Result := (RIO as INew_One);
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
  { INew_One }
  InvRegistry.RegisterInterface(TypeInfo(INew_One), 'urn:New_OneIntf-INew_One', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(INew_One), 'urn:New_OneIntf-INew_One#%operationName%');

end.