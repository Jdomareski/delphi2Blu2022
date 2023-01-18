unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    BtnAdd: TButton;
    BtnRemove: TButton;
    BtnListar: TButton;
    BtnCapacity: TButton;
    BtnCount: TButton;
    BtnNotify: TButton;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnCapacityClick(Sender: TObject);
    procedure BtnCountClick(Sender: TObject);
    procedure BtnListarClick(Sender: TObject);
    procedure BtnNotifyClick(Sender: TObject);
    procedure BtnRemoveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

  private
    FListaNum : TList<Integer>;
    Procedure Notificacao (Sender : TObject; Const aItem: Integer; aAction: TCollectionNotification);


  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.BtnAddClick(Sender: TObject);
begin
FListaNum.Add(StrToIntDef(Edit1.Text, 0 ));
end;

procedure TForm1.BtnCapacityClick(Sender: TObject);
begin
memo1.lines.Clear;
memo1.lines.add(FListaNum.Capacity.ToString);
//O Delphi vai aumentando a capacidade por contra propria.
end;

procedure TForm1.BtnCountClick(Sender: TObject);
begin
memo1.lines.Clear;
memo1.lines.Add(FListaNum.Count.ToString);
end;

procedure TForm1.BtnListarClick(Sender: TObject);
var
I: Integer;
begin
memo1.lines.Clear;
for I := 0 to Pred(FListaNum.Count) do
begin
  memo1.lines.Add(FListaNum[I].ToString);
end;
end;

procedure TForm1.BtnNotifyClick(Sender: TObject);
begin
FListaNum.OnNotify := Notificacao;
end;

procedure TForm1.BtnRemoveClick(Sender: TObject);
begin
FListaNum.Delete(Pred(FlistaNum.Count));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FListaNum.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FListaNUm := TList<Integer>.Create;
end;

procedure TForm1.Notificacao(Sender: TObject; const aItem: Integer;
  aAction: TCollectionNotification);
begin
    case aAction of
    cnAdded: Memo1.Lines.Add('O Item ' + aItem.ToString + ' foi adicionado.' );
    cnRemoved: memo1.Lines.add('O Item ' + aItem.ToString + ' foi removido.');
    end;
end;

end.