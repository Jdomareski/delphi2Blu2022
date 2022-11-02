unit ufrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmProdutos = class(TForm)
    DBNavigator1: TDBNavigator;
    DataSource: TDataSource;
    FDTable1: TFDTable;
    FDTable1Id: TFDAutoIncField;
    FDTable1Descricao: TStringField;
    FDTable1idUnidadeMedida: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    FDTableLookup: TFDTable;
    DataSource1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    FDTable1LookUpUnidadeMedida: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses Principal, udmPedidos;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FDTable1.close;

frmprodutos := nil;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
FDTable1.open;
FDTablelookup.open;
end;

end.
