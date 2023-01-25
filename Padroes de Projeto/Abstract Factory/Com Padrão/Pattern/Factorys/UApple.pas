unit UApple;

interface

uses
UInterfaces;

type
TApple = Class(TInterfacedObject, IFactoryMarca)
  Function ConsultarNotebook: INotebook;
  Function ConsultarDesktop : IDesktop;

End;

implementation


Uses
UmacBook, UiMac;

//TApple

  Function TApple.ConsultarDesktop  : IDesktop;
Begin
  Result := TImac.Create;
End;

Function TApple.ConsultarNotebook  : INotebook;
Begin
  Result := Tmacbook.Create;
End;

end.
