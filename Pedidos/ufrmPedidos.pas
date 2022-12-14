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
    DtsPedidodeCompra: TDataSource;
    PedidoCompra: TFDTable;
    PedidoCompraId: TFDAutoIncField;
    PedidoCompraNumero: TLongWordField;
    PedidoCompraDataPedido: TDateField;
    PedidoCompraidComprador: TLongWordField;
    PedidoCompraidFornecedor: TLongWordField;
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
    LookUpComprador: TDataSource;
    FDTLookUpComprador: TFDTable;
    DBLookUpFornecedor: TDataSource;
    DBItensCompra: TDataSource;
    FDtableLookupFornecedor: TFDTable;
    FDTItemCompra: TFDTable;
    FDTProdutos: TFDTable;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    FDTItemCompraId: TFDAutoIncField;
    FDTItemCompraQuantidade: TFloatField;
    FDTItemCompraidPedidoCompra: TLongWordField;
    FDTItemCompraidProduto: TLongWordField;
    FDTLookUpCompradorId: TFDAutoIncField;
    FDTLookUpCompradorNome: TStringField;
    FDTLookUpCompradorCargo: TStringField;
    FDtableLookupFornecedorId: TFDAutoIncField;
    FDtableLookupFornecedorCNPJ: TStringField;
    FDtableLookupFornecedorNome: TStringField;
    FDTItemCompraLookupProdutos: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDTItemCompraBeforePost(DataSet: TDataSet);
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

procedure TfrmPedidos.FDTItemCompraBeforePost(DataSet: TDataSet);
begin
FDTItemCompraidPedidoCompra.AsInteger := PedidoCompraId.AsInteger;

end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := cafree;

PedidoCompra.close;
FDTProdutos.close;
FDTItemCompra.close;
FDTLookUpComprador.close;
FDtableLookupFornecedor.close;

frmPedidos := nil;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
PedidoCompra.open;
FDTProdutos.open;
FDTItemCompra.open;
FDTLookUpComprador.open;
FDtableLookupFornecedor.open;
end;

end.
