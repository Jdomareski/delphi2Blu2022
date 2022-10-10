unit CClasses_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LBcadastro: TLabel;
    BT_Inicio: TButton;
  private
  procedure ColetaDados;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ColetaDados;
var
  xNome : string;
  xDataNasc : Tdate;
  xAltura : Double;

  begin
    xNome := inputbox('Nome do indivíduo', 'Digite Seu Nome','0');
    xDataNasc := strToDate(inputbox('Data de Nascimento do indivíduo',
     'Digite Seu Data de Nascimento','0'));
    xAltura := StrToInt(inputbox('Altura do indivíduo',
     'Digite Sua Altura','0'));
  end;

end.
