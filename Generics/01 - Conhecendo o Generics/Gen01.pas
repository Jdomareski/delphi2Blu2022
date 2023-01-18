unit Gen01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TkeyValue<T> = class
  private
    FKey: String;
    FValue: T;
    Procedure SetKey(Const Value: String);
    Procedure SetValue(Const Value: T);

  Published

    Property Key: String read FKey Write SetKey;
    Property Value: T Read FValue write SetValue;
  end;

  TForm1 = class(TForm)

    BT01: TButton;
    procedure BT01Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TkeyValue<T> }

procedure TkeyValue<T>.SetKey(const Value: String);
begin
  FKey := Value;

end;

procedure TkeyValue<T>.SetValue(const Value: T);
begin
  FValue := Value;
end;

procedure TForm1.BT01Click(Sender: TObject);
var
  xKV: TkeyValue<TForm>;
  xKV2: TkeyValue<TButton>;

begin
  xKV := TkeyValue<TForm>.Create;
  xKV2 := TkeyValue<TButton>.Create;

  try
    xKV.Key := 'Form_1';
    xKV.Value := Self;

    xKV2.Key := 'Btn_1';
    xKV2.Value := Sender as TButton;

    Showmessage(xKV.Key + '  _   ' + xKV.Value.name);
    Showmessage(xKV2.Key +   '_  ' + xKV2.Value.name);

  finally
    xKV.Free;
    xKV2.Free;

  end;

end;

end.
