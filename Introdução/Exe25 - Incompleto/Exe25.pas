unit Exe25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
xNum1 : Integer;
xNum2 : integer;

begin
  if not trystrToInt(inputbox('PRIMEIRO N�MERO', 'Insira o primeiro numero', ''),
  xNum1 ) or not trystrToInt(inputbox('SEGUNDO N�MERO', 'Insira o segundo numero', ''), xNum2 ) then
    begin
      showMessage('Inser��o incorreta dos dados');
    end
  else
      if xNum1 = xNum2 then
        showMessage('Os N�meros S�o Iguais')
    else if xNum1 <> xNum2 then
      begin
        showMessage('Os N�meros n�o S�o Iguais');
        if xNum1 > xNum2 then
    end;



end;

end.
