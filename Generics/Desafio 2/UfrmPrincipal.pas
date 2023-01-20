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
    BTIniciar: TButton;
    procedure BTIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTChamarClick(Sender: TObject);
    procedure BTIniciarClick(Sender: TObject);

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
  xPessoa: TPessoa;
begin
  Memo1.Clear;
  Memo2.Clear;
  if (xFila.contar.toInteger) > 0 then
    Memo1.text := (xFila.proximo.Nome) + '  ' + (xFila.proximo.FEspecialidade)
  else
    raise Exception.Create('Não há pacientes para atendimento');
  LBLRes.Caption := '00';
//   Memo2.text := 'Fim de Atendimento';

  xPessoa := xFila.Ultimo;
  if (xFila.contar.toInteger) > 0 then
    Memo2.text := (xFila.proximo.Nome) + '  ' + (xFila.proximo.FEspecialidade)
  else
//    Memo2.text := 'Fim de Atendimento';
    raise Exception.Create('Não há pacientes para atendimento');

  LBLRes.Caption := xFila.contar;
  // memo1.text := (XPessoa.FNome) + '   ' + (XPessoa.FEspecialidade);

end;

procedure TForm1.BTIncluirClick(Sender: TObject);
begin
  Self.ColetaDados;
end;


procedure TForm1.BTIniciarClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
Memo1.Clear;
Memo2.Clear;
if (xFila.contar.toInteger) >= 1 then
memo2.text := (Xfila.proximo.Nome   ) + '  ' +  (  Xfila.proximo.FEspecialidade)
else
raise Exception.Create('Não há pacientes para atendimento');


end;

procedure TForm1.ColetaDados;
begin
  xPessoa := nil;
  xPessoa := TPessoa.Create;

  xPessoa.FCPF := (EdtCPF.text);
  xPessoa.FNome := (EdtNome.text);
  xPessoa.FEspecialidade := (EdtEsp.text);

  xFila.Adicionar(xPessoa);
  LBLRes.Caption := xFila.contar;
  EdtNome.Clear;
  EdtCPF.Clear;
  EdtEsp.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  xFila := TFila.Create;
end;

end.
