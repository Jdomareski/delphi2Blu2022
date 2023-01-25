unit UVostro;

interface
uses
UInterfaces;

type
TVostro = Class(TinterfacedObject, INotebook)
  function BuscarTamanhoTela : String;
  function BuscarMemoriaRam : String;
End;

implementation

function TVostro.BuscarTamanhoTela: String;
begin
  Result := '15 Polegadas';
end;

Function TVostro.BuscarMemoriaRam : String;
begin
  Result := '4GB  DDR3'
End;
end.
