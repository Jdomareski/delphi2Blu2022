unit Combustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, TobjComb;

type
  TForm2 = class(TForm)
    RG_TComb: TRadioGroup;
    LB_Tit1: TLabel;
    LB_Tit2: TLabel;
    EDT_Vlr: TEdit;
    EDT_Lts: TEdit;
    LB_Tit3: TLabel;
    BT_Vlr: TButton;
    BT_Lts: TButton;
    BT_CB: TButton;
    Edit1: TEdit;
    BT_RPRC: TButton;
    Edit2: TEdit;
    LBS_1NMX: TLabel;
    LBS_2MX: TLabel;
    LBS_3NMX: TLabel;
    LBS_4NMX: TLabel;
    LBS_5MX: TLabel;
    LBS_6NMX: TLabel;
    LBS_7NMX: TLabel;
    LB_8MX: TLabel;
    LBS_9NMX: TLabel;
    LB_Titulo: TLabel;
    procedure BT_CBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    xBomba : TBombaCombustivel;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BT_CBClick(Sender: TObject);
  begin
    xBomba.alterarValor(edit1.Text);
  end;

procedure TForm2.FormCreate(Sender: TObject);
  begin
    xBomba := TBombaCombustivel.Create;
  end;

end.
