unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConcretesubject,
  UConcreteObserver_Saldo, UConcreteObserver_Historico, UConcreteObserver_Log,
  Vcl.ExtCtrls;

type
  TUfrmPrincipal2 = class(TForm)
    FraLog1: TFraLog;
    FraHistorico1: TFraHistorico;
    FraSaldo1: TFraSaldo;
    FraCadastro1: TFraCadastro;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UfrmPrincipal2: TUfrmPrincipal2;

implementation

{$R *.dfm}

procedure TUfrmPrincipal2.FormCreate(Sender: TObject);
begin
fracadastro1.adicionarObserver(FraSaldo1);
fracadastro1.adicionarObserver(FraHistorico1);
fracadastro1.adicionarObserver(FraLog1);

end;

end.
