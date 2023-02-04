unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    EdtValor: TEdit;
    BtnEchoDouble: TButton;
    BtnHelloWorld: TButton;
    lblResultado: TLabel;
    procedure BtnEchoDoubleClick(Sender: TObject);
    procedure BtnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure echoDouble;
    procedure Hello_World;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses IHello_Word1;

procedure TForm1.BtnEchoDoubleClick(Sender: TObject);
begin
  self.echoDouble;
end;

procedure TForm1.BtnHelloWorldClick(Sender: TObject);
begin
self.Hello_World;
end;

procedure TForm1.echoDouble;
var
  xvalor: Double;
  xResultado: Double;

begin

  if not TryStrToFloat(EdtValor.Text, xvalor) then
    raise exception.Create('Valor Inválido');

  xResultado := GetIHello_Word.echoDouble(xvalor);
  lblResultado.caption := 'Resultado:  ' + xResultado.ToString;

end;

procedure TForm1.Hello_World;
begin
LblResultado.Caption := GetIHello_Word.echoHelloWorld;
end;

end.
