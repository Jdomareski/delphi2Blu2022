unit UPrazoMensal;

interface
uses UTipoPrazo, sysutils, classes;
type
  TPrazoMensal = class(TInterfacedObject, ITipoPrazo)
    private
      FValorTotal: Real;
    public
      function ConsultarDescricao: String;
      function ConsultarJuros: String;
      function ConsultarProjecao(const aValor: Real; const aQtdParcelas: Integer): String;
      function ConsultarTotal: String;
  end;

implementation

{ TPrazoMensal }

function TPrazoMensal.ConsultarDescricao: String;
begin
result := 'Prazo Mensal para pagamento';

end;

function TPrazoMensal.ConsultarJuros: String;
begin
Result := 'Juros de 3,1% simples ao mês' + Slinebreak;
end;

function TPrazoMensal.ConsultarProjecao(const aValor: Real;
  const aQtdParcelas: Integer): String;
    var
  xProjecao : TStringList;
  xContador : Smallint;
  xValorAjustado : real;
  xDataParcela : TDateTime;

begin
xValorAjustado := aValor;
xdataParcela := Date;
xProjecao := Tstringlist.create;

try
for xcontador  := 1 to aQtdParcelas do
  begin
    xValorAjustado := xValorAjustado + (aValor * 0.031);
    xDataParcela := IncMOnth(xDataParcela, 1);

    xProjecao.add(Format('parcela %.2d (%s) : %m',
      [xContador, DateToStr(xDataParcela), xValorAjustado]));

      FValorTotal := fValorTotal + XValorAjustado;
  end;

  Result := xProjecao.text;
finally
FreeAndNil(xProjecao);
end;

end;

function TPrazoMensal.ConsultarTotal: String;

begin
Result := 'Total:  ' + FormatFloat('###, ##0.00', FValorTotal);
end;

end.
