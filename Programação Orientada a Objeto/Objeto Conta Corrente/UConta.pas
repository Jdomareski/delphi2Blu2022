unit UConta;


interface

type
  TConta = Class
  private
    FNum : Integer;
    FNome : String;
    FSaldo : Currency;

      function getConta: Integer;
      function getNome: String;
      function getSaldo: Currency;

      procedure setConta(const Value: Integer);
      procedure setNome(const Value: String);
      procedure setSaldo(const Value: Currency);

  public
      Procedure alteraNome(Const aNome : string);
      Procedure deposito(Const adeposito : currency);
      Procedure Saque(Const asaque : Currency);

      Constructor create(Const num : Integer; Const Nome : String; Const Saldo : Currency);

      Property Conta: Integer read getConta write setConta;
      Property Nome: String read getNome write setNome;
      Property Saldo: currency read getSaldo write setSaldo;

  End;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TConta }

procedure TConta.AlteraNome (Const aNome : string);
    begin
    Nome := anome;
    end;


constructor TConta.create(const num: Integer; const Nome: String;
const Saldo: Currency);
    begin
      Fnum := num;
      FNome := Nome;
      FSaldo := Saldo;
    end;

procedure TConta.deposito(Const adeposito : currency);
var
deposito : currency;

    begin
       deposito := adeposito;
       Saldo := Saldo + deposito;
    end;

function TConta.getConta: Integer;
    begin
       result := FNum;
    end;

function TConta.getNome: String;
    begin
       result := FNome;
    end;

function TConta.getSaldo: Currency;
    begin
       result := FSaldo;
    end;


procedure TConta.Saque(Const asaque : Currency);
var
 saque : currency;
    begin
    saque := aSaque;
    Saldo := Saldo - saque;
    end;

procedure TConta.setConta(const Value: Integer);
    begin
     FNum := Value;
    end;

procedure TConta.setNome(const Value: String);
    begin
     FNome := Value;
    end;

procedure TConta.setSaldo(const Value: Currency);
    begin
     Fsaldo := Value;
    end;

end.
