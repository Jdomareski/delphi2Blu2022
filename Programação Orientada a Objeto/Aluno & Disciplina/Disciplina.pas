unit Disciplina;

interface

Type

TAluno = Class

  Private
    fMatricula : Integer;
    fNome: String;
    function getMatricula: Integer;
    function getNome: String;
    procedure setMatricula(const Value: Integer);
    procedure setNome(const Value: String);

  Public
    Procedure MediaGeral;
    function VerExame;
    Property Matricula : Integer read getMatricula write setMatricula;
    Property Nome : String read getNome write setNome;

End;

TDisciplina = class

    private
    fNotaProva1, fNotaProva2, fNotaTrabalho : Double;

    function getNotaProva1: Double;
    function getNotaProva2: Double;
    function getNotaTrabalho: Double;
    procedure setNotaProva1(const Value: Double);
    procedure setNotaProva2(const Value: Double);
    procedure setNotaTrabalho(const Value: Double);

  public

    property NProva1 : Double read getNotaProva1 write setNotaProva1;
    property NProva2 : Double read getNotaProva2 write setNotaProva2;
    Property nTrabalho : Double read getNotaTrabalho write setNotaTrabalho;

 end;

implementation

{ TAluno }
{$Region : "Aluno"}
function TAluno.getMatricula: Integer;
  begin
    Result := Matricula
  end;

function TAluno.getNome: String;
  begin
    Result := Nome
  end;

procedure TAluno.setMatricula(const Value: Integer);
  begin
    fmatricula := Value
  end;

procedure TAluno.setNome(const Value: String);
  begin
    fNome := Value
  end;
{$ENDREGION}
{ TDisciplina }

{$REGION "Disciplina"}
function TDisciplina.getNotaProva1: Double;
begin
  Result := NProva1
end;

function TDisciplina.getNotaProva2: Double;
begin
  Result := NProva2
end;

function TDisciplina.getNotaTrabalho: Double;
begin
  Result := NTrabalho
end;

procedure TDisciplina.setNotaProva1(const Value: Double);
begin
  fNotaProva1 := Value
end;

procedure TDisciplina.setNotaProva2(const Value: Double);
begin
  fNotaProva2 := Value
end;

procedure TDisciplina.setNotaTrabalho(const Value: Double);
begin
  fNotaTrabalho := value
end;
{$ENDREGION}
end.
