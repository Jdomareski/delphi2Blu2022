unit UAtores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu: TMainMenu;
    Relatrios1: TMenuItem;
    Exerccio011: TMenuItem;
    Exerccio021: TMenuItem;
    Exerccio031: TMenuItem;
    procedure Exerccio011Click(Sender: TObject);
    procedure Exerccio021Click(Sender: TObject);
    procedure Exerccio031Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UExe_1, UExe_2, UExe_3;

procedure TForm1.Exerccio011Click(Sender: TObject);
begin
  if not assigned (frmRelNomeAtor) then
  frmRelNomeAtor := TfrmRelNomeAtor.create (self);

  frmRelNomeAtor.show;
end;

procedure TForm1.Exerccio021Click(Sender: TObject);
begin
   if not assigned (frmRelCidades) then
  frmRelCidades := TfrmRelCidades.create (self);

  frmRelCidades.show;
end;

procedure TForm1.Exerccio031Click(Sender: TObject);
begin
 if not assigned (frmRelFilmes) then
  frmRelFilmes := TfrmRelFilmes.create (self);

  frmRelFilmes.show;
end;

end.
