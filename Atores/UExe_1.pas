unit UExe_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelNomeAtor = class(TForm)
    LBFiltros: TLabel;
    LblNome: TLabel;
    GroupBox1: TGroupBox;
    BtExportar: TButton;
    BtVisualizar: TButton;
    QryNomeAtor: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    edtAtor: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtExportarClick(Sender: TObject);
    procedure BtVisualizarClick(Sender: TObject);
  private
    procedure prepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelNomeAtor: TfrmRelNomeAtor;

implementation

{$R *.dfm}

uses UDMSakila, UAtores;

procedure TfrmRelNomeAtor.BtExportarClick(Sender: TObject);
var
xCaminho :String;

begin
self.PrepararFiltro;

xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

if not DirectoryExists(xCaminho) then
ForceDirectories(xCaminho);

FrxPDFExport1.filename := Format('%s\Nome_Ator.pdf', [xCaminho]);
FrxReport1.PrepareReport;
FrxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelNomeAtor.BtVisualizarClick(Sender: TObject);
begin
self.PrepararFiltro;
frxReport1.Showreport;
end;

procedure TfrmRelNomeAtor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
frmRelNomeAtor.Close;

end;

procedure TfrmRelNomeAtor.prepararFiltro;

begin
QryNomeAtor.Close;
QryNomeAtor.Parambyname('SOBRENOME').AsString := '';

  if Trim(edtAtor.Text) <> EmptyStr then
QryNomeAtor.Parambyname('SOBRENOME').AsString := '%' + Trim(edtAtor.Text) + '%';
QryNomeAtor.Open;
end;

end.