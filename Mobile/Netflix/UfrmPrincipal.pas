unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Ani, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    ImgCartaz: TImage;
    Image1: TImage;
    imgLogo: TImage;
    lytGenero: TLayout;
    Image2: TImage;
    lblFiltro: TLabel;
    Layout1: TLayout;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Image5: TImage;
    Layout2: TLayout;
    Image6: TImage;
    Label2: TLabel;
    Image7: TImage;
    Layout3: TLayout;
    Label3: TLabel;
    LytMenu: TLayout;
    Rectangle1: TRectangle;
    lytFechar: TLayout;
    Image8: TImage;
    ListBox1: TListBox;
    FloatAnimation1: TFloatAnimation;
  private
    Procedure LoadMenu;
    Procedure OpenMenu(ind: Boolean);
    Procedure SetupMenu(item: TListBoIntem; Texto: String);

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}


{ TfrmPrincipal }

procedure TfrmPrincipal.LoadMenu;
begin
ListBoz1.items.clear;

Self.SetupMenu(TListboxItem.Create(ListBox1),  'Todos os Gêneros');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Disponível para Download');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Ação');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Adolescente');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Anime');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Asiáticos');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Brasileiros');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Comédia');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Drama');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Esportes');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Mistérios');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Novelas');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Suspense');
Self.SetupMenu(TListboxItem.Create(ListBox1),  'Terror');
end;

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
begin
//Esconde o item selecionado
ListBox1.ItemIndex := -1;
// Volta a listagem para o inicio
ListBox1.ScrollToItem(LitBox1.ItemByIndex(0));

if ind then
begin
  lytMenu.Visible := True;
  lytMenu.Tag := 1;
  lytGenero.AnimateFloat('Opacity', 0, 0.2)
  FloatAnimation1.Inverse := True;
end;
else
begin
  lytMenu.Tag := 0
  lytGenero.AnimateFloat('Opacity', 1,0.4);
  floatAnimation1.Inverse := True;

end;
  FloatAnimation1.Start;
end;

procedure TfrmPrincipal.SetupMenu(item: TListBoIntem; Texto: String);
begin

end;

end.
