unit UfrmHome;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.MultiView, FMX.Objects, FMX.Layouts,
  FMX.ListBox, FMX.StdCtrls;

type
  TfrmHome = class(TForm)
    lytContainer: TLayout;
    imgDevsHome: TImage;
    MultiView1: TMultiView;
    rectPrincipal: TRectangle;
    StyleBook1: TStyleBook;
    Rectangle1: TRectangle;
    Image1: TImage;
    LytLogo: TLayout;
    lstMenu: TListBox;
    btnMenu: TSpeedButton;
    procedure lstMenuItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
  private
    { Private declarations }
    Procedure AbrirTeam;
    Procedure AbrirMatch;
    Procedure AbrirBet;

    Procedure RemoverTelaAnterior;

  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.fmx}

uses
  UUTils.Enums,
  UfraTeam,
  UfraMatch,
  UfraBet;

procedure TfrmHome.AbrirBet;
begin
 if not Assigned(FraBet) then

    FraBet := TFraBet.create(Application);

  FraBet.align := TAlignlayout.Center;
  lytContainer.AddObject(FraBet);

end;

procedure TfrmHome.AbrirMatch;
begin

if not Assigned(FraMatch) then
    FraMatch := TfraMatch.create(Application);
  FraMatch.align := TAlignlayout.Center;
  lytContainer.AddObject(FraMatch)

end;

procedure TfrmHome.AbrirTeam;
begin
if not Assigned(Frateam) then

    Frateam := TFrateam.create(Application);

  Frateam.align := TAlignlayout.Center;
  lytContainer.AddObject(Frateam);
end;

procedure TfrmHome.lstMenuItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin


  Self.RemoverTelaAnterior;

  case TEnumMenu(Item.Index) of
    mnuTime:
      Self.AbrirTeam;
    mnuPertidas:
      Self.AbrirMatch;
    mnupalpites:
      Self.AbrirBet;
    mnuSair:
      Self.close;
  end;
  MultiView1.HideMaster;
end;

procedure TfrmHome.RemoverTelaAnterior;
var
  I: Integer;
begin
  for I := Pred(lytContainer.ControlsCount) downto 0 do
    if lytContainer.Controls[I].Name <> 'imgDevsHome' then
      lytContainer.RemoveObject(I);

end;

end.