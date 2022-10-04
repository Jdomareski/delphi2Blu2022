unit ex_17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LB_Qtd: TLabel;
    EDT_Qtd: TEdit;
    BTIns: TButton;
    MMbox: TMemo;
    LB_saida: TLabel;
    procedure BTInsClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BTInsClick(Sender: TObject);
var
  xQtd  : Integer;
  xProv : Integer;
  I : integer;

  begin
    {xqtd := StrToIntDef(EDT_Qtd.Text, 0);}
    if TryStrToInt(EDT_Qtd.Text, xQtd) then
      For I := 0 to xQtd - 1 do
        begin
          xprov := StrToInt(inputbox('Informar Números' , Format('Informe %dº número', [I+1]), ''));
          if (xProv >= 10) and (xProv <= 150)  then
            MMbox.Lines.add(xProv.ToString);
            LB_saida.Caption := MMbox.Lines.Count.ToString;
        end;



  end;

end.
