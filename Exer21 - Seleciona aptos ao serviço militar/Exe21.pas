unit Exe21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LB_QPessoas: TLabel;
    LB_PInap: TLabel;
    LB_PAptas: TLabel;
    LB_Aptas: TLabel;
    LB_SInapt: TLabel;
    MMBox_Aptos: TMemo;
    MMBox_Inaptos: TMemo;
    BTCadastro: TButton;
    procedure BTCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BTCadastroClick(Sender: TObject);
var
  xQTD, I: Integer;
  xNomes : Array of String;
  xSexo : Array of String;
  xidade : Array of Integer;
  Xsaude : Array of String;

    begin
    xQtd := strToInt(inputbox('Quantidade de Pessoas', 'Insira a quantidade de pessoas', '0'));
    SetLength(xNomes, Length(xNomes) + xQtd);
    SetLength(xSexo, Length(xSexo) + xQtd);
    SetLength(xidade, Length(xidade) + xQtd);
    SetLength(xsaude, Length(xsaude) + xQtd);

        for I := 0 to xQTD -1 do
        begin
        xNomes [I] := inputbox('Nome da pessoa', 'insira o nome da pessoa', '<Desconhecido>');
        xSexo [I] := inputbox ('Sexo da pessoa', 'Insira o sexo da pessoa', '<Desconhecido>');
        xidade [I] := strToInt(inputbox('Idade da pessoa', 'insira a idade da pessoa', '<Desconhecido>'));
        xSaude [I] := inputbox ('Sa�de da pessoa', 'Insira a condi��o de sa�de da pessoa', '<Desconhecido>');

          if ((xSexo [I]) = 'Masculino') and ((xidade [i]) = 18)
          and ((xSaude [i]) = 'Saud�vel') then
          MMBox_Aptos.lines.add(xnomes [I])

          else
          MMBox_Inaptos.lines.add(xnomes [I])


        end;

        LB_Aptas.Caption := MMBox_Aptos.Lines.Count.ToString;
        LB_SInapt.Caption := MMBox_Inaptos.Lines.Count.ToString;

    end;



end.
