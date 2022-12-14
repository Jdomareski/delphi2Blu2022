unit CCor;

interface

type


TCCorrente = Class   //Inicializa??o do objeto com caracter?sticas do tipo padr?o classe

private    // aquilo que vai ser oculto para outras unites.
FNumero_Conta : Integer;  { 'F' de field - obrigat?rio. o que for declarado aqui pode ser
                           usado em toda unit}
FNome : string;
FSaldo : Currency;
    function getConta_Numero: Integer;  // Segundo passo, criado automaticamente pelo property com teclas de atalho
    function getNome: String;
    function getSaldo: Currency;
    procedure setConta(const Value: Integer);
    procedure setNome(const Value: String);
    procedure setSaldo(const Value: Currency);

public
    Procedure alteraNome(const aNome : String);        //aqui uma procedure criada para alterar o nome j? nserido.
    procedure deposito(const adeposito : Currency);    //Procedure para simular o dep?sito e depois atualizar o saldo.
    procedure saque(const asaque : currency);          // simula saque e atualiza o saldo

    Constructor create(const Numero_Conta : Integer; Nome : string; saldo : Currency);  // determina os argumentos utilizados pelo constructer)

    Property Numero_Conta: Integer read getConta_Numero write setConta;  // Primeira coisa a fazer depois de criar o ojeto
    Property  Nome : String read getNome write setNome;
    Property Saldo : Currency read getSaldo write setSaldo;




End;

implementation

{ TCCorrente }

procedure TCCorrente.alteraNome(const aNome: String);
begin

end;

constructor TCCorrente.create(const Numero_Conta: Integer; Nome: string;
  saldo: Currency);
begin

end;

procedure TCCorrente.deposito(const adeposito: Currency);
begin

end;

function TCCorrente.getConta_Numero: Integer;
begin

end;

function TCCorrente.getNome: String;
begin

end;

function TCCorrente.getSaldo: Currency;
begin

end;

procedure TCCorrente.saque(const asaque: currency);
begin

end;

procedure TCCorrente.setConta(const Value: Integer);
begin

end;

procedure TCCorrente.setNome(const Value: String);
begin

end;

procedure TCCorrente.setSaldo(const Value: Currency);
begin

end;

end.
