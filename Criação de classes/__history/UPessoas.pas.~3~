unit UPessoas;

interface
type

  TPessoa = Class
    Private
      FNome : string;
      FData : TDate;
      FAltura : Double;

      function GetAltura: Double;
      function GetData: TDate;
      function GetNome: String;

      procedure SetAltura(const Value: Double);
      procedure Setdata(const Value: TDate);
      procedure SetNome(const Value: String);

   Public
      Function CalcIdade : Double;

      Property Nome : String read GetNome write SetNome;
      Property Data : TDate read GetData write Setdata;
      Property Altura : Double read GetAltura write SetAltura;
  End;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.CalcIdade: Double;
var
xData : Tdate;
xAno, xMes, xDia: Word;

    begin
    xData := FData;
    decodeDate(xData, XAno, xMes, Xdia);
    Result := 2022 - XAno;
    end;

function TPessoa.GetAltura: Double;
  begin
    result := FAltura;
  end;

function TPessoa.GetData: TDate;
  begin
    result := Fdata;
  end;

function TPessoa.GetNome: String;
  begin
    result := FNome;
  end;

procedure TPessoa.SetAltura(const Value: Double);
  begin
    FAltura := Value;
  end;

procedure TPessoa.Setdata(const Value: TDate);
  begin
    FData := Value;
  end;

procedure TPessoa.SetNome(const Value: String);
  begin
    FNome := Value;
  end;

end.
