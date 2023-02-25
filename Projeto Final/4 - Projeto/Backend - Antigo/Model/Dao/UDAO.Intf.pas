unit UDAO.Intf;

interface
uses
System.JSON;

Type
IDAO = Interface

Function ObterRegistros : TJSONArray;
Function ProcurarPorId(Const aIdentificador: Integer): TJSONObject;
Function AdicionarRegistro(aRegistro: TJSONObject): Boolean;
Function DeletarRegistro(Const aIdentificador: Integer): Boolean;

End;

implementation

end.
