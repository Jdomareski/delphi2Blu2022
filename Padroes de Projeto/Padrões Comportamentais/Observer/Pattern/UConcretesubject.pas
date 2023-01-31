unit UConcretesubject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Generics.Collections, UNOtificacao, UObserver;

type
  TFraCadastro = class(TFrame)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnGravar: TButton;
    CmbOperacao: TComboBox;
    CmbCategoria: TComboBox;
    EdtValor: TEdit;
    Shape1: TShape;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ClientDataSet1Opera��o: TStringField;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Valor: TCurrencyField;
    procedure BtnGravarClick(Sender: TObject);
    procedure CmbOperacaoChange(Sender: TObject);

  private
    { Private declarations }
    Fobservers: Tlist<Iobserver>;
    Procedure Notificar;
    Procedure CarregarCategorias;
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;

    procedure adicionarObserver(aObserver: Iobserver);
    Procedure RemoverObserver(aObserver: Iobserver);
  end;

implementation

{$R *.dfm}
{ TFraCadastro }

procedure TFraCadastro.adicionarObserver(aObserver: Iobserver);
begin
  Fobservers.Add(aObserver);

end;

procedure TFraCadastro.BtnGravarClick(Sender: TObject);
begin
  // Adiciona um registro no dtaset conforme valores informados pelo usu�rio
  ClientDataSet1.AppendRecord([CmbOperacao.text, CmbCategoria.text,
    strToFloatDef(EdtValor.text, 0)]);

  // Chama o metodo de notifica��o
  self.Notificar;

  end;

  procedure TFraCadastro.CarregarCategorias; begin CmbCategoria.Clear;

  case CmbOperacao.ItemIndex of
  0:
  begin
  CmbCategoria.items.Add('Sal�rio');
  CmbCategoria.items.Add('13');
  CmbCategoria.items.Add('Restitui��o do IR');
  CmbCategoria.items.Add('Freelancing');
  end;
  1:
  begin
  CmbCategoria.items.Add('Aluguel');
  cmbCategoria.items.Add('Supermercado');
  cmbCategoria.items.Add('Farm�cia');
  cmbCategoria.items.Add('Escola');
  cmbCategoria.items.Add('Combust�vel');
  cmbCategoria.items.Add('Alimenta��o');
  cmbCategoria.items.Add('Roupas');
  cmbCategoria.items.Add('Viagens');

  end;

  end;

  end;

  procedure TFraCadastro.CmbOperacaoChange(Sender: TObject);
begin
Self.CarregarCategorias;
end;

constructor TFraCadastro.Create(AOwner: TComponent);
  begin
  inherited;
  Fobservers := Tlist<IObserver>.Create;
  end;

  destructor TFraCadastro.Destroy;
  begin
  inherited;
  Fobservers.Free;
  end;

  procedure TFraCadastro.Notificar;
  var
  xNotificacao : TNotificacao;
  xObserver : IObserver;
  begin
  xNotificacao.Operacao := ClientDataSet1.FieldByName('Opera��o') .AsString;
  xNotificacao.Categoria := ClientDataSet1.FieldByName('Categoria') .AsString;
    xNotificacao.Valor := ClientDataSet1.FieldByName('Valor') .AsFloat;

    for xObserver in FObservers do
      begin
        xObserver.Atualizar(xNotificacao);
      end;

  end;

  procedure TFraCadastro.RemoverObserver(aObserver: Iobserver);
  begin
  FObservers.Delete(FObservers.IndexOf(aObserver));

  end;

  end.
