unit UObserver;

interface

Uses
UNotificacao;

type
IObserver = Interface
  Procedure Atualizar(aNotificacao: TNotificacao);
End;

implementation

end.
