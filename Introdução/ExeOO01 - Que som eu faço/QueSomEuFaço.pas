unit QueSomEuFaço;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LBAnimal: TLabel;
    CBBox_01: TComboBox;
    BT001: TButton;
    procedure BT001Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UAnimais;

{$R *.dfm}

procedure TForm1.BT001Click(Sender: TObject);
var
  xAnimal : TAnimal;

begin
  xAnimal := nil;    //Sem referência a um ponteiro na memória
                    // assim que inicializa um objeto no Delphi

  try
      case TEnumAnimal(CBBox_01.ItemIndex) of
        stCachorro:
          xanimal := Tcachorro.Create;
        stGato:
          xanimal := TGato.Create;
        stPassaro:
          xAnimal := TPassaro.Create;

      end;

    ShowMessage (xanimal.RetornarSom);
    ShowMessage ('Tenho ' +intToStr(xAnimal.Patas) + ' Patas ');

  finally
     FreeAndNil (xAnimal);
  end;

end;

end.
