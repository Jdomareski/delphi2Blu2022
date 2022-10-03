unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TOperadores = (opSomar, opsubtrair, opMultiplicar, opDividir, opResto, opDivisaoInteira);
  TForm1 = class(TForm)
    Label1: TLabel;
    editResultado: TEdit;
    EditDenominador: TEdit;
    EditMultiplicador: TEdit;
    Label2: TLabel;
    cmbOperador: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xNumero1: Integer;
  xNumero2: Integer;
  xResultado: integer;
begin
  try
  xnumero1 := StrToInt(EditMultiplicador.Text);
  except
    on e: Exception do
    raise exception.create('Errou');
  end;

  xnumero2 := StrToIntDef(EditDenominador.Text, 0);

  xResultado := 0;

  case TOperadores(CmbOperador.ItemIndex) of
    opSomar:
    begin
      xResultado := xNumero1 + xNumero2;
    end;
    opSubtrair:
    begin
        xResultado := xNumero1 - xNumero2;
    end;
    opMultiplicar:
    begin
        xResultado := xNumero1 * xNumero2;
    end;
    opDividir:
    begin
        xResultado := Trunc(xNumero1 / xNumero2);
    end;
    opResto:
    begin
      xResultado := (xNumero1 mod xNumero2);
    end;
    opDivisaoInteira:
    begin
        xResultado := xNumero1 div xNumero2;
    end;
  end;

   editResultado.Text := IntToStr (xResultado)
end;

end.
