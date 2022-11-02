unit ufrmUnidadeMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TfrmUnidadeMedida = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1Id: TFDAutoIncField;
    FDTable1Descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnidadeMedida: TfrmUnidadeMedida;

implementation

{$R *.dfm}

uses udmPedidos;

procedure TfrmUnidadeMedida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.close;

  frmUnidadeMedida := nil;
end;

procedure TfrmUnidadeMedida.FormCreate(Sender: TObject);
begin
  FDTable1.open;
end;

end.
