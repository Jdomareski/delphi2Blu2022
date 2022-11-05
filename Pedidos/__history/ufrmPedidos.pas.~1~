unit ufrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPedidos = class(TForm)
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1Id: TFDAutoIncField;
    FDTable1Numero: TLongWordField;
    FDTable1DataPedido: TDateField;
    FDTable1idComprador: TLongWordField;
    FDTable1idFornecedor: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSource2: TDataSource;
    FDTablelookupComprador: TFDTable;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    FDtableLookupFornecedor: TFDTable;
    FDTable2: TFDTable;
    FDTable3: TFDTable;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    FDTable2Id: TFDAutoIncField;
    FDTable2Quantidade: TFloatField;
    FDTable2idPedidoCompra: TLongWordField;
    FDTable2idProduto: TLongWordField;
    FDTablelookupCompradorId: TFDAutoIncField;
    FDTablelookupCompradorNome: TStringField;
    FDTablelookupCompradorCargo: TStringField;
    FDtableLookupFornecedorId: TFDAutoIncField;
    FDtableLookupFornecedorCNPJ: TStringField;
    FDtableLookupFornecedorNome: TStringField;
    FDTable2LookupProdutos: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDTable2BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses udmPedidos;

procedure TfrmPedidos.FDTable2BeforePost(DataSet: TDataSet);
begin
  FDTable2idPedidoCompra.AsInteger := FDTable1Id.AsInteger;
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := cafree;

FDtable2.close;
FDtable3.close;
FDtable1.close;
FDTablelookupComprador.close;
FDtableLookupFornecedor.close;

frmPedidos := nil;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
FDtable2.open;
FDtable3.open;
FDtable1.open;
FDTablelookupComprador.open;
FDtableLookupFornecedor.open;
end;

end.
