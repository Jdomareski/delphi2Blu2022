unit UInterfaces;


interface
type
INotebook = Interface
  ['{7A3D6666-55E8-42A0-8B6D-454C589FB478}']
  Function BuscarTamanhoTela : String;
  function BuscarMemoriaRam : String;
End;

IDesktop = interface
  ['{9530B04C-4FD2-41F3-ACF8-DAE8B1907214}']
  Function BuscarNomeProcessador : String;
  Function BuscarTamanhoHD : String;
end;

IFactoryMarca = INterface
  ['{6540405A-12E9-4E21-8280-E5E39CDC44F0}']
  Function ConsultarNotebook : Inotebook;
  Function ConsultarDesktop : IDesktop;
End;

implementation

end.
