unit UPrazoAnual;

interface

uses UTipoPrazo, UPrazoMensal;
type
  TPrazoAnual = class(TInterfacedObject, ITipoPrazo)
    private
      FValorTotal: Real;
    public
      function ConsultarDescricao: String;
      function ConsultarJuros: String;
      function ConsultarProjecao(const aValor: Real; const aQtdParcelas: Integer): String;
      function ConsultarTotal: String;
  end;
implementation

uses
sysutils, classes;

{ TPrazoAnual }

function TPrazoAnual.ConsultarDescricao: String;
begin
  Result := 'Prazo Anual para pagamento';
end;

function TPrazoAnual.ConsultarJuros: String;
begin
Result := 'Juros de 10,5% simples a.a.' + Slinebreak;
end;

function TPrazoAnual.ConsultarProjecao(const aValor: Real;
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
  for xcontador := 1 to aQtdParcelas do

    begin
      xValorAjustado := xValorAjustado + (avalor * 0.105);
      xDataParcela := IncMonth(xDataParcela, 12);

      xProjecao.add(Format('parcela %.2d (%s) : %m',
      [xContador, DateToStr(xDataParcela), xValorAjustado]));
      FValorTotal := fValorTotal + XValorAjustado;

    end;

    Result := xProjecao.Text;
finally
   FreeAndNil (xProjecao);
end;


end;

function TPrazoAnual.ConsultarTotal: String;

begin
Result :='Total: ' + FormatFloat ('###, ##0.000', FValorTotal);
end;

end.
