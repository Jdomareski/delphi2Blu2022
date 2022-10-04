unit Exe_23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
   procedure iniciar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
iniciar;
end;

procedure TForm1.iniciar;
var
xNumero : Integer;
xTexto: String;
begin
  xnumero := strToInt(inputbox('Inserir Numero', 'insira um numero', ''));

  if xNumero > 0 then
    begin
      xTexto := 'Este número é Postivo e ';
      if xnumero > 80 then
        showMessage(xTexto + 'maior que 80')

        else if xnumero = 40 then
        showMessage('é igual a 40')

        else if xnumero <25 then
        showMessage('menor que 25')
    end

  else if xNumero < 0 then
    begin
      xTexto := 'Este número é negativo e ';
      showMessage(xTexto + 'Este número é menor que 25');
    end

  else
    begin
      showMessage('Este número é 0')
    end;



end;

end.
