unit Udao.intf;

interface
uses

system.JSON;

type
IDAO = Interface
  function ObterRegistros : TJSONArray;
  function ProcurarPorID(Const aIdentificador: Integer): TJSONObject;
  function adicionarRegistro(aregistro: TJSONObject): Boolean;
  function DeletarRegistro(const aIdentificador: Integer): Boolean;


End;
implementation

end.
