unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe;

type
  TForm2 = class(TForm)
    Ligar: TButton;
    Desligar: TButton;
    Voar: TButton;
    LBLigar: TLabel;
    Label1: TLabel;
    LBVoar: TLabel;
    procedure LigarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
  xAviao : tAviao;

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
xAviao:= tAviao.create;
end;

procedure TForm2.LigarClick(Sender: TObject);
begin
xAviao.Ligar;
end;

end.
