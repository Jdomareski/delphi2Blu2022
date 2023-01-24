unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UcalculadorService, UCalculadorServiceDefault;

Type
  TForm1 = class(TForm)
    EdtN1: TEdit;
    lblTitulo: TLabel;
    LblTitulo2: TLabel;
    EdtN2: TEdit;
    LblResutl: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    LblOperacao: TLabel;
    BTCalcular: TButton;

    procedure BTCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UServicos;



procedure TForm1.BTCalcularClick(Sender: TObject);
var
  xCalculadora : TCalculadora;
begin
  xCalculadora := TCalculadora.Create(StrToFloatDef(EdtN1.Text, 0),
    StrToFloatDef(EdtN2.Text, 0), TCalculadorServiceDefault.Create);

    XCalculadora.ProcessCalc(TTypeCalc(ComboBox1.ItemIndex)).ToString;

    Edit1.text := XCalculadora.ProcessCalc(TTypeCalc(ComboBox1.ItemIndex)).ToString;

end;



end.
