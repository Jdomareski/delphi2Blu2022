unit UiMac;

Interface

uses UInterfaces;


Type
TImac = Class(TinterfacedObject, IDesktop)
Function BuscarNomeProcessador : String;
Function BuscarTamanhoHD : String;

end;

implementation

{TIMAC}

Function TImac.BuscarNomeProcessador : String;
begin
  Result := 'Intel Core I7';
end;

Function TimaC.BuscarTamanhoHD : String;
Begin
  Result := '500 GB';
End;

end.
