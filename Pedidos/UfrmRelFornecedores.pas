unit UfrmRelFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFrmRelFornecedores = class(TForm)
    LbFiltros: TLabel;
    LblDescrição: TLabel;
    EdtFornecedores: TEdit;
    BtExportar: TButton;
    BtVisualizar: TButton;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtExportarClick(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
  private
   Procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  FrmRelFornecedores: TFrmRelFornecedores;

implementation

{$R *.dfm}

uses ufrmProdutos, udmPedidos;

{ TFrmRelFornecedores }

procedure TFrmRelFornecedores.BtExportarClick(Sender: TObject);
var
xCaminho :String;

begin
self.PrepararFiltro;

xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

if not DirectoryExists(xCaminho) then
ForceDirectories(xCaminho);

FrxPDFExport1.filename := Format('%s\Fornecedores.pdf', [xCaminho]);
FrxReport1.PrepareReport;
FrxReport1.Export(frxPDFExport1);


end;

procedure TFrmRelFornecedores.BtVisualizarClick(Sender: TObject);
begin
 self.PrepararFiltro;
 frxReport1.Showreport;
end;

procedure TFrmRelFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);

begin
 Action := caFree;
  FDQuery1.Close;

  frmRelFornecedores := nil;
end;

procedure TFrmRelFornecedores.PrepararFiltro;
begin
FDQuery1.Close;
  FDQuery1.Parambyname('NOME').AsString := '';

  if Trim(edtFornecedores.Text) <> EmptyStr then
    FDQuery1.Parambyname('NOME').AsString :=
      '%' + Trim(edtFornecedores.Text) + '%';

  FDQuery1.Open;
end;

end.
