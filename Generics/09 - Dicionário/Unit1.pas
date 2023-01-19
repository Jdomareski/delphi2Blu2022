unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

type
  TPessoa = record
    CPF: String;
    Nome: String;
  end;

  TForm1 = class(TForm)
    LBLCPF: TLabel;
    LblNome: TLabel;
    edtCPF: TEdit;
    edtNome: TEdit;
    Memo1: TMemo;
    BtnAdd: TButton;
    BtnTryGetValue: TButton;
    BtnRemove: TButton;
    BtnTrimExcess: TButton;
    BtnContainsKey: TButton;
    BtnAddOrSetValue: TButton;
    BtnListaKey: TButton;
    BtnListaValue: TButton;
    BtnClear: TButton;
    BtnOnKEYNotify: TButton;
    BtnONValueNotify: TButton;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnAddOrSetValueClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnContainsKeyClick(Sender: TObject);
    procedure BtnListaKeyClick(Sender: TObject);
    procedure BtnONValueNotifyClick(Sender: TObject);
    procedure BtnRemoveClick(Sender: TObject);
    procedure BtnTrimExcessClick(Sender: TObject);
    procedure BtnTryGetValueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnOnKEYNotifyClick(Sender: TObject);
    procedure BtnListaValueClick(Sender: TObject);
  private

    FDicionario: TDictionary<String, TPessoa>;

    procedure KeyNotify(Sender: TObject; const aItem: String;
      aAction: TCollectionNotification);
    Procedure ValueNotify(Sender: TObject; const aItem: TPessoa;
      aAction: TCollectionNotification);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.BtnAddClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  xPessoa.CPF := edtCPF.text;
  xPessoa.Nome := edtNome.text;

  FDicionario.Add(xPessoa.CPF, xPessoa);
end;

procedure TForm1.BtnAddOrSetValueClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  xPessoa.CPF := edtCPF.text;
  xPessoa.Nome := edtNome.text;

  FDicionario.AddorSetValue(xPessoa.CPF, xPessoa);
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  FDicionario.Clear;
end;

procedure TForm1.BtnContainsKeyClick(Sender: TObject);
begin
  if FDicionario.ContainsKey(edtCPF.text) then
    Memo1.Lines.Add('Usu�rio Encontrado')
  else
    Memo1.Lines.Add('Usu�rio n�o Encontrado')
end;

procedure TForm1.BtnListaKeyClick(Sender: TObject);
var
  xKey: String;
begin
  for xKey in FDicionario.Keys do
    Memo1.Lines.Add(xKey);
end;

procedure TForm1.BtnListaValueClick(Sender: TObject);
var
 xValue : TPessoa;
begin
for xValue in FDicionario.Values do
  Memo1.Lines.Add(xValue.Nome);

end;

procedure TForm1.BtnOnKEYNotifyClick(Sender: TObject);
begin
  FDicionario.OnKeyNotify := KeyNotify;
end;

procedure TForm1.BtnONValueNotifyClick(Sender: TObject);
begin
  FDicionario.OnValueNotify := ValueNotify;
end;

procedure TForm1.BtnRemoveClick(Sender: TObject);
begin
  FDicionario.Remove(edtCPF.text);
end;

procedure TForm1.BtnTrimExcessClick(Sender: TObject);
begin
  FDicionario.TrimExcess;
end;

procedure TForm1.BtnTryGetValueClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  if FDicionario.TryGetValue(edtCPF.text, xPessoa) then
    Memo1.Lines.Add(xPessoa.Nome + '  -  ' + xPessoa.CPF)
  else
    Memo1.Lines.Add('Usu�rio N�o Encontrado');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDicionario.free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDicionario := TDictionary<string, TPessoa>.create;
end;

procedure TForm1.KeyNotify(Sender: TObject; const aItem: String;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdded:
      Memo1.Lines.Add('A Chave ' + aItem + ' Foi Adicionado');
    cnExtracted:
      Memo1.Lines.Add('A Chave ' + aItem + ' Foi Extra�do');
    cnRemoved:
      Memo1.Lines.Add('A Chave ' + aItem + ' Foi Removido');
  end;

end;

procedure TForm1.ValueNotify(Sender: TObject; const aItem: TPessoa;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdded:
      Memo1.Lines.Add('O Value ' + aItem.Nome + ' Foi Adicionado');
    cnExtracted:
      Memo1.Lines.Add('O Value ' + aItem.Nome + ' Foi Extra�do');
    cnRemoved:
      Memo1.Lines.Add('O Value ' + aItem.Nome + ' Foi Removido');

  end;

end;

end.
