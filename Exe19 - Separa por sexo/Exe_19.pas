unit Exe_19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LB_Homens: TLabel;
    BT_Cadastro: TButton;
    LB_Mulheres: TLabel;
    MMB_Masc: TMemo;
    MMB_Fem: TMemo;
    procedure BT_CadastroClick(Sender: TObject);
  private
 procedure contar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BT_CadastroClick(Sender: TObject);
begin
  contar;
end;

procedure TForm1.contar;
var
  xQTD, I: Integer;
  xNomes : Array of String;
  xsexo : Array of String;
begin
  xQtd := strToInt(inputbox('Quantidade de Pessoas', 'Insira a quantidade de pessoas', '0'));
  SetLength(xNomes, Length(xNomes) + xQtd);
  SetLength(xSexo, Length(xSexo) + xQtd);
  for I := 0 to xQTD -1 do
  begin
    xNomes [I] := inputbox('Nome da pessoa', 'insira o nome da pessoa', '<Desconhecido>');
    xSexo [I] := inputbox ('Sexo da pessoa', 'Insira o sexo da pessoa', '<Desconhecido>');

      if (xsexo [I] = 'Masculino') or (xsexo [I] = 'Feminino') then
        if xsexo [I] = 'Masculino' then
          MMB_Masc.lines.add(xnomes [I])
        else
          MMB_Fem.lines.add(xnomes [I]);
  end;

  LB_Homens.Caption := MMB_Masc.Lines.Count.ToString;
  LB_Mulheres.Caption := MMB_Fem.Lines.Count.ToString;
end;

end.
