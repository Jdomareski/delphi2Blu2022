unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
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
    {$IFDEF MSWINDOWS}
    procedure MenuClick(Sender : TObject);
    {$ELSE}
    procedure MenuTap(Sender : TObject; Const Point: TPointF);
    {$ENDIF}
    procedure FormCreate(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure lytGeneroClick(Sender: TObject);
  private
    Procedure LoadMenu;
    Procedure OpenMenu(ind: Boolean);
    Procedure SetupMenu(item: TListBoxItem; Texto: String);


  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{ TfrmPrincipal }

procedure TfrmPrincipal.FloatAnimation1Finish(Sender: TObject);
begin
  if LytMenu.Tag = 0 then
    LytMenu.visible := False;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ImgCartaz.Position.X := 0;
  ImgCartaz.Position.Y := 0;
  ImgCartaz.width := 676;
  ImgCartaz.Height := 450;

  Self.LoadMenu;
  Self.OpenMenu(False);

end;

procedure TfrmPrincipal.Image8Click(Sender: TObject);
begin
  Self.OpenMenu(False);
end;

procedure TfrmPrincipal.LoadMenu;
begin
  ListBox1.items.clear;

  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Todos os G�neros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Dispon�vel para Download');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'A��o');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Adolescente');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Asi�ticos');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Brasileiros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Com�dia');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Esportes');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Mist�rios');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Terror');
end;

procedure TfrmPrincipal.lytGeneroClick(Sender: TObject);
begin
  Self.OpenMenu(True);
end;

{$IFDEF MSWINDOWS}
procedure TfrmPrincipal.MenuClick(Sender: TObject);
begin
lblFiltro.Text := TListBoxItem(sender).Text;
self.OpenMenu(False);
end;
{$ElSE}
procedure TfrmPrincipal.MenuTap(Sender: TObject; const Point: TPointF);
begin
lblFiltro.Text := TListBoxItem(Sender).Text;
Self.OpenMenu(False);
end;
{$ENDIF}

procedure TfrmPrincipal.OpenMenu(ind: Boolean);
begin
  // Esconde o item selecionado
  ListBox1.ItemIndex := -1;
  // Volta a listagem para o inicio
  ListBox1.ScrollToItem(ListBox1.ItemByIndex(0));

  if ind then
  begin
    LytMenu.visible := True;
    LytMenu.Tag := 1;
    lytGenero.AnimateFloat('Opacity', 0, 0.2);
    FloatAnimation1.Inverse := false;
  end
  else
  begin
    LytMenu.Tag := 0;
    lytGenero.AnimateFloat('Opacity', 1, 0.4);
    FloatAnimation1.Inverse := True;

  end;
  FloatAnimation1.Start;
end;

procedure TfrmPrincipal.SetupMenu(item: TListBoxItem; Texto: String);
begin
  item.text := Texto;
  item.StyledSettings := item.StyledSettings - [TStyledSetting.Size,
    TStyledSetting.FontColor, TStyledSetting.other];
  item.TextSettings.HorzAlign := TTextAlign.Center;
  item.HitTest := True;
{$IFDEF MSWINDOWS}
  item.onclick := Self.MenuClick;
{$ELSE}
  item.OnTap := Self.MenuTap;
{$ENDIF}
  if ListBox1.items.Count > 0 then
  begin
    item.FontColor := $FFC3C3C3;
    item.Font.Size := 20;
    item.Height := 80;
  end

  else
  begin
    item.FontColor := $FFFFFFFF;
    item.Font.Size := 25;
    item.Height := 110;
  end;

  ListBox1.AddObject(item);
end;

end.
