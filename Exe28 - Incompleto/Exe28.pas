unit Exe28;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    CalculoReajuste1: TMenuItem;
    InserirDados1: TMenuItem;
    CalcularReajuste1: TMenuItem;
    CalcularReajuste2: TMenuItem;
    Sair1: TMenuItem;
    procedure InserirDados1Click(Sender: TObject);
    procedure CalcularReajuste1Click(Sender: TObject);
    procedure CalcularReajuste2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;

implementation

uses
frmReajuste, frmMes, frmClassificar;

{$R *.dfm}



procedure TForm_Principal.CalcularReajuste1Click(Sender: TObject);
begin
if  Form_Mes = nil then
  Form_Mes := (TForm_Mes.create(self));
  Form_Mes.Show
end;


procedure TForm_Principal.CalcularReajuste2Click(Sender: TObject);
begin
if  Form_classificar = nil then
   Form_classificar:= (TForm_classificar.create(self));
  Form_classificar.Show
end;

procedure TForm_Principal.InserirDados1Click(Sender: TObject);
begin
 if  frm_reajuste = nil then
  frm_reajuste := (Tfrm_reajuste.create(self));
  frm_reajuste.Show
end;

end.
