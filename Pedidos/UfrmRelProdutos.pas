unit UfrmRelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF;

type
  TfrmRelProdutos = class(TForm)
    GroupBox1: TGroupBox;
    LblFiltros: TLabel;
    LblDesc: TLabel;
    edtDescricao: TEdit;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    BTExportar: TButton;
    BtVisualizar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTExportarClick(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
  private
    Procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

{$R *.dfm}

uses udmPedidos;

{ TfrmRelProdutos }

procedure TfrmRelProdutos.BTExportarClick(Sender: TObject);
var
xCaminho :String;

begin
self.PrepararFiltro;

xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

if not DirectoryExists(xCaminho) then
ForceDirectories(xCaminho);

FrxPDFExport1.filename := Format('%s\Produtos.pdf', [xCaminho]);
FrxReport1.PrepareReport;
FrxReport1.Export(frxPDFExport1);


end;

procedure TfrmRelProdutos.BtVisualizarClick(Sender: TObject);
begin
 self.PrepararFiltro;
 frxReport1.Showreport;
end;

procedure TfrmRelProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelProdutos := nil;
end;

procedure TfrmRelProdutos.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.Parambyname('DESCRICAO').AsString := '';

  if Trim(edtDescricao.Text) <> EmptyStr then
    FDQuery1.Parambyname('DESCRCAO').AsString :=
      '%' + Trim(edtDescricao.Text) + '%';
  FDQuery1.Open;

end;

end.