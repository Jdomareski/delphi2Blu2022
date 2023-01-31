unit UConcreteObserver_Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UNOtificacao,
  UObserver;

type
  TFraLog = class(TFrame, IObserver)
    Label1: TLabel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Atualizar (aNotificacao : TNotificacao);
  end;

implementation

uses
  System.SysUtils;

{$R *.dfm}

{ TFraLog }

procedure TFraLog.Atualizar(aNotificacao: TNotificacao);
var
xTextoLog : String;
begin
xTextoLog := Format('Uma opera��o de %s de %.2f foi adicionada', [aNotificacao.Operacao, aNotificacao.Valor]);


memo1.lines.Add(xTextolog);
end;

end.
