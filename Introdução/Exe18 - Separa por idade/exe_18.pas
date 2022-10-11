unit exe_18;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LB_QTD: TLabel;
    EDT_Qtd: TEdit;
    MBoxMenor: TMemo;
    LB_Men: TLabel;
    LB_Maiores: TLabel;
    MMBoxMaior: TMemo;
    LB_SMaior: TLabel;
    LB_SMenor: TLabel;
    BT_Inserir: TButton;
    procedure BT_InserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BT_InserirClick(Sender: TObject);
var
  xQtd  : Integer;
  xProv : Integer;
  tete : integer;

      begin
        if TryStrToInt(EDT_Qtd.Text, xQtd) then
          For tete := 0 to xQtd - 1 do
            begin
              xProv := strToInt(inputbox('informar Idade', format('Informe a %dº Idade', [tete + 1]), ''));
              if (xProv >= 18) then
              MMBoxMaior.Lines.add(xProv.ToString)
              else if (xProv < 18) and (xProv >= 0) then
              MBoxMenor.Lines.add(xProv.ToString);


              LB_SMenor.Caption := MBoxMenor.Lines.Count.ToString;
              LB_SMaior.Caption := MMBoxMaior.Lines.Count.ToString;
           end;




      end;

end.
