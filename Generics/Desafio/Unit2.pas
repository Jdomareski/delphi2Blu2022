unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, system.Generics.Collections;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Image2: TImage;
    LBLUlt: TLabel;
    LBLPrx: TLabel;
    BtnChamar: TButton;
    BtnInc: TButton;
    LblTitulo: TLabel;
    LblSda: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnIncClick(Sender: TObject);
    procedure btnVerificadorClick(Sender: TObject);
    procedure BtnChamarClick(Sender: TObject);
  private
    { Private declarations }
    FFila : TQueue<String>;
    FFila2 : TQueue<String>;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnChamarClick(Sender: TObject);
begin
Memo1.Lines.Clear;
Memo2.Lines.Clear;
Memo1.Lines.Add(FFila.Dequeue + ' ' + FFila2.Dequeue);
Memo2.Lines.Add(FFila.Peek + ' ' + FFila2.Peek);
Lblsda.Caption := FFila.Count.ToString;
FFila.TrimExcess;
FFila2.TrimExcess;
end;

procedure TForm2.BtnIncClick(Sender: TObject);
begin
FFila.Enqueue(Edit1.Text);
edit1.clear;
FFila2.Enqueue(Edit2.Text);
edit2.clear;
Lblsda.Caption := FFila.Count.ToString;
end;

procedure TForm2.btnVerificadorClick(Sender: TObject);
begin
Memo1.Lines.Add(FFila.Count.ToString);
Memo2.Lines.Add(FFila2.Count.ToString);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FFila.Free;
FFila2.Free;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
 FFila := TQueue<String>.create;
 FFila2 := TQueue<String>.create;
end;

end.