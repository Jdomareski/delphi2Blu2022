unit ValidacaoTipos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMeuGenerico = array [0..9] of string;

  TMeuArrayGenerico<T> = Class
    FArray : array [0..9] of T;
  End;

  TMeuGenericoA = TMeuArrayGenerico<String>;

  TForm1 = class(TForm)
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

procedure TForm1.Button1Click(Sender: TObject);
var
xAux1 : TMeuGenerico;
xAux2 : TMeuGenerico;
xAux3 : array[0..9] of string;
xAux4 : array[0..9] of string;
begin
xAux1 := xAux2;
//xAux1 := xAux3; // O Delphi trabalha com o nome dos dois tipos.

end;

procedure TForm1.Button2Click(Sender: TObject);
var
xAux1 : TMeuArrayGenerico<String>;
xAux2 : TMeuArrayGenerico<String>;
xAux3 : TMeuGenericoA;
xAux4 : TMeuGenericoA;

begin

xAux1 := xAux3; //Aqui � usado o tipo do gen�rico para valida��o.

end;

end.
