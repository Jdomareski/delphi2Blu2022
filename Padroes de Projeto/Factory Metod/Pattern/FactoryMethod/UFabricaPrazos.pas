unit UFabricaPrazos;

interface

uses UTipoPrazo, UPrazoAnual, UPrazoMensal;
Type

TFabricaPrazos = class(TinterfacedObject, IFactoryMethod)
   function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
end;

implementation

{ TFabricaPrazos }

function TFabricaPrazos.ConsultarPrazo(const aPrazo: String): ITipoPrazo;
begin

  if aprazo = 'Mensal' then
  result := TPrazoMensal.create
  else if aprazo = 'Anual' then
  result := TPrazoanual.create
end;

end.
