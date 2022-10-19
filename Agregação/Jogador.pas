unit Jogador;

interface

Type
TJogador = Class

  Private
    FNome: String;
    FIdade: Integer;
    FPosicao: String;
    Fid : Integer;
    function getIdade: Integer;
    function getNome: String;
    function getPosicao: String;
    procedure setIdade(const Value: Integer);
    procedure setNome(const Value: String);
    procedure setPosicao(const Value: String);
    function getid: integer;
    procedure setid(const Value: integer);
  Public
    Property NomeJogador : String read getNome write setNome;
    Property Idade : Integer read getIdade write setIdade;
    Property Posicao : String read getPosicao write setPosicao;
    Property id : integer read getid write setid;
  End;

implementation

{ TJogador }

function TJogador.getid: integer;
begin
Result := Fid
end;

function TJogador.getIdade: Integer;
begin
result := Fidade
end;

function TJogador.getNome: String;
begin
result := Fnome
end;

function TJogador.getPosicao: String;
begin
result := Fposicao
end;

procedure TJogador.setid(const Value: integer);
begin
Fid := value
end;

procedure TJogador.setIdade(const Value: Integer);
begin
FIdade := Value
end;

procedure TJogador.setNome(const Value: String);
begin
FNome := Value
end;

procedure TJogador.setPosicao(const Value: String);
begin
FPosicao := value
end;

end.
