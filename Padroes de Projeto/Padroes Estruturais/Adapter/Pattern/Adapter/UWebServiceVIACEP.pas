unit UWebServiceVIACEP;

interface

uses xml.XMLIntf, xml.XMLDoc, UInterfaceViaCep;

type
TWebServiceViaCep = Class(TinterfacedObject, IwebServiceViaCep)
  private
  FXMLDocument : IXMLDocument;

  Public
  Constructor create;
  destructor destroy; override;
  Procedure ConsultarEnderecoWebService(Const acep : String);
  Function ObterLogradouro: String;
  Function ObterBairro: String;
  Function ObterCidade: String;

End;

implementation
uses system.SysUtils, system.Variants;

{ TWebServiceViaCep }

procedure TWebServiceViaCep.ConsultarEnderecoWebService(const acep: String);
begin
 FXMLDocument.FileName := Format('https://viacep.com.br/ws/%s/xml/', [acep]);
 FXMLDocument.active := True;
end;

constructor TWebServiceViaCep.create;
begin
FXMLDocument := TXMLDocument.Create(nil);
end;

destructor TWebServiceViaCep.destroy;
begin
FXMLDocument := nil;
  inherited;
end;

function TWebServiceViaCep.ObterBairro: String;
begin
Result := varToStr(FXMLDocument.DocumentElement.ChildValues['bairro']);
end;

function TWebServiceViaCep.ObterCidade: String;
begin
Result := varToStr(FXMLDocument.DocumentElement.ChildValues['localidade']);
end;

function TWebServiceViaCep.ObterLogradouro: String;
begin
Result := varToStr(FXMLDocument.DocumentElement.ChildValues['logradouro']);
end;

end.
