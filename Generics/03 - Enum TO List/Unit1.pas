unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  Tdias = (Segunda, ter�a, quarta, quinta, sexta, s�bado, domingo);
  Tmes = (Janeiro, fevereiro, mar�o, abril, maio, junho, julho);

  TEnumUtils<T> = Class
    Class procedure EnumToList(aValue: Tstrings);
  End;

  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    BTMes: TButton;
    BtDias: TButton;
    procedure BtDiasClick(Sender: TObject);
    procedure BTMesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.TypInfo;

{$R *.dfm}
{ TEnumUtils<T> }

class procedure TEnumUtils<T>.EnumToList(aValue: Tstrings);
var
  I, xPos: Integer;
  xAux: String;
begin
  aValue.Clear;
  I := 0;

  repeat
    xAux := GetEnumName(TypeINfo(T), I);
    xPos := GetEnumValue(TypeINfo(T), xAux);

    if xPos <> -1 then
      aValue.Add(xAux);

    Inc(I);

  until xPos < 0;
end;

procedure TForm1.BtDiasClick(Sender: TObject);
begin
  TEnumUtils<TDias>.EnumToList(Combobox1.Items);
end;

procedure TForm1.BTMesClick(Sender: TObject);
begin
  TEnumUtils<TMes>.EnumToList(Combobox1.Items);
end;

end.
