unit DiarioEscolar_BaseConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    EdtNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtPrimeiraNota: TEdit;
    edtSegundaNota: TEdit;
    btnGravar: TButton;
    btnLer: TButton;
    mmDiario: TMemo;
    procedure btnGravarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    FArq : Textfile;

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnGravarClick(Sender: TObject);
begin
if  (edtNome.Text <> '') and
    (edtPrimeiraNota.text <> '') and
    (edtSegundaNota.text <> '') then

begin
  //Grava uma linha com os dados dos alunos por arquivo
  Writeln(FArq, edtNome.Text, '|',
                edtPrimeiraNota.Text, '|',
                edtSegundaNota.Text, '|');
  edtNome.clear;
  edtPrimeiraNota.clear;
  edtSegundaNota.clear;
end;
end;

procedure TForm2.btnLerClick(Sender: TObject);
var
  xLinha, xNome: String;
  xReg, i: Integer;
  xnota1, xnota2, xmedia: Double;

begin
  mmdiario.clear;

  // Abre o arquivo texto para leitura

    Reset(FArq);

  try
    xReg := 0;
    // Enquanto n�o atingir a marca de final de arquivo

    while (not Eof(FArq)) do
    begin
      // L� uma linha com os dados de um aluno do arquivo
      Readln(FArq, xLinha);
      xReg := xReg + 1;
      // Recupera o nome do aluno
      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i - 1);
      delete(xLinha, 1, i);
      // Recupera a primeira nota do aluno
      i := pos('|', xLinha);
      xnota1 := StrToFloatDef(copy(xLinha, 1, i - 1), 0);
      delete(xLinha, 1, i);
      // Recupera a segunda nota do aluno
      i := pos('|', xLinha);
      xnota2 := StrToFloatDef(copy(xLinha, 1, i - 1), 0);
        // Processando e exibindo os dados recuperados
        xmedia := (xnota1 + xnota2) / 2;
        mmdiario.Lines.Add('Registro Nro.: ' + IntToStr(xReg));
        mmdiario.Lines.Add('Nome do Aluno: ' + xNome);
        mmdiario.Lines.Add('1a. Nota: ' + FloatToStr(xnota1));
        mmdiario.Lines.Add('2a. Nota: ' + FloatToStr(xnota2));
        mmdiario.Lines.Add('M�dia: ' + FloatToStr(xmedia));

        if (xmedia >= 7) then mmdiario.Lines.Add('Situa��o..........: Aprovado')
      else mmdiario.Lines.Add('Situa��o...............: Reprovado');

        mmdiario.Lines.Add('');

      end;

        finally
  Append(FArq);

end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    CloseFile(FArq);
  end;

procedure TForm2.FormShow(Sender: TObject);
 begin
    AssignFile(FArq, 'diario.txt');
    {$I-}
    Reset(FArq);

    if IOResult <> 0 then
      Rewrite(FArq) // O Arquivo n�o existe e ser� criado
    else
      begin
        CloseFile(FArq);
        Append(FArq); // O Arquivo existe e ser� aberto para sa�das adicionais
      end;
    {$I+}
  end;

end.
