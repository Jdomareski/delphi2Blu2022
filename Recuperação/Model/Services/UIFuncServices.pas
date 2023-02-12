unit UIFuncServices;

interface

type
  IFuncServices = Interface
    ['{684D15FC-205E-4D7D-9115-908E59865C07}']
    function GetNome: string;
    function getSalario: Double;
    function GetSobrenome: string;
    procedure SetNome(const Value: string);
    procedure setSalario(const Value: Double);
    procedure SetSobrenome(const Value: string);
    property Nome: string read GetNome Write SetNome;
    property Sobrenome: string read GetSobrenome write SetSobrenome;
    property salario: Double read getSalario write setSalario;

  End;

  IRegistro = Interface
    ['{F49314AC-F6A3-4653-85AC-E9DA1CD87939}']
    function GetId: Integer;
    procedure SetId(const Value: Integer);
    function GetDesc: String;
    procedure SetDesc(const Value: String);
    Property Id: Integer read GetId write SetId;
    Property Desc: String read GetDesc write SetDesc;

  End;

implementation

end.
