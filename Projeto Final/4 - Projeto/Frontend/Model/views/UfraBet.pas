unit UfraBet;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.ListView, FMX.Objects, FMX.Layouts,

  UEntity.Bets;

type
  TfraBet = class(TFrame)
    RectPrincipal: TRectangle;
    LytPrincipal: TLayout;
    ImgLogo: TImage;
    LytPartidas: TLayout;
    RectToolbar: TRectangle;
    LstPalpites: TListView;
    RectNovo: TRectangle;
    Label1: TLabel;
    RectExcluir: TRectangle;
    Label2: TLabel;
    procedure RectNovoClick(Sender: TObject);
    procedure RectExcluirClick(Sender: TObject);
  private
    { Private declarations }
    Procedure CarregarRegistros;
    Procedure AbrirBetRegistry;
    procedure PrepararListView(aBet: TBet);
    Procedure ExcluirRegistros;
  public
    { Public declarations }
    Constructor Create(aOwner: Tcomponent); override;
  end;

  var
  fraBet: TfraBet;

implementation

{$R *.fmx}

uses UfraMatch, UService.Bet, Uservice.Intf,
  UService.User.Authenticated,UfraBet.Registry, UEntity.Matchs;


{ TfraBet }

procedure TfraBet.AbrirBetRegistry;
begin
  if Not Assigned(FraBetRegistry) then
    FraBetRegistry := TfrabetRegistry.Create(application);

    fraBetRegistry.Align := TAlignLayout.Center;

    Self.Parent.AddObject(FraBetRegistry);
    FreeAndNil(FraBet);

end;

procedure TfraBet.CarregarRegistros;
var
  xServiceBet: IService;
  xBet: TBet;
begin
  lstPalpites.Items.Clear;

  xServiceBet := TServiceBet.Create;
  xServiceBet.Listar;

  for xBet in TServiceBet(xServiceBet).Bets do
  Self.PrepararListView(xBet);
end;

constructor TfraBet.Create(aOwner: Tcomponent);
begin
  inherited Create(aOwner);
  self.CarregarRegistros;

end;

procedure TfraBet.ExcluirRegistros;
var
  xServiceBet: IService;
  xBet: TBet;
  xItem: TListViewItem;
  xUserAuthenticated: TUserAuthenticated;

begin
  if lstPalpites.ItemIndex = -1 then
  exit;

  xItem := lstPalpites.Items[lstPalpites.ItemIndex];

  xUserAuthenticated := TUserAuthenticated.GetIstance;

  if xItem.TagString <> xUserAuthenticated.User.Id.ToString then
  raise Exception.Create('N�o � poss�vel excluir o palpite de outro usu�rio');

  xBet := TBet.Create(xItem.Tag);

  xServiceBet := TServiceBet.Create(xBet);

  try
    xServiceBet.Excluir;
    ShowMessage('Registro Excluido');
  finally
    Self.CarregarRegistros;

  end;

end;



procedure TfraBet.PrepararListView(aBet: TBet);
var
  xItem: TlistViewItem;
  xMatch: TMatch;
begin
  xItem       := LstPalpites.items.add;
  xItem.tag   := aBet.Id;
  xItem.TagString := aBet.User.Id.ToString;
  xMatch := aBet.Match;

  TlistItemText(xItem.Objects.FindDrawable('txtUsuario')).Text := aBet.User.Login;
  TlistItemText(xItem.Objects.FindDrawable('txtHora')).Text := TimetoStr(xMatch.Hour);
  TlistItemText(xItem.Objects.FindDrawable('txtData')).Text := DateToStr(xMatch.Date);
  TlistItemText(xItem.Objects.FindDrawable('txtTimeA')).Text := xMatch.TeamA.Name;
  TlistItemText(xItem.Objects.FindDrawable('txtTimeB')).Text := xMatch.TeamB.Name;
  TlistItemText(xItem.Objects.FindDrawable('txtResultadoTimeA')).Text := aBet.ResultTeamA.ToString;
  TlistItemText(xItem.Objects.FindDrawable('txtResultadoTimeB')).Text := aBet.ResultTeamB.ToString;
end;

procedure TfraBet.RectExcluirClick(Sender: TObject);
begin
self.ExcluirRegistros;
end;

procedure TfraBet.RectNovoClick(Sender: TObject);
begin
Self.AbrirBetRegistry;
end;

end.