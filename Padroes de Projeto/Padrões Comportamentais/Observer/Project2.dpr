program Project2;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {UfrmPrincipal2},
  USubject in 'Pattern\USubject.pas',
  UNOtificacao in 'Pattern\UNOtificacao.pas',
  UObserver in 'Pattern\UObserver.pas',
  UConcreteObserver_Log in 'Pattern\UConcreteObserver_Log.pas' {FraLog: TFrame},
  UConcreteObserver_Saldo in 'Pattern\UConcreteObserver_Saldo.pas' {FraSaldo: TFrame},
  UConcreteObserver_Historico in 'Pattern\UConcreteObserver_Historico.pas' {FraHistorico: TFrame},
  UConcretesubject in 'Pattern\UConcretesubject.pas' {FraCadastro: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUfrmPrincipal2, UfrmPrincipal2);
  Application.Run;
end.
