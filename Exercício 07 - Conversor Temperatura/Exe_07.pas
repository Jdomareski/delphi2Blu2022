unit Exe_07;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    frmLB_Tit: TLabel;
    frmLB_celsius: TLabel;
    frmEdt_Celsius: TEdit;
    frmLB_Saida: TLabel;
    frmBT_Converter: TButton;
    procedure frmBT_ConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.frmBT_ConverterClick(Sender: TObject);
var
  xCelsius :  double;
  xfaren  : double;

begin
  xCelsius := StrToFloat(frmEdt_Celsius.Text);
  xfaren := (((xCelsius * 9)+160)/5);

   frmLB_Saida.Caption := 'A temperatura é de ' + (xfaren.ToString) + ' graus Fahrenheit.';
end;

end.
