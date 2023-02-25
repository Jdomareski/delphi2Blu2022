unit Uservice.Intf;

interface

type
IService = Interface
  Procedure CarregarToken;
  Procedure Registrar;
  Procedure Listar;
  Procedure Excluir;

  function ObterRegistro(Const aID: Integer): TObject;
End;

implementation

end.
