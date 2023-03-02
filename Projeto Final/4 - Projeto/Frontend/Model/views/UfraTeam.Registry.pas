unit UfraTeam.Registry;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit;

type
  TfraTeamRegistry = class(TFrame)
    RectPrincipal: TRectangle;
    LytPrincipal: TLayout;
    ImgLogo: TImage;
    LytBotoes: TLayout;
    RectNome: TRectangle;
    edtNome: TEdit;
    RectSalvar: TRectangle;
    Label1: TLabel;
    RectVoltar: TRectangle;
    Label2: TLabel;
    procedure RectSalvarClick(Sender: TObject);
    procedure RectVoltarClick(Sender: TObject);
  private
    { Private declarations }
    procedure VoltarTela;
    Procedure Registrar;

  public
    { Public declarations }
  end;

  var
  fraTeamRegistry : TfraTeamRegistry;

implementation

{$R *.fmx}

uses UEntity.Teams, UfraTeam, Uservice.Intf, UService.team;

{ TfraTeamRegistry }

procedure TfraTeamRegistry.RectSalvarClick(Sender: TObject);
begin
Self.Registrar;
end;

procedure TfraTeamRegistry.RectVoltarClick(Sender: TObject);
begin
Self.VoltarTela
end;

procedure TfraTeamRegistry.Registrar;
var
  xServiceTeam : IService;
begin
  if trim(edtNome.Text) = EmptyStr then
  raise Exception.Create('Informe o nome do time');

  xServiceTeam := TServiceTeam.create(
  TTeam.Create(trim(edtNome.Text)));

end;

procedure TfraTeamRegistry.VoltarTela;
begin
  if not assigned(fraTeam) then
  FraTeam := TFrateam.Create(Application);

  Frateam.align := TAlignLayout.Center;
  FreeAndNil(FraTeamRegistry);

end;

end.