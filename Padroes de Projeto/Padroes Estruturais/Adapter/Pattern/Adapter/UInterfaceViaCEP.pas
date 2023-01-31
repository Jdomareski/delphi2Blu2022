unit UInterfaceViaCEP;

interface
type
IWebServiceVIaCEP = INterface
  ['{7B1FBE1A-E61A-4015-B937-6D406ECD5220}']
  Procedure ConsultarEnderecoWebService(Const acep : String);
  Function ObterLogradouro: String;
  Function ObterBairro: String;
  Function ObterCidade: String;
End;

implementation

end.
