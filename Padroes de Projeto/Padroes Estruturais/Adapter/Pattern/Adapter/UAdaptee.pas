unit UAdaptee;

interface

uses UWebServiceCorreios, System.Classes;

Type
  TWebServiceCorreios = Class
  Private
    FParametros: Consultacep;
    FResposta: EnderecoERP;

    procedure beforeexecute(const aMethodName: String; aSOAPRequest: TStream);

  public
    Destructor Destroy; override;
    Procedure definirparametrosconsulta(Const acep: String);
    Procedure ConsultarCEP;
    Function ObterResposta(const aInformacao: String): String;
  End;

implementation

uses
Soap.SOAPHTTPClient, system.SysUtils;

{ TWebServiceCorreios }

procedure TWebServiceCorreios.beforeexecute(const aMethodName: String;
  aSOAPRequest: TStream);
  var
  xRequest : TStringList;
begin
xRequest := TStringList.create;
try

xRequest.Text :=
      '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/">' +
      '  <soapenv:Header/>' +
      '    <soapenv:Body>' +
      '      <cli:consultaCEP>' +
      '        <cep>'  +  FParametros.cep  +  '</cep>' +
      '      </cli:consultaCEP>' +
      '    </soapenv:Body>' +
      '</soapenv:Envelope>';

     aSOAPRquest.Position := 0;
      aSOAPRquest.Size := := Length(xRequest.Text);
      xRequest.SaveToStream(ASOAPRequest);


finally

end;

procedure TWebServiceCorreios.ConsultarCEP;
begin

end;

procedure TWebServiceCorreios.definirparametrosconsulta(const acep: String);
begin

end;

destructor TWebServiceCorreios.Destroy;
begin

  inherited;
end;

function TWebServiceCorreios.ObterResposta(const aInformacao: String): String;
begin

end;

end.
