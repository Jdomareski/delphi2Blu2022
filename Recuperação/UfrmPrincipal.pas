unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UFuncionario;

type
  TFrmPrincipal = class(TForm)
    LblTit1: TLabel;
    EdtNome: TEdit;
    EdtSobre: TEdit;
    EdtSalario: TEdit;
    LblNome: TLabel;
    LblSobre: TLabel;
    LblSalario: TLabel;
    BtnAdd: TButton;
    MMSaida: TMemo;
    procedure BtnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnAddClick(Sender: TObject);
var
xNome,xSobrenome : String;
xSalario : Double;
xFunc : TFuncionario;
begin
xFunc := Tfuncionario.Create;
xFunc.Nome := xNome;
xFunc.Sobrenome := xSobrenome;
xFunc.salario := xSalario;

xNome := EdtNome.Text;
xSobrenome := edtSobre.Text;
xSalario := StrToFloat(edtSalario.Text);

MMSaida.Lines.Add(xNome +' ' + ' ' + xSobrenome + ' ' + ' ' + FloatToStr(xSalario));

xfunc.Free;
end;

end.
