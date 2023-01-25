unit UMacBook;

interface
uses
UInterfaces;

type
TMacBook = Class(TinterfacedObject, INotebook)
  function BuscarTamanhoTela : String;
  function BuscarMemoriaRam : String;
End;

implementation

function TMacBook.BuscarTamanhoTela: String;
begin
  Result := '11.6 Polegadas';
end;

Function TMacBook.BuscarMemoriaRam : String;
begin
  Result := '4GB DDR3'
End;

end.
