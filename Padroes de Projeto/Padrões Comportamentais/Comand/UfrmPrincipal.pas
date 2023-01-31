unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UCommand, UInvoker,
  UReceiver, UConcreteCommand;

type
  TFrmPrincipal = class(TForm)
    BtnExecutar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MemoProgramas: TMemo;
    MemoProcessos: TMemo;
    MemoVariaveis: TMemo;
    procedure BtnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnExecutarClick(Sender: TObject);
var
  xReceiver: TReceiver;
  xInvoker: TInvoker;
begin
  // Cria o receiver - objeto que contem a codificação das operações

  xReceiver := TReceiver.create;

  // Cria o invoker - objeto que armazena os comandos para executalos;
  xInvoker := TInvoker.create;

  try
    // armazena o comando de extração de programas do invoker.
    xInvoker.add(TProgramas.create(xReceiver));

    // Armazena o comando de extração de processos do invoker.
    xInvoker.add(TProcessos.create(xReceiver));

    // Armazena o comnado de extração de variaveis de ambiente do invoker
    xInvoker.add(TVariaveisAmbiente.create(xReceiver));

    // Solicita ao Invoker que execute todos os comandos armazenados
    xInvoker.ExtrairInformacoes;

  finally

    // Libera os iobjetos da memoria
    FreeAndNil(xInvoker);
    FreeAndNil(xReceiver);

  end;

  MemoProgramas.lines.LoadFromFile(GetCurrentDir + '\Programas.txt');
  MemoProcessos.lines.LoadFromFile(GetCurrentDir + '\Processos.txt');
  MemoVariaveis.lines.LoadFromFile(GetCurrentDir + '\Variaveis.txt');

end;

end.
