unit UInspiron;

interface
uses
UInterfaces;

Type
TInspiron = class(TinterfacedObject, IDesktop)
  Function BuscarNomeProcessador : String;
  Function BuscarTamanhoHD : String;
end;


implementation

{TIspiron}

Function TInspiron.BuscarNomeProcessador: string;
Begin
  Result := 'Intel Core i5';
End;

Function TInspiron.BuscarTamanhoHD: string;
Begin
  Result := '1TB';
End;

end.
