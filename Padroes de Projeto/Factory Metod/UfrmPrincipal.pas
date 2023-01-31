unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UFabricaPrazos,
  UPrazoAnual, UPrazoMensal, UTipoPrazo;

type
  TForm1 = class(TForm)
    LblTit1: TLabel;
    LblParcelas: TLabel;
    LblTit3: TLabel;
    edtValor: TEdit;
    edtQtdParcelas: TEdit;
    CMBPrazoPagamento: TComboBox;
    BtnGerar: TButton;
    mmresultado: TMemo;
    procedure BtnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnGerarClick(Sender: TObject);
var
xTipoPrazo : ItipoPrazo;
xFactoryMethod : IFactoryMethod;
begin
  xFactoryMethod := TFabricaPrazos.Create;

  xTipoPrazo := xFactoryMethod.ConsultarPrazo(CMBPrazoPagamento.Items[CMBPrazoPagamento.ItemIndex]);

  mmresultado.Lines.Clear;

  mmresultado.lines.add(xTipoPrazo.ConsultarDescricao);
  mmresultado.lines.add(xTipoPrazo.ConsultarJuros);
  mmresultado.lines.add(xTipoPrazo.ConsultarProjecao(StrToFloat(edtValor.Text), strToInt(edtQtdParcelas.Text)));
  mmresultado.lines.add(xTipoPrazo.ConsultarTotal);
end;

end.
