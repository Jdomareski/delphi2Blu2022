unit TobjComb;

interface

type

tTipo = (tpAlcool, tpGasolina, tpGasolinaAditivada, tpDiesel);

TBombaCombustivel = Class

Private
    FCombustivel : TTipo;
    Fvalor, fPrecoPLts : Currency;
    FQuantidade : Double;

      function getCombustivel: String;
      function getQuantidade: double;
      function getvalor: currency;
      procedure setCombustivel(const Value: String);
      procedure setQuantidade(const Value: double);
      procedure setvalor(const Value: currency);
    function getPrecoPLts: currency;
    procedure setPrecoPLts(const Value: currency);


Public
      procedure abastPorValor(Const avalor : Currency);
      procedure abastPorLitro(Const aLitros: Double);
      procedure alterarValor(Const aValor :String);
      procedure alterarCombustivel(Const aNome: String);
      procedure alterarQuantidade;
      Property Combustivel: String read getCombustivel write setCombustivel;
      Property Valor: currency read getvalor write setvalor;
      Property Quantidade: double read getQuantidade write setQuantidade;
      Property PrecoPLts: currency read getPrecoPLts write setPrecoPLts;

End;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TBombaCombustivel }

procedure TBombaCombustivel.abastPorLitro(Const aLitros: Double);
var
xQtd : double;

  begin
    xqtd := aLitros;

    if xqtd > quantidade then
    raise Exception.Create('N�o h� Combust�vel Suficiente na Bomba');

    FQuantidade := Fquantidade - xQtd;
  end;

procedure TBombaCombustivel.abastPorValor(Const aValor : Currency);
var
xQtd : double;

  begin
    xqtd := aValor / PrecoPLts;

    if xqtd > quantidade then
    raise Exception.Create('N�o h� Combust�vel Suficiente na Bomba');

    FQuantidade := Fquantidade - xQtd;
  end;

procedure TBombaCombustivel.alterarCombustivel(Const aNome: String);

  begin

  end;

procedure TBombaCombustivel.alterarQuantidade;
  begin

  end;

procedure TBombaCombustivel.alterarValor(Const aValor :String);
  var
    xValor : Currency;
  begin
    if TryStrToCurr(aValor, xValor) then
      FValor := xValor
    else
      ShowMessage('Erro');
  end;

function TBombaCombustivel.getCombustivel: String;
  begin
    Result := Combustivel
  end;

function TBombaCombustivel.getPrecoPLts: currency;
  begin
    Result := PrecoPLts
  end;

function TBombaCombustivel.getQuantidade: double;
  begin
    Result := Quantidade
  end;

function TBombaCombustivel.getvalor: currency;
begin
    Result := valor
end;

procedure TBombaCombustivel.setCombustivel(const Value: String);
  begin
    combustivel := value
  end;

procedure TBombaCombustivel.setPrecoPLts(const Value: currency);
  begin
    PrecoPLts := value
  end;

procedure TBombaCombustivel.setQuantidade(const Value: double);
  begin
    Quantidade  := value
  end;

procedure TBombaCombustivel.setvalor(const Value: currency);
  begin
    valor := value
  end;

end.
