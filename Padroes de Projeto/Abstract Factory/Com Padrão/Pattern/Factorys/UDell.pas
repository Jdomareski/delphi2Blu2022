unit UDell;

interface

uses
UInterfaces;

type
TDell = Class(TInterfacedObject, IFactoryMarca)
  Function ConsultarNotebook: INotebook;
  Function ConsultarDesktop : IDesktop;

End;

implementation

Uses
UVostro, UInspiron;

//TDELL

Function TDell.ConsultarDesktop  : IDesktop;
Begin
  Result := TInspiron.Create
End;

Function TDell.ConsultarNotebook  : INotebook;
Begin
  Result := TVostro.Create
End;



end.
