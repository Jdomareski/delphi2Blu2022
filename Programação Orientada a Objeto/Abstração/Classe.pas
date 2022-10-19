unit Classe;

interface

Type

TAviao = Class
Private
  FCor, FMarca : String;
  FPeso : Double;
  FCapacidade : integer;
      function getCapacidade: integer;
      function getcor: String;
      function getMarca: string;
      function getPeso: Double;
      procedure SetCapacidade(const Value: integer);
      procedure SetCor(const Value: String);
      procedure SetMarca(const Value: string);
      procedure SetPeso(const Value: Double);


Public
      Procedure Ligar;
     Property Cor: String read getcor write SetCor;
     Property Marca: string read getMarca write SetMarca;
     property Peso: Double read getPeso write SetPeso;
     Property Capacidade: integer read getCapacidade write SetCapacidade;
End;

implementation

uses
  Vcl.Dialogs;


{ TAviao }



function TAviao.getCapacidade: integer;
begin
Result:= FCapacidade;
end;

function TAviao.getcor: String;
begin
Result := FCor
end;

function TAviao.getMarca: string;
begin
Result := FMarca
end;

function TAviao.getPeso: Double;
begin
Result := Fpeso
end;

procedure TAviao.Ligar;
begin
ShowMessage('Vruuumm Vruumm');
end;

procedure TAviao.SetCapacidade(const Value: integer);
begin
Capacidade := Value;
end;

procedure TAviao.SetCor(const Value: String);
begin
Cor := Value;
end;

procedure TAviao.SetMarca(const Value: string);
begin
Marca := value;
end;

procedure TAviao.SetPeso(const Value: Double);
begin
Peso := value;
end;

{ TAviao }


end.
