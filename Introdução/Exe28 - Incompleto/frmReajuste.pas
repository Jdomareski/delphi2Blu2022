unit frmReajuste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrm_reajuste = class(TForm)
    Imagem: TImage;
    MMBox_Saida: TMemo;
    BT_InsDad: TButton;
    LB_SalAnt: TLabel;
    LB_SalPost: TLabel;
    LB_Imp: TLabel;
    LB_Sai_SalAntes: TLabel;
    LB_Sai_SalPost: TLabel;
    LB_Sai_Imp: TLabel;
    LB_SalMin: TLabel;
    EDT_SalMin: TEdit;
    procedure BT_InsDadClick(Sender: TObject);

  private

  Procedure Registro;

  public
    { Public declarations }
  end;

var
  frm_reajuste: Tfrm_reajuste;

implementation

{$R *.dfm}



procedure Tfrm_reajuste.BT_InsDadClick(Sender: TObject);
    begin
      Registro;
    end;

procedure Tfrm_reajuste.Registro;
var
  xQtd, xfaixa, I, xQtotal : Integer;
  xSalMin, xSalario, xSalReaj, xSomReaj, xSomSal, xImpacto : Currency;
  xNome : String;

    begin
    xQtd := strToInt(inputbox('Quantidade de Funcionários a Reajustar', 'Insira Quantidade de Funcionários a Reajustar', '0'));
    for I := 0 to xQTD -1 do
      xSalMin :=  strToCurr(EDT_SalMin.Text);
      xNome := inputbox('Identificação do funcionário', 'Insira o nome  do uncionário', '0');
      xSalario := strToCurr(inputbox('Salário atual', 'Salário atual do Funcionário', '0'));
      xFaixa := Trunc(xSalario / xSalMin);




    end;

end.
