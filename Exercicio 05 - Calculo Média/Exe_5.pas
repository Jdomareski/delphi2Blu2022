unit Exe_5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    frmLB_Titulo: TLabel;
    frmLB_NomeAluno: TLabel;
    frmLB_Nota1: TLabel;
    frmLB_Nota2: TLabel;
    frmLB_Nota3: TLabel;
    frmEdt_NomeAluno: TEdit;
    frmEdt_Nota1: TEdit;
    frmEdt_Nota2: TEdit;
    frmEdt_Nota3: TEdit;
    frmBT_Calcula: TButton;
    frmLB_saida: TLabel;
    procedure frmBT_CalculaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frmBT_CalculaClick(Sender: TObject);
var
  xNota1 : Double;
  xNota2 : Double;
  xNota3 : Double;
  xMedia : Double;
begin

  xNota1 := strTofloat(frmEdt_Nota1.Text);
  xNota2 := strTofloat(frmEdt_Nota2.Text);
  xNota3 := strTofloat(frmEdt_Nota3.Text);
  xMedia := (xNota1 + xNota2 + xNota3) /3;

  frmLB_saida.Caption := 'A média do aluno ' + frmEdt_NomeAluno.Text + ' é: ' + formatfloat('0.00', xMedia);

  frmEdt_Nota1.Text := '';
  frmEdt_Nota2.Text := '';
  frmEdt_Nota3.Text := '';
  frmEdt_NomeAluno.Text := '';
end;

end.
