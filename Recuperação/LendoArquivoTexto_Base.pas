unit LendoArquivoTexto_Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    EdtArquivo: TEdit;
    btnLeitura: TButton;
    mmArquivo: TMemo;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnLeituraClick(Sender: TObject);
var
  xArq: TextFile;
  xLinha: String;

begin
  mmArquivo.Clear;
  try
    AssignFile(xArq, EdtArquivo.text);
{$I-} // Desativa a diretiva de input
      // Abre o arquivo para leitura
    Reset(xArq);
    if IOResult <> 0 then
      raise Exception.Create('Erro na abertura do arquivo!!!');
{$I-} // Ativa a diretiva de input
      // Verifica se o arquivo atingiu a marca final do arquivo
      while (not eof(xArq)) do

    begin
      // L� uma linha do arquivo
      Readln(xArq, xLinha);
      mmArquivo.Lines.Add(xLinha);
    end;

  finally
    CloseFile(xArq);
  end;

end;

end.
