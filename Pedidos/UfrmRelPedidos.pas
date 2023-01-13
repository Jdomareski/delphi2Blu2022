unit UfrmRelPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmRelPedidos = class(TForm)
    LbFiltros: TLabel;
    LblComprador: TLabel;
    LblFornecedor: TLabel;
    GroupBox1: TGroupBox;
    BtnExportar: TButton;
    BtnVisualizar: TButton;
    DBLookupComprador: TDBLookupComboBox;
    DBLookUpFornecedor: TDBLookupComboBox;
    DtsLookupComprador: TDataSource;
    dtsLookupFornecedor: TDataSource;
    LookupComprador: TFDTable;
    LookupFornecedor: TFDTable;
    QryPedido: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    QRYItemCompra: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    DtsPedido: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BtnExportarClick(Sender: TObject);
  private
    Procedure PrepararFiltro;

  public
    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}

uses udmPedidos;

procedure TfrmRelPedidos.BtnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.filename := Format('%s\Pedidos.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelPedidos.BtnVisualizarClick(Sender: TObject);
begin
  self.PrepararFiltro;
  frxReport1.Showreport;
end;

procedure TfrmRelPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  // QryPedido.Close;
  // QryItemCompra;

  LookupComprador.Close;
  LookupFornecedor.Close;
  frmRelPedidos := nil;

end;

procedure TfrmRelPedidos.FormCreate(Sender: TObject);
begin
  LookupComprador.open;
  LookupFornecedor.open;

end;

procedure TfrmRelPedidos.PrepararFiltro;
begin
 QryPedido.close;
 QryPedido.paramByname('IDCOMPRADOR').AsInteger :=0;
 QryPedido.paramByname('IDFORNECEDOR').AsInteger :=0;

 if DBLookupComprador.text <> EmptyStr  then
 QRYPedido.paramByname('IDCOMPRADOR').AsInteger := LookupComprador.FieldByname('ID').AsInteger;

 if DBLookupFornecedor.text <> EmptyStr  then
 QRYPedido.paramByname('IDFORNECEDOR').AsInteger := LookupComprador.FieldByname('ID').AsInteger;

end;

end.
