unit CClasses_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LBcadastro: TLabel;
    BT_Inicio: TButton;
    MMB_saida: TMemo;
    procedure BT_InicioClick(Sender: TObject);
  private
  procedure ColetaDados;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UPessoas;

{$R *.dfm}

procedure TForm1.BT_InicioClick(Sender: TObject);
begin
  ColetaDados;
end;


procedure TForm1.ColetaDados;
var
  {xNome : string;
  xDataNasc : Tdate;
  xAltura : Double;
  xData : Double;}

  xPessoa : TPessoa;

  begin
    try
      MMB_saida.lines.Clear;
      xPessoa := nil;
      xPessoa := TPessoa.Create;

      xPessoa.Nome := inputbox('Nome do indiv�duo', 'Digite Seu Nome','0');
      xPessoa.Data := strToDate(inputbox('Data de Nascimento do indiv�duo',
       'Digite Seu Data de Nascimento','0'));
      xPessoa.Altura := StrTofloat(inputbox('Altura do indiv�duo',
       'Digite Sua Altura','0'));

       MMB_saida.lines.add(xPessoa.Nome);
       MMB_saida.lines.add(DateToStr(xPessoa.Data));
       MMB_saida.lines.add(FloatToStr(xPessoa.Altura));
       MMB_saida.lines.add(FloatToStr(xPessoa.CalcIdade));
    finally
      FreeAndNil(xPessoa);
    end;

  end;

end.
