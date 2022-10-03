unit Exe_06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    frmLB_Titulo: TLabel;
    frmLB_Var_A: TLabel;
    frmLB_Var_B: TLabel;
    frmEdt_Var_a: TEdit;
    frmEdt_Var_B: TEdit;
    frmBT_Troca: TButton;
    procedure frmBT_TrocaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frmBT_TrocaClick(Sender: TObject);
var
  xVar1 : String;
  xvar2 : String;
  xCoring : string;
begin

  xVar1 := frmEdt_Var_a.Text;
  xVar2 := frmEdt_Var_b.Text;
  xCoring := xvar1;
  xVar1 := xVar2;
  xVar2 := xCoring;

  frmEdt_Var_a.text := xVar1;
  frmEdt_Var_b.text := xVar2;

end;

end.
