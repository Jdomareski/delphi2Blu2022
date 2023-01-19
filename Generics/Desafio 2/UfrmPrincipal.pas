unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Unit2;

type
  TForm1 = class(TForm)
    Image1: TImage;
    EdtNome: TEdit;
    EdtCPF: TEdit;
    EdtEsp: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    BTChamar: TButton;
    BTIncluir: TButton;
    LBLTitulo1: TLabel;
    LblTitulo2: TLabel;
    LBLTitulo3: TLabel;
    LBLRes: TLabel;
    procedure BTIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTChamarClick(Sender: TObject);
  private

    Procedure ColetaDados;
  public

    { Public declarations }
    xPessoa: TPessoa;
    xFila: TFila;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.BTChamarClick(Sender: TObject);
var
xPessoa : TPessoa;
begin
memo1.Clear;
memo2.clear;

memo2.text := (Xfila.proximo.Nome   ) + '  ' +  (  Xfila.proximo.FEspecialidade);
if (xFila.Contar.ToInteger >=1)  then
  xPessoa := xFila.Ultimo;

memo1.text := (XPessoa.FNome) + '   ' + (XPessoa.FEspecialidade);

end;

procedure TForm1.BTIncluirClick(Sender: TObject);
begin
  Self.ColetaDados;
end;

procedure TForm1.ColetaDados;
begin
  xPessoa := nil;
  xPessoa := TPessoa.Create;

  xPessoa.FCPF := (EdtCPF.Text);
  xPessoa.FNome := (EdtNome.Text);
  xPessoa.FEspecialidade := (EdtEsp.Text);

  xFila.Adicionar(xPessoa);
  LBLRes.Caption := xFila.Contar;
  EdtNome.Clear;
  EdtCPF.Clear;
  EdtEsp.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
  begin
    xFila := TFila.create;
  end;

end.
