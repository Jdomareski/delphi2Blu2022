unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, system.Generics.Collections;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    BtnPush: TButton;
    BtnPop: TButton;
    BtnExtract: TButton;
    BtnPeek: TButton;
    BtnTrimExcess: TButton;
    BtnCount: TButton;
    BtnCapacity: TButton;
    procedure BtnCapacityClick(Sender: TObject);
    procedure BtnPeekClick(Sender: TObject);
    procedure BtnPopClick(Sender: TObject);
    procedure BtnPushClick(Sender: TObject);
    procedure BtnTrimExcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnCountClick(Sender: TObject);
    procedure BtnExtractClick(Sender: TObject);
  private
  FPilha : TStack<String>;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCapacityClick(Sender: TObject);
begin
memo1.lines.Add(FPilha.Capacity.ToString);
end;

procedure TForm1.BtnCountClick(Sender: TObject);
begin
memo1.lines.Add(Fpilha.Count.ToString);
end;

procedure TForm1.BtnExtractClick(Sender: TObject);
begin
memo1.lines.Add(Fpilha.Extract);
end;

procedure TForm1.BtnPeekClick(Sender: TObject);
begin
memo1.lines.Add(Fpilha.peek);
end;

procedure TForm1.BtnPopClick(Sender: TObject);
begin
memo1.lines.Add(Fpilha.pop);
end;

procedure TForm1.BtnPushClick(Sender: TObject);
begin
FPilha.Push(edit1.text);
end;

procedure TForm1.BtnTrimExcessClick(Sender: TObject);
begin
 FPilha.Trimexcess;
 memo1.lines.Add((Fpilha.Capacity.Tostring));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FPilha.free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FPilha := TStack<String>.Create;
end;

end.
