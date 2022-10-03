unit Ex_08;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    frmLB_Titulo: TLabel;
    frmLB_Cotacao: TLabel;
    frmLBQtd: TLabel;
    frm_LB_Real: TLabel;
    frm_BT_Converter: TButton;
    frm_EDT_Cotacao: TEdit;
    frm_EDT_Dolar: TEdit;
    procedure frm_BT_ConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frm_BT_ConverterClick(Sender: TObject);
var
  xCotacao : currency;
  xQuantidade : double;
  xReal : currency;

begin
 xcotacao := StrToFloat(frm_EDT_Cotacao.text);
 xQuantidade := strToFloat(frm_EDT_Dolar.text);
 xReal := xcotacao * xQuantidade;

 frm_LB_Real.Caption := ('O valor em reais é de R$ ' + formatfloat('0.00', xReal));


end;

end.
