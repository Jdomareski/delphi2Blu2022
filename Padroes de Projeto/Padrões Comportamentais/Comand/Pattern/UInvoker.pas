unit UInvoker;

interface

uses
  System.Classes, UCommand;

Type
  TInvoker = Class
  Private
    // Lista para armazenar os comandos
    FComandos: TInterfaceList;

  Public
    Constructor Create;
    Procedure Add(aComando: ICommand);
    Procedure ExtrairInformacoes;
  End;

implementation

{ TInvoker }

procedure TInvoker.Add(aComando: ICommand);
begin
  // Adiciona comandos na lista
  FComandos.Add(aComando);
end;

constructor TInvoker.Create;
begin
  FComandos := TInterfaceList.Create;

end;

procedure TInvoker.ExtrairInformacoes;
var
  xContador: Integer;
begin
  // Percorre a lista de comandos armazenados executando a operação de cada um

  for xContador := 0 to Pred(FComandos.Count) do
  begin
    ICommand(FComandos[xContador]).Execute;
  end;

end;

end.
