unit ufrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmFornecedores = class(TForm)
    DataSource: TDataSource;
    FDTable: TFDTable;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    FDTableId: TFDAutoIncField;
    FDTableCNPJ: TStringField;
    FDTableNome: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses udmPedidos;

procedure TfrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FDTable.close;

frmFornecedores := nil;
end;

procedure TfrmFornecedores.FormCreate(Sender: TObject);
begin
FDTable.open;
end;


end.
