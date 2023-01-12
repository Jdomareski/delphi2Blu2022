unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Compradores: TLabel;
    Fornecedores: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image6: TImage;
    Image7: TImage;
    PopupMenu1: TPopupMenu;
    Label4: TLabel;
    Produtos1: TMenuItem;
    Compradores1: TMenuItem;
    Fornecedores1: TMenuItem;
    UnMedida1: TMenuItem;
    Pedidos1: TMenuItem;
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure UnMedida1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Compradores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses ufrmComprador, ufrmFornecedor, ufrmProdutos, ufrmUnidadeMedida,
  ufrmPedidos, UfrmRelUnidadeMedida, UfrmRelProdutos, UfrmCompradores;

procedure TForm2.Compradores1Click(Sender: TObject);
begin
if not assigned (FrmRelCompradores) then
FrmRelCompradores := tFrmRelCompradores.Create (self);
FrmRelCompradores.Show;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
if not assigned (frmFornecedores) then
  frmFornecedores := TfrmFornecedores.create (self);

  frmFornecedores.show;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  if not assigned (frmCompradores) then
  frmCompradores := TfrmCompradores.create (self);

  frmcompradores.show;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
  if not assigned (frmProdutos) then
  frmProdutos := TfrmProdutos.create (self);

  frmProdutos.show;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
  if not assigned (frmUnidadeMedida) then
  frmUnidadeMedida := TfrmUnidadeMedida.create (self);

  frmUnidadeMedida.show;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
  if not assigned (frmpedidos) then
  frmpedidos := Tfrmpedidos.create (self);

  frmpedidos.show;

end;

procedure TForm2.Produtos1Click(Sender: TObject);
begin
if not assigned (frmRelProdutos) then
frmRelProdutos := tfrmRelProdutos.Create (self);
frmRelProdutos.Show;
end;

procedure TForm2.UnMedida1Click(Sender: TObject);
begin
if not assigned (frmRelUnidadeMedida) then
frmRelUnidadeMedida := tfrmRelUnidadeMedida.Create (self);
frmRelUnidadeMedida.Show;
end;

end.
