unit Uclasse_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmFechamento = class(TForm)
    LblQtd: TLabel;
    LblVlrUnt: TLabel;
    LblVlrSemDesc: TLabel;
    LblDesc: TLabel;
    LblVlrPagar: TLabel;
    LblResult: TLabel;
    EdtQtd: TEdit;
    EdtVlrUnt: TEdit;
    LblTot1: TLabel;
    LblPctDesc: TLabel;
    BTCalcular: TButton;
    LblNome: TLabel;
    procedure BTCalcularClick(Sender: TObject);
    procedure coletadados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechamento: TFrmFechamento;

implementation

{$R *.dfm}

uses Uclasse;

procedure TFrmFechamento.BTCalcularClick(Sender: TObject);
begin
  coletadados;
end;

procedure TFrmFechamento.coletadados;
var
  xNomeProduto: String;
  xQuantidade, XPreco, xValorTotal: Double;
  xCompra: TCompra;

begin
  try
    xCompra := TCompra.Create;

    xCompra.NomeProduto := inputBox('Nome do Produto',
      'Digite o nome do produto que quer comprar', '');
    LblNome.Caption := xCompra.NomeProduto;

    xCompra.Quantidade := strTofloat(EdtQtd.Text);
    xCompra.Preco := strTofloat(EdtVlrUnt.Text);
    LblTot1.Caption := xCompra.valorSemDesconto.ToString;
    LblPctDesc.Caption := xCompra.desconto;
    LblResult.Caption := xCompra.CalcDesconto.ToString;
    LblResult.Visible := True;
  finally

  freeandnil(Xcompra);
  end;
end;

end.