unit Exe_11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Titulo: TLabel;
    frm_LB_PC: TLabel;
    frmImp: TLabel;
    frm_EDT_PC: TEdit;
    frm_EDT_Perc: TEdit;
    frm_LB_VV: TLabel;
    frm_EDT_VV: TEdit;
    procedure frm_EDT_PercExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frm_EDT_PercExit(Sender: TObject);
var
  xPCusto : currency;
  xPerc   : double;
  xVVenda : currency;

  begin
  xPCusto :=  strToCurr(frm_EDT_PC.Text);
  xPerc   :=  strToFloat(frm_EDT_Perc.text);

  xVVenda := xPCusto + (xPCusto * (xPerc / 100));

  frm_EDT_VV.Text := formatcurr('#,###.00' , xVVenda);

  end;

end.
