unit Exe_16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LBNome: TLabel;
    LBNota1: TLabel;
    LBNota2: TLabel;
    LBNota3: TLabel;
    EDT_Nome: TEdit;
    EDT_Nota1: TEdit;
    EDTNota_2: TEdit;
    EDT_Nota3: TEdit;
    LBMedia: TLabel;
    LBSAIDA: TLabel;
    LBResp: TLabel;
    BTCalcular: TButton;
    procedure BTCalcularClick(Sender: TObject);
    procedure EDT_Nota3Exit(Sender: TObject);

  private
  Procedure Calcular;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.BTCalcularClick(Sender: TObject);

  begin
  Calcular;
  end;


procedure TForm1.Calcular;
var
      xNome : string;
      xN1 : double;
      xN2 : double;
      xN3 : double;
      xMedia : Double;
    begin
      xNome := EDT_Nome.Text;
      xN1 := strToInt(EDT_Nota1.Text);
      xN2 := strToInt(EDTNota_2.Text);
      xN3 := strToInt(EDT_Nota3.Text);
      xMedia := (xN1 + xN2 + xN3) /3;

        if xmedia > 7 then
        LBResp.caption := ('Aprovado')
      else
        LBResp.caption := ('Reprovado')
    end;

procedure TForm1.EDT_Nota3Exit(Sender: TObject);
var
      xNome : string;
      xN1 : double;
      xN2 : double;
      xN3 : double;
      xMedia : Double;
  begin
      xN1 := strToInt(EDT_Nota1.Text);
      xN2 := strToInt(EDTNota_2.Text);
      xN3 := strToInt(EDT_Nota3.Text);
      xMedia := (xN1 + xN2 + xN3) /3;

      LBSAIDA.Caption := formatFloat('0.00' , xmedia);
  end;

end.
