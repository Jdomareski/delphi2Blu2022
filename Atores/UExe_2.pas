unit UExe_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, Vcl.DBCtrls;

type
  TfrmRelCidades = class(TForm)
    LblFiltros: TLabel;
    LblCidades: TLabel;
    GroupBox1: TGroupBox;
    BtExportar: TButton;
    BTVisualizar: TButton;
    QryCidades: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    DtsLookUpCidades: TDataSource;
    cmbcidade: TDBLookupComboBox;
    qrylookupcdades: TFDTable;
    procedure FormCreate(Sender: TObject);
    procedure BtExportarClick(Sender: TObject);
    procedure BTVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelCidades: TfrmRelCidades;

implementation

{$R *.dfm}

uses UDMSakila;

procedure TfrmRelCidades.BtExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.filename := Format('%s\Cidades.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelCidades.BTVisualizarClick(Sender: TObject);
begin
  self.PrepararFiltro;
  frxReport1.Showreport;
end;

procedure TfrmRelCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;

  QryCidades.Close;
  qrylookupcdades.Close;
  frmRelcidades := nil;
end;

procedure TfrmRelCidades.FormCreate(Sender: TObject);
begin
  qrylookupcdades.open;
end;

procedure TfrmRelCidades.PrepararFiltro;
begin
  QryCidades.close;
  QryCidades.paramByname('CITY_ID').AsInteger := 0;
  QryCidades.paramByname('CITY_ID').AsInteger := 0;

  if cmbcidade.text <> EmptyStr then
    QryCidades.paramByname('CITY_ID').AsInteger :=
      qrylookupcdades.FieldByname('CITY_ID').AsInteger;

end;

end.
