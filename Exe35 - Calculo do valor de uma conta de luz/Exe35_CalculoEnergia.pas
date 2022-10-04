unit Exe35_CalculoEnergia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumNivel = (stResidencial, stComercial, stIndustria);
  TForm1 = class(TForm)
    Titulo: TLabel;
    LB_Ins: TLabel;
    EDT_Cons: TEdit;
    LB_Tipo: TLabel;
    RG_Tp: TRadioGroup;
    LB_Saida: TLabel;
    TBt_Calcular: TButton;
    procedure TBt_CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TBt_CalcularClick(Sender: TObject);
var
  xCons : double;
  xValr : currency;
    begin
    xcons :=  strToInt(EDT_Cons.Text);

      case TEnumNivel(rg_Tp.ItemIndex) of
        stResidencial:
          xvalr := (xCons * 0.60);
        stComercial:
          xvalr := (xCons * 0.48);
        stIndustria:
          xvalr := (xCons * 1.29);

    end;
    LB_Saida.Caption := ('A conta de luz é de R$ ' + FormatCurr('#,###.00', xValr));

    end;

end.
