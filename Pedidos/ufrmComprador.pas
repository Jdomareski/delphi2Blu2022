unit ufrmComprador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCompradores = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    FDTable: TFDTable;
    FDTableId: TFDAutoIncField;
    FDTableNome: TStringField;
    FDTableCargo: TStringField;
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
  frmCompradores: TfrmCompradores;

implementation

{$R *.dfm}

uses udmPedidos;

procedure TfrmCompradores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FDTable.close;

frmCompradores := nil;
end;

procedure TfrmCompradores.FormCreate(Sender: TObject);
begin
FDTable.open;
end;

end.
