unit UConcreteObserver_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.StdCtrls, UNOtificacao, UObserver;

type
  TFraHistorico = class(TFrame, IObserver)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1categoria: TStringField;
    ClientDataSet1Total: TCurrencyField;
    DataSource1: TDataSource;

  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}
{ TFraHistorico }

procedure TFraHistorico.Atualizar(aNotificacao: TNotificacao);
begin
  if aNotificacao.Operacao = 'Crédito' then
    Exit;
  // Encontra a categoria de débito para somar o valor

  if ClientDataSet1.Locate('Categoria', aNotificacao.Categoria, []) then
  begin
    ClientDataSet1.Edit;

    ClientDataSet1.FieldByName('Total').AsFloat :=
      ClientDataSet1.FieldByName('Total').AsFloat + aNotificacao.Valor;
    ClientDataSet1.Post;

    Exit;

  end;
  //Cadastra a categoria caso ela ainda não exista no grupamento
  ClientDataSet1.AppendRecord([aNotificacao.Categoria, aNotificacao.Valor]);
end;

end.
