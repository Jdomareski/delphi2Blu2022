unit Exe_09;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Titulo: TLabel;
    frm_LB_deposito: TLabel;
    frm_LB_Mes: TLabel;
    frm_LB_Taxa: TLabel;
    frm_LB_Corr: TLabel;
    frm_BT_Calcular: TButton;
    frm_EDT_dep: TEdit;
    frm_BT_Mes: TEdit;
    frm_EDT_Taxa: TEdit;
    frm_EDT_VF: TEdit;
    procedure frm_BT_CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frm_BT_CalcularClick(Sender: TObject);
var
  xPresval  : currency;
  xtax      : Double;
  xMeses    : Double;
  xFutValue : currency;

  begin
    xPresval := strTofloat(frm_EDT_dep.Text);
    xtax := strToFloat(frm_EDT_Taxa.Text);
    xMeses := strtofloat(frm_BT_Mes.Text);

    xFutvalue := xPresval + ((xPresval*(xtax/100))*xMeses);

    frm_EDT_VF.Text := formatCurr('#,##0.00', xFutValue);


  end;

end.
