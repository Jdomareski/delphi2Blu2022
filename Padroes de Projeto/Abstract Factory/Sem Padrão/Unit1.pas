unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    CMBMarca: TComboBox;
    BtnExibir: TButton;
    GroupBox1: TGroupBox;
    LblMemoriaRam: TLabel;
    LblTamanhoTela: TLabel;
    GroupBox2: TGroupBox;
    LblProcessador: TLabel;
    LblTamanhoHD: TLabel;
    procedure BtnExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnExibirClick(Sender: TObject);
begin
//  dados do Notebook

if cmbMarca.Items[CmbMarca.ItemIndex] = 'Dell' then
begin
  lblTamanhoTela.Caption := 'Tela de 14 Polegadas';
  lblMemoriaRam.caption := '3GB DDR3';
 end
  else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
 begin
   lblTamanhoTela.caption := '11.6 Polegadas';
   lblmemoriaram.Caption := '4GB DDR3';
 end;
 // Dados do desktop
if cmbMarca.Items[CmbMarca.ItemIndex] = 'Dell' then
begin
  lblProcessador.Caption := 'Intel Core i5';
  lblTamanhoHD.caption := '1TB';
 end
  else if cmbMarca.Items[cmbMarca.ItemIndex] = 'Apple' then
 begin
  lblProcessador.Caption := 'Intel Core i7';
  lblTamanhoHD.caption := '500GB';
 end;


end;

end.
