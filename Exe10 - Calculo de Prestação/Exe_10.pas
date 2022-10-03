unit Exe_10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    T�tulo: TLabel;
    frm_LB_VCompra: TLabel;
    frm_LB_QtdPres: TLabel;
    frm_EDT_VCompra: TEdit;
    frm_EDT_QP: TEdit;
    frm_BT_Calc: TButton;
    frm_LB_Saida: TLabel;
    procedure frm_BT_CalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frm_BT_CalcClick(Sender: TObject);
var
  xVCompra : currency;
  xQParc  : double;
  xVpar   : currency;
  //Xsaida  : currency;

  begin
    xVcompra := strToCurr(frm_edt_VCompra.Text);
    xqParc := strToInt(frm_edt_QP.Text);
    xvpar := (xVCompra / xqParc);
    //xsaida := formatcurr('#,##0.00', xvpar);

    frm_LB_Saida.Caption := ('O valor de cada uma das 5 parcelas � de R$ ' + formatcurr('#,##0.00', xVpar));
    //frm_LB_Saida.Caption := ('O valor de cada uma das ' + floatTostr(xqParc) +  ' parcelas � de R$ ' + floatToStr(xVpar))
  end;

end.
