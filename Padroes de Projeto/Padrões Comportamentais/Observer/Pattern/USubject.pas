unit USubject;

interface

uses
  UObserver;

type
  ISubsject = Interface
    // Metodo para adicionar observers à lista
    Procedure AdicionarObserver(aObserver: IObserver);

    // Métodos para remover observers da lista
    procedure RemoverObserver(aObserver: IObserver);

    // Método responsável por notificar os oservers
    procedure Notificar;
  End;

implementation

end.
