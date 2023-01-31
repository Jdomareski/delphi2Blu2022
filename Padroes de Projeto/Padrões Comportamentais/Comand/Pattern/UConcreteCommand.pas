unit UConcreteCommand;

interface

uses
  UCommand, UReceiver;

Type
  TProcessos = Class(TInterfacedObject, Icommand)

  private
    // variavel para armazenar a referência do receiver
    FReceiver: TREceiver;

  public
    Constructor Create(aReceiver: TREceiver);

    // Assinatura da interface - Método de execução da opéracao

    procedure execute;
  End;

  TProgramas = Class(TInterfacedObject, Icommand)

  private
    // variavel para armazenar a referência do receiver
    FReceiver: TREceiver;

  public
    Constructor Create(aReceiver: TREceiver);

    // Assinatura da interface - Método de execução da opéracao

    procedure execute;
  End;

  TVariaveisAmbiente = Class(TInterfacedObject, Icommand)

  private
    // variavel para armazenar a referência do receiver
    FReceiver: TREceiver;

  public
    Constructor Create(aReceiver: TREceiver);

    // Assinatura da interface - Método de execução da opéracao

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
