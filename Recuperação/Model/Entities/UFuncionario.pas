unit UFuncionario;

interface

uses
  UIFuncServices, System.SysUtils;

type
  TFuncionario = class // (TInterfacedObject, IFuncServices)
  Private
    Fnome, Fsobrenome: String;
    Fsalario: Double;

    function GetNome: string;
    function getSalario: Double;
    function GetSobrenome: string;
    procedure SetNome(const Value: string);
    procedure setSalario(const Value: Double);
    procedure SetSobrenome(const Value: string);

  Public
    Constructor Create;
    property Nome: string read GetNome Write SetNome;
    property Sobrenome: string read GetSobrenome write SetSobrenome;
    property salario: Double read getSalario write setSalario;

  end;

implementation

{ TFuncionario }

constructor TFuncionario.Create;
begin
  Fnome := '';
  Fsobrenome := '';
  Fsalario := 0;
end;

function TFuncionario.GetNome: string;
begin
  Result := Fnome;
end;

function TFuncionario.getSalario: Double;
begin
  Result := Fsalario;
end;

function TFuncionario.GetSobrenome: string;
begin
  Result := Fsobrenome;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  Fnome := Value
end;

procedure TFuncionario.setSalario(const Value: Double);
begin
  Fsalario := Value
end;

procedure TFuncionario.SetSobrenome(const Value: string);
begin
  Fsobrenome := Value
end;

end.
