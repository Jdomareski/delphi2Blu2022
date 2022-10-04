unit Exe22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BT_registrar: TButton;
    LB_TCusto: TLabel;
    LB_TValor: TLabel;
    LB_TQtd: TLabel;
    T�tulo: TLabel;
    MMBreg: TMemo;
    procedure BT_registrarClick(Sender: TObject);
  private
   procedure Registro;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BT_registrarClick(Sender: TObject);
begin
registro;
end;

procedure TForm1.Registro;
var
  xQTD, I: Integer;
  xPreVenda : currency;
  xPreCusto : Currency;
  xPm : Currency;
  xCm : Currency;
  xresultado : string;
begin
      xPm := 0;
      xCm := 0;
      xQtd := strToInt(inputbox('Quantidade de Vendas', 'Insira a quantidade de vendas do dia', '0'));
    for I := 0 to xQTD -1 do
    begin

      xPreVenda := strToInt(inputbox('Pre�o de Venda', 'O pre�o de venda deste produto', '0'));
      xPreCusto := strToInt(inputbox('Pre�o de Custo', 'Insira o pre�o de custo deste produto', '0'));
      xPm := (xPreVenda + xpm);
      xCm := (xPreCusto + xCm);

      if xPrevenda > xPreCusto then
          xresultado := 'Lucro'

      else if xprevenda = xprecusto then
          xresultado := 'Empate'

          else
          xResultado := 'Preju�zo';

         MMBreg.lines.add('Pre�o de venda = R$  ' + floatToStr(xPreVenda));
         MMBreg.lines.add('Pre�o de custo = R$  ' + floatToStr(xPrecusto));
         MMBreg.lines.add('Resultado Venda ' +xresultado);
         MMBreg.lines.add(' ' );
    end;
    xPm := xPm /xQTD ;
    xCm := xCm /xQTD ;

    LB_TCusto.Caption := ('Custo M�dio dos Produtos Vendidos:   ' + currToStr(xCm));
    LB_TValor.Caption := ('Pre�o M�dio dos Produtos Vendidos:   ' + currToStr(xPm));
end;


end.
