unit Unit2;

interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

Type
  TPessoa = Class
    FCPF: String;
    FNome: String;
    FEspecialidade: String;

  Private
    function GetCPF: String;
    function GetEspecialidade: String;
    function GetNome: String;
    procedure SetCPF(const Value: String);
    procedure SetEspecialidade(const Value: String);
    procedure SetNome(const Value: String);

  Public

    Property CPF: String Read GetCPF Write SetCPF;
    Property Nome: String Read GetNome Write SetNome;
    Property Especialidade: String Read GetEspecialidade Write SetEspecialidade;
  End;

  TFila = class
  Private
    FFila: Tqueue<TPessoa>;

  public
    Function Contar: String;
    Constructor create;
    Procedure Adicionar(aPessoa: TPessoa);
    Function Ultimo : TPessoa;
    Function proximo: TPessoa;

  end;

implementation

{ TPessoa }

function TPessoa.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoa.GetEspecialidade: String;
begin
  Result := FEspecialidade;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoa.SetEspecialidade(const Value: String);
begin
  FEspecialidade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TFila }

procedure TFila.Adicionar(aPessoa: TPessoa);
begin
  FFila.Enqueue(aPessoa);
end;

function TFila.Contar: String;
begin
  Result := FFila.Count.ToString;
end;


constructor TFila.create;
begin
  FFila := Tqueue<TPessoa>.create;
end;

function TFila.proximo: TPessoa;
begin
  Result := FFila.Peek
end;



function TFila.Ultimo: TPessoa;
begin
Result := FFila.Dequeue
end;

end.