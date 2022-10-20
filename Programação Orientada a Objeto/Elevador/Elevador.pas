unit Elevador;

interface
type


Televador = class
Private
fCap, fTotalAndares, fPessoas : Integer;
fAndarAtual: Integer;
      function getAndarAtual: Integer;
      function getCap: Integer;
      function getPessoas: Integer;
      function getTotalAndares: Integer;
      procedure setAndarAtual(const Value: Integer);
      procedure setCap(const Value: Integer);
      procedure setPessoas(const Value: Integer);
      procedure setTotalAndares(const Value: Integer);




Public
      Constructor create(Const Cap : Integer; Const Totalandares : Integer);
      property Capacidade : Integer read getCap write setCap;
      property AndarTot : Integer read getTotalAndares write setTotalAndares;
      property Pessoas : Integer read getPessoas write setPessoas;
      property Andar : Integer read getAndarAtual write setAndarAtual;
      Procedure entra(Const value : Integer);
      Procedure sai(Const Value : Integer);
      Procedure sobe(Const value : Integer);
      Procedure Desce(Const Value : Integer);



end;

implementation

{ Televador }

constructor Televador.create(const Cap, Totalandares: Integer);
begin
fCap := Cap;
fTotalAndares := Totalandares;
fAndarAtual := 0;
fPessoas := 0;
end;

procedure Televador.Desce(const Value: Integer);
begin
if (Andar > 0) and ((Andar - Value) >= 0) then
Andar

end;

procedure Televador.entra(const value: Integer);
begin

end;

function Televador.getAndarAtual: Integer;
begin
Result := fAndarAtual
end;

function Televador.getCap: Integer;
begin
Result :=  fCap

end;

function Televador.getPessoas: Integer;
begin
Result := fPessoas
end;

function Televador.getTotalAndares: Integer;
begin
Result := fTotalAndares
end;

procedure Televador.sai(const Value: Integer);
begin

end;

procedure Televador.setAndarAtual(const Value: Integer);
begin
fAndarAtual := value
end;

procedure Televador.setCap(const Value: Integer);
begin
fCap:= value
end;

procedure Televador.setPessoas(const Value: Integer);
begin
fPessoas := value
end;

procedure Televador.setTotalAndares(const Value: Integer);
begin
ftotalAndares := value
end;

procedure Televador.sobe(const value: Integer);
begin

end;

end.
