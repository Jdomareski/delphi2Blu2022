unit USubject;

interface

uses
  UObserver;

type
  ISubsject = Interface
    // Metodo para adicionar observers � lista
    Procedure AdicionarObserver(aObserver: IObserver);

    // M�todos para remover observers da lista
    procedure RemoverObserver(aObserver: IObserver);

    // M�todo respons�vel por notificar os oservers
    procedure Notificar;
  End;

implementation

end.
