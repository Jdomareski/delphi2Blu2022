unit UfrmCompradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass,
  frxExportBaseDialog, frxExportPDF, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, frxDBSet;

type
  TFrmRelCompradores = class(TForm)
    GroupBox1: TGroupBox;
    LblFiltos: TLabel;
    LblDesc: TLabel;
    EdtCompradores: TEdit;
    BtExportar: TButton;
    BtVisualizar: TButton;
    FDQuery1: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure BtExportarClick(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     Procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  FrmRelCompradores: TFrmRelCompradores;

implementation

{$R *.dfm}

uses udmPedidos;

procedure TFrmRelCompradores.BtExportarClick(Sender: TObject);
var
xCaminho :String;

begin
self.PrepararFiltro;

xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

if not DirectoryExists(xCaminho) then
ForceDirectories(xCaminho);

FrxPDFExport1.filename := Format('%s\Compradores.pdf', [xCaminho]);
FrxReport1.PrepareReport;
FrxReport1.Export(frxPDFExport1);

end;

procedure TFrmRelCompradores.BtVisualizarClick(Sender: TObject);
begin
self.PrepararFiltro;
frxReport1.Showreport;
end;

procedure TFrmRelCompradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelCompradores := nil;
end;

procedure TFrmRelCompradores.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.Parambyname('CARGO').AsString := '';

  if Trim(edtCompradores.Text) <> EmptyStr then
    FDQuery1.Parambyname('CARGO').AsString :=
      '%' + Trim(edtCompradores.Text) + '%';
  FDQuery1.Open;
end;

end.
