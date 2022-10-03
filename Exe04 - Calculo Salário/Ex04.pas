unit Ex04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    frmLB_Titulo: TLabel;
    frmLB_NomeVendedor: TLabel;
    frmLB_SalárioFixo: TLabel;
    frmLB_VolVendas: TLabel;
    frmEdt_NomeVendedor: TEdit;
    frmEdt_SalarioFixo: TEdit;
    frmEdt_VolVendas: TEdit;
    frmBT_calcular: TButton;
    frmMem_Saida: TMemo;
    procedure frmBT_calcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frmBT_calcularClick(Sender: TObject);
var
  xNome : string;
  xSalfix : Double;
  xVolvend : Double;
  xComvend : Double;
  xPagar : Double;
begin
  xNome    := (frmEdt_NomeVendedor.Text);
  xSalFix  := strToInt(frmEdt_SalarioFixo.Text);
  xVolvend := strToInt(frmEdt_VolVendas.text);
  xComvend := (xVolvend * 15)/100;
  xPagar   := xSalFix + xComvend;

  frmMem_Saida.lines.add('O Vendedor ' + xNome + '.');
  frmMem_Saida.lines.add('Tem um salário fixo mensal de R$: ' + (xSalFix.ToString) + '.');
  frmMem_Saida.lines.add('E este mês, somando seu comissionamento, receberá R$:  ' + (xPagar.ToString) + '.');
end;

end.
