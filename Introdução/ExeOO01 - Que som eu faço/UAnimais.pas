unit UAnimais;


interface

type

TenumAnimal = (stCachorro, stgato, stPassaro);

//TObject primeira classe do Delphi, toda classe herda dela
TAnimal = class //classe abstrata ou classe base

  Private
  fPatas: byte;  // tipo primitivo n�o precisa destruir


    function GetPatas : Byte;
    Procedure SetPatas (Const avalue : byte);

  public
  //M�todo abstrato
  //quando tiver virtual; abstract � por que as filhas � que ter�o implementa��o.
    function RetornarSom: String; virtual; abstract;
    property Patas : byte read GetPatas write SetPatas;

  end;

TCachorro = Class (Tanimal)

  private
  public
    constructor Create;
    function RetornarSom: String; override;     //sobrescreve a classe pai

  End;


TGato = Class (Tanimal)

  private
  public
    constructor Create;
    function RetornarSom: String; override;

  End;

TPassaro = Class (Tanimal)

  private
  public
    constructor Create;
    function RetornarSom: String; override;
  End;



implementation

{ TAnimal }

function TAnimal.GetPatas: Byte;
begin
  Result := FPatas;
end;

procedure TAnimal.SetPatas(const avalue: byte);
begin
  FPatas := aValue;
end;

{ TCachorro }

constructor TCachorro.Create;
begin
  FPatas := 4;
end;

function TCachorro.RetornarSom: String;
begin
  Result := 'Au Au';
end;

{ TGato }

constructor TGato.Create;
begin
 FPatas := 4;
end;

function TGato.RetornarSom: String;
begin
  Result := 'Miau Miau';
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  FPatas := 2;
end;

function TPassaro.RetornarSom: String;
begin
  Result := 'Piu Piu';
end;

end.
