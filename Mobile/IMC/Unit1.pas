unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TufrmFormulario = class(TForm)
    lytTop: TLayout;
    lytAltura: TLayout;
    lytPeso: TLayout;
    lblpeso: TLabel;
    edtAltura: TEdit;
    lbl: TLabel;
    Rectangle1: TRectangle;
    Line1: TLine;
    lblAltura: TLabel;
    LytTotal: TLayout;
    edtPeso: TEdit;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    lblCalcular: TLabel;
    lblPesoIdeal: TLabel;
    procedure lblCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ufrmFormulario: TufrmFormulario;

implementation

{$R *.fmx}

procedure TufrmFormulario.lblCalcularClick(Sender: TObject);
var
altura, peso, imc, pesoIdeal : double;

begin
altura := (strTofloat(edtAltura.text))/100;
peso := strTofloat(edtPeso.text);
IMC := peso / (altura * altura);

  if (imc < 18.5) then
  lblPesoIdeal.Text := ('Magreza')
    else if (IMC > 18.5) and (IMC < 24.9) then
  lblPesoIdeal.Text := ('Peso Normal')
  else if (IMC > 25.0) and (IMC <29.9) then
  lblPesoIdeal.Text := ('Sobrepeso Nível I')
  else if (IMC >30) and (IMC <39.9) then
  lblPesoIdeal.Text := ('Sobrepeso Nível II')
  else
  lblPesoIdeal.Text := ('Péssimas notícias à vista');

end;


end.
