unit UExe_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet;

type
  TfrmRelFilmes = class(TForm)
    LblFiltros: TLabel;
    LblFilmes: TLabel;
    CMBAtor: TDBLookupComboBox;
    BtExportar: TButton;
    BTVisualizar: TButton;
    QryAtor: TFDTable;
    DTSAtor: TDataSource;
    QryFilmes: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
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
  frmRelFilmes: TfrmRelFilmes;

implementation

{$R *.dfm}

uses UDMSakila;

procedure TfrmRelFilmes.BtExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.filename := Format('%s\Filmes Por Ator.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelFilmes.BTVisualizarClick(Sender: TObject);
begin
  self.PrepararFiltro;
  frxReport1.Showreport;
end;

procedure TfrmRelFilmes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  QryFilmes.Close;
  QryAtor.Close;
  frmRelFilmes := nil;
end;

procedure TfrmRelFilmes.FormCreate(Sender: TObject);
begin
  QryAtor.open;
end;

procedure TfrmRelFilmes.PrepararFiltro;
begin
  QryFilmes.Close;
  QryFilmes.paramByname('Actor_id').AsInteger := 0;

  if CMBAtor.text <> EmptyStr then
    QryFilmes.paramByname('ACTOR_ID').AsInteger :=
      QryAtor.FieldByname('ACTOR_ID').AsInteger;

end;

end.
