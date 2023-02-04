unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, INew_One1;

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
    raise Exception.Create('Primeiro Valor Inv�lido');

  if not TryStrToFloat(edtValor2.Text, xValor2) then
    raise Exception.Create('Segundo Valor Inv�lido');

  case TOperacoes(cmbOperacao.ItemIndex) of

    TpSomar:
      lblResultado.Caption := 'Resultado:  ' +  GetINew_One.somar(xValor1, xValor2).ToString;

    TpSubtrair:
      lblResultado.Caption := 'Resultado:  ' +  GetINew_One.subtrair(xValor1, xValor2).ToString;
    TpMultiplicar:
      lblResultado.Caption := 'Resultado:  ' +  GetINew_One.Multiplicar(xValor1, xValor2)
        .ToString;
    TpDividir:
      lblResultado.Caption := 'Resultado:  ' +  GetINew_One.Dividir(xValor1, xValor2).ToString;
  end;

end;

end.