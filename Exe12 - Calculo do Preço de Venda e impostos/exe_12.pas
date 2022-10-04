unit exe_12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Titulo: TLabel;
    frm_LB_CF: TLabel;
    frm_LB_CDis: TLabel;
    frm_LB_Imp: TLabel;
    frm_LB_PCons: TLabel;
    frm_EDT_CF: TEdit;
    frm_EDT_Imp: TEdit;
    frm_EDT_Dis: TEdit;
    frm_EDT_PCons: TEdit;
    procedure frm_EDT_DisExit(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.frm_EDT_DisExit(Sender: TObject);
var
  xCusFab : currency;
  xPerImp : double;
  xComDis : double;
  xPreven : currency;

begin

    xCusFab := strToCurr(frm_EDT_CF.Text);
    xPerImp := strTofloat(frm_EDT_Imp.Text);
    xComDis := strTofloat(frm_EDT_dis.Text);

    xPreven := (((xCusFab*(xPerImp/100 + 1)))*(xComDis/100 + 1));

    frm_EDT_PCons.Text := formatcurr('##,###.00', xPreven);
end;

end.
