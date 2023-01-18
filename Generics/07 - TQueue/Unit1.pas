unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    BtnEnqueue: TButton;
    BtnDequeue: TButton;
    BtnExtract: TButton;
    BtnPeek: TButton;
    BtnTrimExcess: TButton;
    BtnCount: TButton;
    BtnCapacity: TButton;
    Memo1: TMemo;
    procedure BtnCapacityClick(Sender: TObject);
    procedure BtnCountClick(Sender: TObject);
    procedure BtnDequeueClick(Sender: TObject);
    procedure BtnEnqueueClick(Sender: TObject);
    procedure BtnExtractClick(Sender: TObject);
    procedure BtnPeekClick(Sender: TObject);
    procedure BtnTrimExcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFila : TQueue<String>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCapacityClick(Sender: TObject);
begin
Memo1.Lines.Add(FFila.Capacity.ToString);
end;

procedure TForm1.BtnCountClick(Sender: TObject);
begin
Memo1.Lines.Add(FFila.Count.ToString);
end;

procedure TForm1.BtnDequeueClick(Sender: TObject);
begin
Memo1.Lines.Add(FFila.Dequeue);
end;

procedure TForm1.BtnEnqueueClick(Sender: TObject);
begin
FFila.Enqueue(Edit1.Text);
end;

procedure TForm1.BtnExtractClick(Sender: TObject);
begin
// Mesmo comportamento do Dequeue a diferença é que vc pode capturar a ação no notify
Memo1.Lines.Add(FFila.Extract);
end;

procedure TForm1.BtnPeekClick(Sender: TObject);
begin
Memo1.Lines.Add(FFila.Peek);
end;

procedure TForm1.BtnTrimExcessClick(Sender: TObject);
begin
FFila.TrimExcess;
Memo1.Lines.Add(FFila.Capacity.ToString);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FFila.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FFila := TQueue<String>.Create;
end;

end.
