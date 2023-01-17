unit UfrmCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LblNum1: TLabel;
    LblNum2: TLabel;
    LblOp: TLabel;
    LblResultado: TLabel;
    EdtNum1: TEdit;
    EdtNum2: TEdit;
    CBBOperacao: TComboBox;
    LblResult: TLabel;
    BTClicl: TButton;
    procedure BTCliclClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UCalculadora;

procedure TForm1.BTCliclClick(Sender: TObject);
var
xCalculadora : Tcalculadora;
xNum1 : Double;
xNum2 : Double;
begin

xCalculadora := Tcalculadora.Create;

try
xNum1 := strToFloat(edtNum1.text);
xNum2 := strToFloat(edtNum2.text);


case Toperacao (CBBOperacao.ItemIndex) of

OpSomar:
  LblResult.caption:= xcalculadora.somar(xNum1, xNum2).ToString;

OpSubtrair:
  LblResult.caption:= xcalculadora.subtrair(xNum1, xNum2).ToString;

OpMultiplicar:
  LblResult.caption:= xcalculadora.multiplicar(xNum1, xNum2).ToString;

Opdividir:
  LblResult.caption:= xcalculadora.dividir(xNum1, xNum2).ToString;

end;

finally
LblResult.Visible := true;
Freeandnil(Xcalculadora);
end;

end;

end.
