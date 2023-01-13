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
    EdtNomeAtor: TEdit;
    GroupBox1: TGroupBox;
    BtExportar: TButton;
    BtVisualizar: TButton;
    QryNomeAtor: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelNomeAtor: TfrmRelNomeAtor;

implementation

{$R *.dfm}

uses UDMSakila;

end.
