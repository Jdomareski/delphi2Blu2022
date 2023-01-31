unit UTarget;

interface

uses
  UInterfaceViaCEP, System.Classes;

type
  TComunicator = class

  private
    FWebServiceViaCep: IWebServiceVIaCEP;

  Public
    Constructor Create(aWebServiceViaCep: IWebServiceVIaCEP);
    Destructor Destroy; override;

    Function ConsultarEndereco(Const acep: String): TStringList;
  end;

implementation

Function TComunicator.ConsultarEndereco(const acep: string): TStringList;
var
  xdados: TStringList;

begin
  FWebServiceViaCep.ConsultarEnderecoWebService(acep);

  xdados := TStringList.Create;
  xdados.values['Logradouro'] := FWebServiceViaCep.ObterLogradouro;
  xdados.values['Bairro'] := FWebServiceViaCep.ObterBairro;
  xdados.values['Cidade'] := FWebServiceViaCep.ObterCidade;

  Result := xdados;
end;

constructor TComunicator.Create(aWebServiceViaCep: IWebServiceVIaCEP);
begin
  FWebServiceViaCep := aWebServiceViaCep;
end;

destructor TComunicator.Destroy;
begin
  FWebServiceViaCep := nil;
  inherited;
end;

end.
