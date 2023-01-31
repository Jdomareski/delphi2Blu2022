unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UInterfaceViaCEP, UTarget,
  UWebServiceCorreios, UWebServiceVIACEP;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    LblBairro: TLabel;
    LblLogradouro: TLabel;
    LblCidade: TLabel;
    BtnConsultar: TButton;
    Button1: TButton;
    EdtCEP: TEdit;
    procedure BtnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.BtnConsultarClick(Sender: TObject);
var
  xWebServiceViaCep: IWebServiceViaCep;
  xComunicador: TComunicator;
  xRetorno: TStringlist;

begin
  // Instancia o objeto da classe consulta.
  xWebServiceViaCep := TWebServiceViaCep.create;
  // Instancia o comunicador (Target), injetando o objeto de consulta.
  xComunicador := TComunicator.create(xWebServiceViaCep);

  xRetorno := TStringlist.create;

  Try
    // o Target Consulta o Endereço utilizando o objeto injetado e retorna os dados

    xRetorno := xComunicador.ConsultarEndereco(EdtCEP.text);
    LblLogradouro.Caption := xRetorno.Values['Logradouro'];
    LblBairro.Caption := xRetorno.Values['Bairro'];
    LblCidade.Caption := xRetorno.Values['Cidade'];

  Finally
    freeAndNil(xRetorno);
    freeAndNil(xComunicador);

  End;

end;

end.
