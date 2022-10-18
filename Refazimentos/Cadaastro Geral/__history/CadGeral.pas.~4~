unit CadGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPessoas;

type
  TForm1 = class(TForm)
    LB_Titulo: TLabel;
    E_Nome: TEdit;
    E_End: TEdit;
    CPF: TEdit;
    E_Idade: TEdit;
    CNPJ: TEdit;
    E_IE: TEdit;
    Button1: TButton;
    Result1: TLabel;
    Result2: TLabel;
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
  xPessoa : TPessoa;

begin
  if (CPF.text <> '') and (CNPJ.text <> '') then
    showmessage('Prencha apenas CPF ou CNPJ')
  else if isCPF(CPF.Text) then
    begin
      xpessoa := tpessoafisica.Create;
      xpessoa.Nome := E_Nome.Text;
      xpessoa.Endereco := E_End.text;
      tpessoafisica(xpessoa).CPF := CPF.text;
      tpessoafisica(xpessoa).Idade := E_Idade.text;
      xPessoa.Gravar(xPessoa);
      Result1.Caption := imprimeCPF(CPF.Text);
      Result2.Caption := 'Erro: CNPJ inválido !!!';
    end

  else if isCNPJ(CNPJ.Text) then
    begin
      xpessoa := tpessoajuridica.Create;
      xpessoa.Nome := E_Nome.Text;
      xpessoa.Endereco := E_End.text;
      tpessoajuridica(xpessoa).CNPJ := CNPJ.text;
      tpessoajuridica(xpessoa).IE :=  E_IE.text;
      xPessoa.Gravar(xPessoa);
      Result1.Caption := 'Erro: CPF inválido !!!';
      Result2.Caption := imprimeCNPJ(CNPJ.Text);
    end

  else
    begin
      Result1.Caption := 'Erro: CPF inválido !!!';
      Result2.Caption := 'Erro: CNPJ inválido !!!';
    end;

end
