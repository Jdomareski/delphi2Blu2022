unit Exe35_CalculoEnergia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumNivel = (stResidencial, stComercial, stIndustria, stFazenda);
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
    xDesconto: double;
  begin
    xcons :=  strToInt(EDT_Cons.Text);
  xDesconto := 0;
  Repeat
    if not (TryStrToFloat(InputBox('Informe',
    'Possui algum desconto? Informe o montante: ', '0'), xDesconto))
    or (xDesconto < 0) then
      begin
        ShowMessage('Informe invalor válido!');
      end
    else
      begin
          break;
      end;
  Until xDesconto > 0;

  case TEnumNivel(rg_Tp.ItemIndex) of
    stResidencial:
      xvalr := (xCons * 0.80) - xDesconto;

    stComercial:
      xvalr := (xCons * 0.68) - xDesconto;

    stIndustria:
      xvalr := (xCons * 1.49) - xDesconto;

    stFazenda:
      xvalr := (xCons * 3.18) - xDesconto;
  end;

  LB_Saida.Caption := ('A conta de luz é de R$ ' + FormatCurr('#,###.00', xValr));

  end;

end.
