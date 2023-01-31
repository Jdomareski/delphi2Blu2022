unit UConcreteCommand;

interface

uses
  UCommand, UReceiver;

Type
  TProcessos = Class(TInterfacedObject, Icommand)

  private
    // variavel para armazenar a refer�ncia do receiver
    FReceiver: TREceiver;

  public
    Constructor Create(aReceiver: TREceiver);

    // Assinatura da interface - M�todo de execu��o da op�racao

    procedure execute;
  End;

  TProgramas = Class(TInterfacedObject, Icommand)

  private
    // variavel para armazenar a refer�ncia do receiver
    FReceiver: TREceiver;

  public
    Constructor Create(aReceiver: TREceiver);

    // Assinatura da interface - M�todo de execu��o da op�racao

    procedure execute;
  End;

  TVariaveisAmbiente = Class(TInterfacedObject, Icommand)

  private
    // variavel para armazenar a refer�ncia do receiver
    FReceiver: TREceiver;

  public
    Constructor Create(aReceiver: TREceiver);

    // Assinatura da interface - M�todo de execu��o da op�racao

    procedure execute;
  End;

implementation

{ TProcessos }

constructor TProcessos.Create(aReceiver: TREceiver);
begin
  FReceiver := aReceiver;

end;

procedure TProcessos.execute;
begin
  FReceiver.ExtrairProcessos;

end;

{ TProgramas }

constructor TProgramas.Create(aReceiver: TREceiver);
begin
  FReceiver := aReceiver;

end;

procedure TProgramas.execute;
begin
  FReceiver.ExtrairProgramas;

end;

{ TPVariaveisAmbiente }

constructor TVariaveisAmbiente.Create(aReceiver: TREceiver);
begin
  FReceiver := aReceiver;

end;

procedure TVariaveisAmbiente.execute;
begin
  FReceiver.ExtrairVariaveisAmbiente;

end;

end.
