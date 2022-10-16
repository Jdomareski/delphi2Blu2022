unit UPessoas;

interface
type
Tpessoa = Class
  FNome, FEndereco : String;
    Private
        function getendereco: string;
        function getNome: string;
        procedure setEndereco(const Value: string);
        procedure setNome(const Value: string);
    Public
        Property Nome: string read getNome write setNome;
        Property Endereco: string read getendereco write setEndereco;
        Procedure Gravar (aPessoa : Tpessoa); virtual; abstract;
    End;



TPessoafisica = Class (TPessoa)
  FCPF, FIdade : String;
    Private
        function getCpf: String;
        function getIdade: String;
        procedure setCpf(const Value: String);
        procedure setIdade(const Value: String);


    Public
        function isCPF(CPF: string): boolean;
        function imprimeCPF(CPF: string): string;
        Property CPF: String read getCpf write setCpf;
        Property Idade: String read getIdade write setIdade;
        procedure Gravar (aPessoa : Tpessoa); override;
    end;

TPessoajuridica = class (TPessoa)
  FCNPJ, FIE : string;
  private
        function getCNPJ: string;
        function getIE: string;
        procedure setCNPJ(const Value: string);
        procedure setIE(const Value: string);
  public
        function isCNPJ(CNPJ: string): boolean;
        function imprimeCNPJ(CNPJ: string): string;
        Property CNPJ : string read getCNPJ write setCNPJ;
        Property IE : string read getIE write setIE;
        Procedure Gravar (apessoa : Tpessoa); override;

end;


implementation
uses
Vcl.Dialogs, System.SysUtils;

{$REGION 'TPESSOA'}
{ Tpessoa }
  function Tpessoa.getendereco: string;
    begin
     Result := FEndereco;
    end;
   procedure Tpessoa.setEndereco(const Value: string);
    begin
     FEndereco := value;
    end;

  function Tpessoa.getNome: string;
    begin
     Result := FNome;
    end;
   procedure Tpessoa.setNome(const Value: string);
    begin
     FNome := value;
    end;

{$ENDREGION}

{$REGION 'TPESSOA FISICA'}
  function TPessoafisica.getCpf: String;
    begin
    Result := FCPF;
    end;
  procedure TPessoafisica.setCpf(const Value: String);
    begin
    FCPF := Value;
    end;
  function TPessoafisica.getIdade: String;
    begin
    Result := FIdade;
    end;
  procedure TPessoafisica.setIdade(const Value: String);
    begin
    FIdade := Value;
    end;
  procedure TPessoafisica.Gravar(aPessoa: Tpessoa);
    begin

    end;

function TPessoafisica.imprimeCPF(CPF: string): string;
begin
 imprimeCPF := copy(CPF, 1, 3) + '.' + copy(CPF, 4, 3) + '.' +
 copy(CPF, 7, 3) + '-' + copy(CPF, 10, 2);
end;

function TPessoafisica.isCPF(CPF: string): boolean;
 var  dig10, dig11: string;
      s, i, r, peso: integer;
  begin
   if ((CPF = '00000000000') or (CPF = '11111111111') or
        (CPF = '22222222222') or (CPF = '33333333333') or
        (CPF = '44444444444') or (CPF = '55555555555') or
        (CPF = '66666666666') or (CPF = '77777777777') or
        (CPF = '88888888888') or (CPF = '99999999999') or
        (length(CPF) <> 11))
       then begin
                isCPF := false;
                exit;
              end;
              // try - protege o c�digo para eventuais erros de convers�o de tipo na fun��o StrToInt

              try
              { *-- C�lculo do 1o. Digito Verificador --* }
              s := 0;
                peso := 10;
                for i := 1 to 9 do
                begin
                  // StrToInt converte o i-�simo caractere do CPF em um n�mero
                  s := s + (StrToInt(CPF[i]) * peso);
                  peso := peso - 1;
                end;
                r := 11 - (s mod 11);
                  if ((r = 10) or (r = 11))
                     then dig10 := '0'
                  else str(r:1, dig10); // converte um n�mero no respectivo caractere num�rico
              { *-- C�lculo do 2o. Digito Verificador --* }
              s := 0;
                  peso := 11;
                  for i := 1 to 10 do
                  begin
                    s := s + (StrToInt(CPF[i]) * peso);
                    peso := peso - 1;
                  end;
                  r := 11 - (s mod 11);
                  if ((r = 10) or (r = 11))
                     then dig11 := '0'
                  else str(r:1, dig11);
              { Verifica se os digitos calculados conferem com os digitos informados. }
               if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
                    then isCPF := true
                else isCPF := false;
                    except
                    isCPF := false
  end;

end;

{$ENDREGION}


{ TPessoajuridica }

function TPessoajuridica.getCNPJ: string;
  begin
   Result := fCNPJ
  end;

  function TPessoajuridica.getIE: string;
  begin
   Result := FIE
  end;

procedure TPessoajuridica.Gravar(apessoa: Tpessoa);
  begin

  end;

procedure TPessoajuridica.setCNPJ(const Value: string);
  begin
  FCNPJ := value;
  end;

procedure TPessoajuridica.setIE(const Value: string);
  begin
   FIE := value;
  end;




function TPessoajuridica.isCNPJ(CNPJ: string): boolean;
var
dig13, dig14: string;
 sm, i, r, peso: integer;
    begin
    if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
                (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
                (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
                (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
                (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
                (length(CNPJ) <> 14))
               then begin
                      isCNPJ := false;
                      exit;
                    end;

          // "try" - protege o c�digo para eventuais erros de convers�o de tipo atrav�s da fun��o "StrToInt"
              try
               { *-- C�lculo do 1o. Digito Verificador --* }
                  sm := 0;
                  peso := 2;
                  for i := 12 downto 1 do
                  begin
    // StrToInt converte o i-�simo caractere do CNPJ em um n�mero
                  sm := sm + (StrToInt(CNPJ[i]) * peso);
                  peso := peso + 1;
                  if (peso = 10)
                     then peso := 2;
                end;
                  r := sm mod 11;
                  if ((r = 0) or (r = 1))
                     then dig13 := '0'
                  else str((11-r):1, dig13); // converte um n�mero no respectivo caractere num�rico

    { *-- C�lculo do 2o. Digito Verificador --* }
                  sm := 0;
                  peso := 2;
                  for i := 13 downto 1 do
                  begin
                    sm := sm + (StrToInt(CNPJ[i]) * peso);
                    peso := peso + 1;
                    if (peso = 10)
                       then peso := 2;
                  end;
                  r := sm mod 11;
                  if ((r = 0) or (r = 1))
                     then dig14 := '0'
                  else str((11-r):1, dig14);

    { Verifica se os digitos calculados conferem com os digitos informados. }
                  if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
                     then isCNPJ := true
                  else isCNPJ := false;
                except
                  isCNPJ := false
    end;

  end;

  function TPessoajuridica.imprimeCNPJ(CNPJ: string): string;
  begin
    { m�scara do CNPJ: 99.999.999.9999-99 }
          imprimeCNPJ := copy(CNPJ, 1, 2) + '.' + copy(CNPJ, 3, 3) + '.' +
            copy(CNPJ, 6, 3) + '.' + copy(CNPJ, 9, 4) + '-' + copy(CNPJ, 13, 2);
  end;
end.
