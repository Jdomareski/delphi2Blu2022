unit Ex_13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LbNumero: TLabel;
    EDTNum: TEdit;
    LBSaida: TLabel;
    BTvericar: TButton;
    procedure BTvericarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BTvericarClick(Sender: TObject);

var
  xNumero : double;
  xNumero_x : double;


begin
  xnumero := strToInt(EDTNum.text);

  if xnumero >10 then
  LBSaida.Caption :=('O n�mero digitado � MAIOR que 10')

  else
  LBSaida.Caption :=('O n�mero digitado � MENOR que 10')


end;

end.
