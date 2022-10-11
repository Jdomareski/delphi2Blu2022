unit UTriangulo;

interface

type
  TTriangulo = class
    Private
      Fa: Double;
      Fb: Double;
      Fc: Double;
      Fd: Double;

        function GetA: Double;
        procedure SetA(const Value: Double);
        function GetB: Double;
        procedure SetB(const Value: Double);
        function GetC: Double;
        procedure SetC(const Value: Double);

    public
      function Area : Double;

        Property A: Double read GetA write SetA;
        Property B: Double read GetB write SetB;
        Property C: Double read GetC write SetC;
        Property D: Double read GetD //property somente leitura
  end;

implementation

{ TTriangulo }

function TTriangulo.Area: Double;
var
  xP : Double;
begin
  xP  := (Fa + Fb + Fc) /2;
  result := sqrt(xP*(xP - Fa) * (xP - Fb) * (xP - Fc));
end;

function TTriangulo.GetA: Double;
begin
  result := Fa
end;

function TTriangulo.GetB: Double;
begin
  result := Fb
end;

function TTriangulo.GetC: Double;
begin
  result := Fc
end;

procedure TTriangulo.SetA(const Value: Double);
begin
Fa := Value;
end;

procedure TTriangulo.SetB(const Value: Double);
begin
Fb := Value;
end;

procedure TTriangulo.SetC(const Value: Double);
begin
 Fc := Value;
end;

end.
