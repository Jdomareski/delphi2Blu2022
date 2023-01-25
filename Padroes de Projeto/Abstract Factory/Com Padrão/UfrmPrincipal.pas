unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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

uses UApple, UDell, UiMac, UInspiron, UInterfaces, UMacBook, UVostro;
{ TForm1 }

procedure TForm1.BtnExibirClick(Sender: TObject);
var
  xMarca: IFactoryMarca;
  xNotebook: Inotebook;
  xDesktop: IDesktop;
begin
  // Instancia a marca - Unico If da aplicação

  if CMBMarca.Items[CMBMarca.ItemIndex] = 'Dell' then
    xMarca := TDell.Create
  else if CMBMarca.Items[CMBMarca.ItemIndex] = 'Apple' then
    xMarca := TApple.Create;

  // Consulta (Constroi) Objetos
  xNotebook := xMarca.ConsultarNotebook;
  xDesktop := xMarca.ConsultarDesktop;

  // Exibe os dados
  LblTamanhoTela.Caption := xNotebook.BuscarTamanhoTela;
  LblMemoriaRam.Caption := xNotebook.BuscarMemoriaRAM;

  LblProcessador.Caption := xDesktop.BuscarNomeProcessador;
  LblTamanhoHD.Caption := xDesktop.BuscarTamanhoHD;

  // Detalhe importante como usamos para as variaveis
  // não precisamos destruir seus objetos. O Delphi Faz isso por nós.

end;

end.
