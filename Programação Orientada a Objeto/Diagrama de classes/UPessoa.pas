unit UPessoa;

interface

type

TPessoa = Class
  Fnome, fEndereco : String;

  private
    function getEndereco: String;
    function getNome: String;
    procedure setendereco(const Value: String);
    procedure setNome(const Value: String);


  public
    property Nome: String read getNome write setNome;
    property Endereco: String read getEndereco write setendereco;
    procedure Gravar(aPessoa: TPessoa); virtual; abstract;
end;


TPessoaFisica = Class (TPessoa)
  FCPF : String;
  FIdade : Byte;

  Private
      function getCPF: String;
      function getIdade: Byte;
      procedure setCPF(const Value: String);
      procedure setIdade(const Value: Byte);


  Public

    Property CPF : String read getCPF write setCPF;
    Property Idade : Byte read getIdade write setIdade;
    procedure Gravar(aPessoa: TPessoa); override;

End;

TPessoaJuridica = Class (TPessoa)
  FCNPJ, FIE : String;

  Private

    function getCNPJ: String;
    procedure setCNPJ(const Value: String);
    function getIE: String;
    procedure setIE(const Value: String);

  Public

    Property CNPJ : String read getCNPJ write setCNPJ;
    Property IE : String read getIE write setIE;
    procedure Gravar(aPessoa: TPessoa); override;

End;


implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TPessoa }

function TPessoa.getEndereco: String;
begin
  Result := FEndereco;
end;

function TPessoa.getNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.setendereco(const Value: String);
begin
 Fendereco := value;
end;

procedure TPessoa.setNome(const Value: String);
begin
 FNome := value;
end;

{ TPessoaFisica }

function TPessoaFisica.getCPF: String;
begin
 Result := FCPF;
end;

function TPessoaFisica.getIdade: Byte;
begin
Result := FIdade;
end;

procedure TPessoaFisica.Gravar(aPessoa: TPessoa);
begin
   showmessage(apessoa.nome + #13#10 + apessoa.nome + #13#10 + TPessoaFisica(apessoa).CPF + #13#10 + IntToStr(TPessoaFisica(apessoa).Idade));
end;

procedure TPessoaFisica.setCPF(const Value: String);
begin
 FCPF := value;
end;

procedure TPessoaFisica.setIdade(const Value: Byte);
begin
 FIdade := value;
end;

{ TPessoaJuridica }


function TPessoaJuridica.getCNPJ: String;
begin
Result := FCNPJ;
end;

function TPessoaJuridica.getIE: String;
begin
Result := FIE;
end;

procedure TPessoaJuridica.Gravar(aPessoa: TPessoa);
begin

end;

procedure TPessoaJuridica.setCNPJ(const Value: String);
begin
 FCNPJ := value;
end;

procedure TPessoaJuridica.setIE(const Value: String);
begin
 FIE := value;
end;

end.
