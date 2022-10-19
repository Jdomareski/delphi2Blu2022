unit TobjComb;

interface


type

tTipo = (tpAlcool, tpGasolina, tpGasolinaAditivada, tpDiesel);

TBombaCombustivel = Class

Private
    FCombustivel : String;
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
      Function abastPorValor(Const aValor : String): String;
      function abastPorLitro(Const aLitros: String): String;
      procedure alterarValor(Const aValor :String);
      procedure alterarCombustivel(Const aNome: String);
      procedure alterarQuantidade(Const aQtd : double);
      Property Combustivel: String read getCombustivel write setCombustivel;
      Property Valor: currency read getvalor write setvalor;
      Property Quantidade: double read getQuantidade write setQuantidade;
      Property PrecoPLts: currency read getPrecoPLts write setPrecoPLts;

End;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TBombaCombustivel }

function TBombaCombustivel.abastPorLitro(Const aLitros: String): String;
    var
      xValor : Currency;
      xLitros: Double;
    begin
      if not (TryStrToFloat(aLitros, xLitros) and (xLitros  <= quantidade)) then
        raise Exception.Create('Não há Combustível Suficiente na Bomba');
      xValor := xLitros * PrecoPLts;
      FQuantidade := Fquantidade - xLitros;
      Result := 'Abastecendo ' + FormatFloat('0.##', xLitros) + ' litro(s), ' +
                'o total a pagar será de R$' + FormatFloat('0.##', xValor) +
                #13#10 + 'Restando ' + Quantidade.ToString + ' litro(s) na bomba.';
    end;


Function TBombaCombustivel.abastPorValor(Const aValor : String): String;
  var
    xQtd : Double;
    xValor: Currency;
  begin
    if TryStrToCurr(aValor, xValor) and (xValor > 0) then
      begin
        xqtd := xValor / PrecoPLts;
        if (xqtd > quantidade) and (xqtd > 0) then
          raise Exception.Create('Não há Combustível Suficiente na Bomba');
        FQuantidade := Fquantidade - xQtd;
        Result := 'Pagando R$' + FormatFloat('0.##', xValor) + ', ' +
                  'o total abastecendo será de ' + FormatFloat('0.##', xqtd) +
                  ' litro(s).' + #13#10 + 'Restando ' + Quantidade.ToString +
                  ' litro(s) na bomba.';
      end
    else
      raise Exception.Create('Erro de Covnersão!');
  end;


procedure TBombaCombustivel.alterarCombustivel(Const aNome: string);

  begin
  Fcombustivel := aNome;
  end;

procedure TBombaCombustivel.alterarQuantidade(Const aQtd : double);
  begin
    FQuantidade := aQtd;
  end;

procedure TBombaCombustivel.alterarValor(Const aValor :String);
  var
    xValor : Currency;
  begin
    if TryStrToCurr(aValor, xValor) then
      FPrecoPLTS := xValor
    else
      ShowMessage('Insira o valor corretamente');
  end;

function TBombaCombustivel.getCombustivel: String;
  begin
    Result := Combustivel
  end;

function TBombaCombustivel.getPrecoPLts: currency;
  begin
    Result := FPrecoPLts
  end;

function TBombaCombustivel.getQuantidade: double;
  begin
    Result := FQuantidade
  end;

function TBombaCombustivel.getvalor: currency;
begin
    Result := FValor
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
