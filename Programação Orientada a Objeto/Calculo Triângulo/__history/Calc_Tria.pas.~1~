unit Calc_Tria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LB_Tx: TLabel;
    LBTy: TLabel;
    EDT_Xa: TEdit;
    EDT_Xb: TEdit;
    EDT_xc: TEdit;
    EDT_Ya: TEdit;
    EDT_Yb: TEdit;
    EDT_Yc: TEdit;
    LB_Xa: TLabel;
    LB_Ya: TLabel;
    LB_Xb: TLabel;
    LB_Yb: TLabel;
    LB_Xc: TLabel;
    LB_Yc: TLabel;
    BT_001: TButton;
    BT_002: TButton;
    LB_TxS: TLabel;
    LB_TxSaida: TLabel;
    LB_TyS: TLabel;
    LB_TySaida: TLabel;
    LB_Saida: TLabel;
    procedure BT_001Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BT_001Click(Sender: TObject);
var
  xTx_a, xTx_b, xTx_c, xTy_a, xTy_b, xTy_c, xP_x, xP_y, xA_x, xA_y : double;

  begin
    xTx_a := strTofloat(EDT_Xa.Text);
    xTx_b := strTofloat(EDT_Xb.Text);
    xTx_c := strTofloat(EDT_Xc.Text);
    xTy_a := strTofloat(EDT_Ya.Text);
    xTy_b := strTofloat(EDT_Yb.Text);
    xTy_c := strTofloat(EDT_Yc.Text);

    xP_x := (xTx_a + xTx_b + xTx_c) / 2;
    xP_y := (xTy_a + xTy_b + xTy_c) / 2;

    xA_x := sqrt(Xp_x * ((Xp_x - xTx_a) *  (Xp_x - xTx_b) * (Xp_x - xTx_c)));
    xA_y := sqrt(Xp_y * ((Xp_y - xTy_a) *  (Xp_y - xTy_b) * (Xp_y - xTy_c)));

    LB_TxSaida.caption := formatFloat('0.00', xA_x);
    LB_TySaida.caption := formatFloat('0.00', xA_y);

          if (xA_x > xA_y)  then
            LB_Saida.caption := ('A área do triângulo "x" é maior')

          else
            LB_Saida.caption := ('A área do triângulo "y" é maior');

  end;



end.
