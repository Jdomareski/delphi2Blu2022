unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  TPessoa = Class
  Private
    Fnome: String;
    Procedure SetNome(Const Value: String);

  Published
    Property Nome: String Read Fnome Write SetNome;
  End;

  TNFe<T: Constructor> = Class
    FGeneric: T;
    Constructor Create;
    Function GetGeneric: T;
  End;

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  Fnome := Value;
end;

{ TNFe<T> }

constructor TNFe<T>.Create;
begin
  FGeneric := T.Create;

end;

function TNFe<T>.GetGeneric: T;
begin
  Result := FGeneric;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var
  xNFE: TNFe<TPessoa>;
begin
  xNFE := TNFe<TPessoa>.Create;

  try
    xNFE.FGeneric.Nome := 'Qualquer Um';
    ShowMessage(xNFE.FGeneric.Nome);
  finally
    FreeAndNil(xNFE);

  end;
end;

end.
