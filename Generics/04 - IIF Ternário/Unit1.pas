unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TUtils = Class
    Class function IIF<T>(Const aCondicao: Boolean; Const aTipo1, aTipo2: T): T;
  End;

  TProduto = Class

  Private
    FDescricao: String;
    Procedure setDescricao(Const Value: String);

  Published
    Constructor Create;
    Property Descricao : String read FDescricao Write SetDescricao;
  End;

  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TUtils }

class function TUtils.IIF<T>(const aCondicao: Boolean;
  const aTipo1, aTipo2: T): T;
begin
  if aCondicao then
    Result := aTipo1
  else
    Result := aTipo2;

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xAux: String;
begin
  // if edit1.text <> emptyStr then
  // xAux := Edit1.Text
  // Else
  // xAux := 'Laranja';

  xAux := TUtils.IIF<String>(Edit1.Text <> EmptyStr, Edit1.Text, 'Laranja');

  ShowMessage(xAux);

end;

{ TProduto }

constructor TProduto.Create;
begin
FDescricao := 'Produto Genérico';
end;

procedure TProduto.setDescricao(const Value: String);
begin
FDescricao := Value;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
xProduto1,
xProduto2,
xProduto3 : TProduto;

begin
xProduto2 := Nil;

xProduto1 := TProduto.Create;

xProduto1.descricao := 'Laranja Pera';

xProduto3 := Tutils.IIF<TProduto>(Assigned(xProduto2), xProduto2, TProduto.Create);

ShowMessage (xProduto3.Descricao);
end;

end.
