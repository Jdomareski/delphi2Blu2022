unit ContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UConta;

type
  TForm1 = class(TForm)
    EDT_NConat: TEdit;
    EDT_Nome: TEdit;
    EDT_Saldo: TEdit;
    BT_AltNome: TButton;
    BT_Ins: TButton;
    LB_NunConta: TLabel;
    LB_Nome: TLabel;
    LB_Saldo: TLabel;
    BT_dep: TButton;
    BT_Saque: TButton;
    procedure BT_InsClick(Sender: TObject);
    procedure BT_AltNomeClick(Sender: TObject);
    procedure BT_depClick(Sender: TObject);
    procedure BT_SaqueClick(Sender: TObject);
  private
    fConta : TConta;
    Procedure Cadastrar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.BT_AltNomeClick(Sender: TObject);
begin
  fconta.Nome     := EDT_Nome.Text;
  LB_Nome.caption := ('Nome do Titular:  ' + fconta.Nome);
end;

procedure TForm1.BT_depClick(Sender: TObject);
begin
//if (Not assigned(fconta)) then
//  raise Exception.Create('Conta não criada');
  fconta.deposito(strTocurr(inputbox('Depósito', 'Insira o Valor que quer depositar', '0')));
  LB_Saldo.caption    := ('saldo Atual: R$ ') + CurrToStr(fconta.Saldo);
end;

procedure TForm1.BT_InsClick(Sender: TObject);
begin
 Cadastrar;
end;

procedure TForm1.BT_SaqueClick(Sender: TObject);
begin
  fconta.Saque(strTocurr(inputbox('Saque', 'Insira o Valor que quer sacar', '0')));
  LB_Saldo.caption    := ('Saldo Conta: R$ ') + CurrToStr(fconta.Saldo);
end;

procedure TForm1.Cadastrar;

  begin
  fconta := Tconta.create(strToint(EDT_NConat.Text), (EDT_Nome.Text), strToCurr(EDT_Saldo.Text));

  LB_NunConta.caption := ('Conta Número:  ')     + fconta.Conta.ToString;
  LB_Nome.caption     := ('Nome do Titular:  '   + fconta.Nome);
  LB_Saldo.caption    := ('Saldo da Conta: R$ ') + CurrToStr(fconta.Saldo);
  BT_AltNome.Visible := True;
  BT_dep.Visible := True;
  BT_saque.Visible := True;
  LB_NunConta.Visible := True;
  LB_Saldo.Visible := True;
  LB_Nome.Visible := True;

  end;
//     inputbox('Alterar Nome do Titular', 'insira o nome' , '0');
// strTocurr(inputbox('Depósito', 'Insira o Valor que quer depositar', '0'));
//strTocurr(inputbox('Saque', 'Insira o Valor que quer sacar', '0'));
end.
