unit Diag1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPessoa;

type
  TForm1 = class(TForm)
    LB_Titulo: TLabel;
    EDT_Nome: TEdit;
    EDT_End: TEdit;
    LB_PF: TLabel;
    LB_PJ: TLabel;
    CPF : TEdit;
    CNPJ: TEdit;
    EDT_Idade: TEdit;
    EDT_IE: TEdit;
    BT_01: TButton;
    Result1: TLabel;
    Result2: TLabel;
    MMBox: TMemo;
    procedure BT_01Click(Sender: TObject);
  private
    { Private declarations }

  public

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ValidaCPF, ValidaCNPJ;


procedure TForm1.BT_01Click(Sender: TObject);
var
  xPessoa : TPessoa;
begin
  if (CPF.text <> '') and (CNPJ.text <> '') then
    showmessage('Prencha apenas CPF ou CNPJ')
  else if isCPF(CPF.Text) then
    begin
      xpessoa := tpessoafisica.Create;
      xpessoa.Nome := EDT_Nome.Text;
      MMBox.lines.Add('Nome  ' + xpessoa.Nome);
      xpessoa.Endereco := EDT_End.text;
      MMBox.lines.Add('Endere�o  ' + xpessoa.endereco);
      tpessoafisica(xpessoa).CPF := CPF.text;
      MMBox.lines.Add('CPF  ' + tpessoafisica(xpessoa).CPF);
      tpessoafisica(xpessoa).Idade := strToInt(EDT_Idade.text);
      MMBox.lines.Add('Idade do Indiv�duo   ' + tpessoafisica(xpessoa).Idade.ToString);
      xPessoa.Gravar(xPessoa);
      Result1.Caption := imprimeCPF(CPF.Text);
      Result2.Caption := 'Erro: CNPJ inv�lido !!!';
      MMbox.Visible:= true;
    end

  else if isCNPJ(CNPJ.Text) then
    begin
      xpessoa := tpessoajuridica.Create;
      xpessoa.Nome := EDT_Nome.Text;
      MMBox.lines.Add('Nome da Empresa  ' + xpessoa.Nome);
      xpessoa.Endereco := EDT_End.text;
      MMBox.lines.Add('Endere�o  ' + xpessoa.endereco);
      tpessoajuridica(xpessoa).CNPJ := CNPJ.text;
      MMBox.lines.Add('CNPJ  ' + tpessoajuridica(xpessoa).CNPJ);
      tpessoajuridica(xpessoa).IE :=  EDT_IE.text;
      MMBox.lines.Add('Inscri��o Estadual  ' + tpessoajuridica(xpessoa).IE);
      xPessoa.Gravar(xPessoa);
      Result1.Caption := 'Erro: CPF inv�lido !!!';
      Result2.Caption := imprimeCNPJ(CNPJ.Text);
      MMbox.Visible:= true;
    end

  else
    begin
      Result1.Caption := 'Erro: CPF inv�lido !!!';
      Result2.Caption := 'Erro: CNPJ inv�lido !!!';
    end;

end;

end.
