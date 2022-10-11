unit Ex_20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LB_Texto: TLabel;
    BT_Reg: TButton;
    LB_Texto2: TLabel;
    procedure BT_RegClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BT_RegClick(Sender: TObject);
 var
  I, x2000, x2001 : integer;
  xValor, xdesconto, xVPagar : Currency;
  xAno : Integer;

  begin
  x2000 := 0;
  x2001 := 0;

  repeat
    xvalor := strToCurr(inputbox('Valor do carro' ,'Insira o Valor do Carro', '' ));
    xAno :=   strToInt(inputbox('Ano do Carro' ,'Insira o Ano do Carro', '' ));
    if xAno <= 2000  then
     begin
      xDesconto := (xValor * 0.12);
      xVpagar := (xValor *0.88);
      x2000 := x2000+1;
     end
    else
     begin
      xDesconto := (xValor * 0.07);
      xVpagar := (xValor * 0.93);
      x2001 := x2001+1;
     end;

     ShowMessage(' O Valor do Carro é de R$   ' + CurrToStr(xValor) +#13#10+
     'O Valor do Desconto é de R$    ' + CurrToStr(xDesconto) +#13#10+
     'O Valor a Pagar é de R$    ' + currToStr(xVpagar))

  until  MessageDlg('Quer Adicionar Outro veículo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo;
          LB_Texto.Caption := ('Quantidade de Carros abaixo do ano 2000     ' + (x2000.ToString));
          LB_Texto2.Caption := ('Quantidade de Carros acima do ano 2000     ' + (x2001.ToString));



  end;

end.
