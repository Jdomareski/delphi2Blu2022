unit exe12B;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Titulo: TLabel;
    frm_LB_CF: TLabel;
    frm_LB_Imp: TLabel;
    frm_LB_Distr: TLabel;
    frm_LB_VC: TLabel;
    frm_EDT_CF: TEdit;
    frm_EDT_PIMP: TEdit;
    frm_EDT_VImp: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure frm_EDT_PIMPExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frm_EDT_PIMPExit(Sender: TObject);
var
xCusto_fabrica  : currency;
xPerc_Imposto   : double;
xVlr_Imposto    : Double;
xPerc_Distr     : double;
xVlr_Distr      : currency;
xPreco          : currency;


begin


end;

end.
