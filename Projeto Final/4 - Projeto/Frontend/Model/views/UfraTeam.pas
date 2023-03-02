unit UfraTeam;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Layouts,
  FMX.Controls.Presentation, UEntity.Teams;

type
  TfraTeam = class(TFrame)
    RectPrincipal: TRectangle;
    RectToolbar: TRectangle;
    RectExcluir: TRectangle;
    Label1: TLabel;
    RectNovo: TRectangle;
    Label2: TLabel;
    LytPrincipal: TLayout;
    ImgLogo: TImage;
    LstTimes: TListView;
    procedure RectExcluirClick(Sender: TObject);
    procedure RectNovoClick(Sender: TObject);
  private
    { Private declarations }
    Procedure AbrirTeamRegistry;
    Procedure CarregarRegistros;
    Procedure ExcluirRegistros;
    Procedure PreencherTeams(aTeam: TTeam);
  public
    { Public declarations }
    Constructor Create(aOwner: TComponent); override;
  end;
  var
    fraTeam: TfraTeam;


implementation

{$R *.fmx}

uses UfraTeam.Registry, Uservice.Intf, UService.team;



{ TfraTeam }

procedure TfraTeam.AbrirTeamRegistry;
begin
  if not Assigned(FraTeamRegistry) then
  FraTeamRegistry := TfraTeamRegistry.Create(Application);

  FraTeamRegistry.Align := TAlignLayout.Center;

  Self.Parent.AddObject(FraTeamRegistry);
  FreeAndNil(FraTeam);
end;

procedure TfraTeam.CarregarRegistros;
var
  xServiceTeam: IService;
  xTeam: TTeam;
begin
  lstTimes.Items.Clear;

  xServiceTeam := TServiceTeam.create;
  xServiceTeam.Listar;

  for xTeam in TServiceTeam(xServiceTeam).Teams do
    self.PreencherTeams(xTeam);

end;

constructor TfraTeam.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  self.CarregarRegistros;

end;

procedure TfraTeam.ExcluirRegistros;
var
  xServiceTeam: IService;
  xTeam: TTeam;
  xItem: TListViewItem;
begin
  if lstTimes.ItemIndex = -1 then
  exit;

  xItem := lstTimes.Items[lstTimes.ItemIndex];
  xTeam := Tteam.Create(xItem.Tag);

  xServiceTeam := TServiceTeam.create(xTeam);

  try
    xServiceTeam.Excluir;
    ShowMessage('Registro excluido.');
  finally
    Self.CarregarRegistros;

  end;

end;


procedure TfraTeam.PreencherTeams(aTeam: TTeam);
var
  xItem : TListViewItem;
begin
  xItem := lstTimes.Items.Add;
  xItem.Tag := aTeam.Id;

  TListItemText(xItem.Objects.FindDrawable('txtTime')).Text := aTeam.name;

end;

procedure TfraTeam.RectExcluirClick(Sender: TObject);
begin
  Self.ExcluirRegistros;
end;

procedure TfraTeam.RectNovoClick(Sender: TObject);
begin
  Self.AbrirTeamRegistry;
end;

end.
