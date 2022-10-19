unit Classe;

interface

Type

TAviao = Class
  FCor, FMarca : String;
  FPeso : Double;
  FCapacidade : integer;


Private
    procedure SetCor(const Value: String);
    procedure SetMarca(const Value: string);
    procedure SetPeso(const Value: Double);
    procedure SetCapacidade(const Value: Integer);

Public
   Property Cor: String read FCor write SetCor;
   Property Marca: string read FMarca write SetMarca;
   property Peso: Double read FPeso write SetPeso;
   Property Capacidade: Integer read FCapacidade write SetCapacidade;
End;

implementation

{ TAviao }

procedure TAviao.SetCapacidade(const Value: Integer);
begin
  FCapacidade := Value;
end;

procedure TAviao.SetCor(const Value: String);
begin
  FCor := Value;
end;

procedure TAviao.SetMarca(const Value: string);
begin
  FMarca := Value;
end;

procedure TAviao.SetPeso(const Value: Double);
begin
  FPeso := Value;
end;

end.
