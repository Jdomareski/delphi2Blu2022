unit Combustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, TobjComb;

type
  tTipo = (tpAlcool, tpGasolina, tpGasolinaAditivada, tpDiesel);
  TForm2 = class(TForm)
    RG_TComb: TRadioGroup;
    LB_Tit1: TLabel;
    LB_Tit2: TLabel;
    EDT_Vlr: TEdit;
    EDT_Lts: TEdit;
    LB_Tit3: TLabel;
    BT_AbstVlr: TButton;
    BT_AbstLts: TButton;
    BT_AltPrecoCB: TButton;
    Edit1: TEdit;
    BT_RPRC: TButton;
    ED_QtdBmb: TEdit;
    LB_Titulo: TLabel;
    LB_Saida: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BT_AbstVlrClick(Sender: TObject);
    procedure BT_RPRCClick(Sender: TObject);
    procedure BT_AbstLtsClick(Sender: TObject);
    procedure RG_TCombClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    xBomba : TBombaCombustivel;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BT_RPRCClick(Sender: TObject);
  begin
    XBomba.alterarQuantidade(StrToFloat(ED_QtdBmb.text));
    LB_Saida.Caption := 'Abastecido a bomba para o total de ' +
                        FormatFloat('0.##', xBomba.Quantidade) + ' litro(s)';
    LB_SAida.Visible := True;
  end;

procedure TForm2.Edit1Change(Sender: TObject);
  begin
    if edit1.Text <> '' then
      xBomba.alterarValor(edit1.Text);
  end;

procedure TForm2.BT_AbstLtsClick(Sender: TObject);
  begin
    LB_Saida.Caption := Xbomba.abastPorLitro((EDT_Lts.Text));
    LB_SAida.Visible := True;
  end;

procedure TForm2.BT_AbstVlrClick(Sender: TObject);
  begin
    LB_Saida.Caption := Xbomba.abastPorValor((EDT_vlr.Text));
    LB_SAida.Visible := True;
  end;

procedure TForm2.FormCreate(Sender: TObject);
  begin
    xBomba := TBombaCombustivel.Create;
    xBomba.alterarQuantidade(100);
  end;

procedure TForm2.RG_TCombClick(Sender: TObject);
begin
  case TTipo(RG_TComb.ItemIndex) of
    tpAlcool:
      begin
        xBomba.alterarCombustivel('Alcool');
        if edit1.Text = '' then
          xBomba.alterarValor('3,5')
      end;

    tpGasolina:
      begin
        xBomba.alterarCombustivel('Gasolina Comum');
        if edit1.Text = '' then
          xBomba.alterarValor('4,5')
      end;

    tpGasolinaAditivada:
      begin
        xBomba.alterarCombustivel('Gasolina Aditivada');
        if edit1.Text = '' then
          xBomba.alterarValor('6,5')
      end;

    tpDiesel:
      begin
        xBomba.alterarCombustivel('Diesel');
        if edit1.Text = '' then
          xBomba.alterarValor('7,5')
      end;
  end;
end;

end.
