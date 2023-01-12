unit UfrmRelUnidadeMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF;

type
  TfrmRelUnidadeMedida = class(TForm)
    LBFiltros: TLabel;
    LbDescr: TLabel;
    edtDescricao: TEdit;
    BtExp: TButton;
    DtVisu: TButton;
    GroupBox1: TGroupBox;
    FRX: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure DtVisuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtExpClick(Sender: TObject);
  private
    Procedure PrepararFiltro;

  public
    { Public declarations }
  end;

var
  frmRelUnidadeMedida: TfrmRelUnidadeMedida;

implementation

{$R *.dfm}

uses udmPedidos;

procedure TfrmRelUnidadeMedida.BtExpClick(Sender: TObject);
var
xCaminho :String;

begin
self.PrepararFiltro;

xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

if not DirectoryExists(xCaminho) then
ForceDirectories(xCaminho);

FrxPDFExport1.filename := Format('%s\UnidadeMedida.pdf', [xCaminho]);
FrxReport1.PrepareReport;
FrxReport1.Export(frxPDFExport1);


end;

procedure TfrmRelUnidadeMedida.DtVisuClick(Sender: TObject);
begin
  self.PrepararFiltro;
  frxReport1.Showreport;
end;

procedure TfrmRelUnidadeMedida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FRX.Close;

end;

procedure TfrmRelUnidadeMedida.PrepararFiltro;
begin
  FRX.Close;
  FRX.Parambyname('DESCRICAO').AsString := '';

  if Trim(edtDescricao.Text) <> EmptyStr then
    FRX.Parambyname('DESCRCAO').AsString := '%' + Trim(edtDescricao.Text) + '%';
  FRX.Open;

end;

end.
