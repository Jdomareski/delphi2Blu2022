unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TOperacoes = (TpSomar, TpSubtrair, TpDividir, TpMultiplicar);

  TfrmPrincipal = class(TForm)
    lblValor1: TLabel;
    lblValor2: TLabel;
    lblOperacao: TLabel;
    lblResultado: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    cmbOperacao: TComboBox;
    btnCalcular: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  xValor1, xValor2: Double;
begin
  if not TryStrToFloat(edtValor1.Text, xValor1) then
    raise Exception.Create('Primeiro Valor Inválido');

  if not TryStrToFloat(edtValor2.Text, xValor2) then
    raise Exception.Create('Segundo Valor Inválido');
  var
    xOperacao: String;
  case TOperacoes(cmbOperacao.ItemIndex) of

    TpSomar:
    xoperacao := 'Somar';
    TpSubtrair:
    xoperacao := 'Subtrair';
    TpMultiplicar:
    xoperacao := 'Multiplicar';
    TpDividir:
    xoperacao := 'Dividir';

  end;
  RestClient1

  format('ulr/%s/%s/%s', [xOperacao, edtValor1.Text, edtValor2.Text]);
end;

end.
