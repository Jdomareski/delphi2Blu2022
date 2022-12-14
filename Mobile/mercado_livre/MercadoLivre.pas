unit MercadoLivre;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts;

type
  TfrmPrincipal = class(TForm)
    VertScrollBox1: TVertScrollBox;
    lyt_detalhes: TLayout;
    Rect_Valores: TRectangle;
    lblTitulo: TLabel;
    lytProduto: TLayout;
    LblTituloProduto: TLabel;
    lblCentavosProduto: TLabel;
    lblRealProduto: TLabel;
    lblEnvio: TLayout;
    lblCentavosEnvio: TLabel;
    lblTituloEnvio: TLabel;
    lblRealEnvio: TLabel;
    Line1: TLine;
    lytParcelas: TLayout;
    lblCentavosParcela: TLabel;
    lblRealParcelas: TLabel;
    lblTitulosEnvio: TLabel;
    lyt_Botao_Compra: TLayout;
    Rectangle1: TRectangle;
    btn_Comprar: TSpeedButton;
    lytCompraOk: TLayout;
    ImgOk: TImage;
    lytLoadingCompra: TLayout;
    Label11: TLabel;
    Rect_Barra: TRectangle;
    Rect_Fundo: TRectangle;
    rect_fundo_branco_top: TRectangle;
    rect_Fundo_Branco_Bottom: TRectangle;
    CirculoProduto: TCircle;
    lblProduto: TLabel;
    lblQuantidade: TLabel;
    LinhaProduto: TLine;
    CirculoEndereco: TCircle;
    lblEnderešo: TLabel;
    lblComplemento: TLabel;
    lblComprador: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btn_ComprarClick(Sender: TObject);
  private
    Floop: String;

    Procedure Loadingcompra(aInd: Boolean);
    Procedure Comprar_WS;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{ TfrmPrincipal }

procedure TfrmPrincipal.btn_ComprarClick(Sender: TObject);
begin
  self.Loadingcompra(true);
  Rect_Barra.Margins.Right := Rect_Fundo.Width;
  Floop := 'S';
  self.Comprar_WS;

  TThread.CreateAnonymousThread(
    Procedure
    begin
      while Floop = 'S' do
      begin
        if Rect_Barra.Margins.Right <= 0 then
          Rect_Barra.Margins.Right := Rect_Fundo.Width;

        sleep(150);
        TThread.Synchronize(nil,
          procedure
          begin
            Rect_Barra.Margins.Right := Rect_Barra.Margins.Right - 1;
          end);
      end;

      // Finalizou com erro...
      if Floop = 'ERRO' then
      begin
        TThread.Synchronize(nil,
          procedure
          begin
            self.Loadingcompra(False);
            Showmessage('Erro ao finalizar compra');
          end);
      end;

      // Finalizou com sucesso...
      if Floop = 'OK' then
      begin
        TThread.Synchronize(nil,
          procedure
          begin
            lytLoadingCompra.AnimateFloat('Margins.Left', 150, 0.3);
            lytLoadingCompra.AnimateFloat('Margins.Right', 150, 0.3);
            lytLoadingCompra.AnimateFloat('Opacity', 0, 0.3);
          end);

        sleep(450);

        TThread.Synchronize(nil,
          procedure
          begin
            lytCompraOk.Visible := true;
            lytCompraOk.AnimateFloat('Opacity', 1, 0.4);
          end);

        sleep(1000);

        TThread.Synchronize(nil,
          procedure
          begin
            Showmessage('Compra realizada com sucesso');
          end);
      end;

    end).Start;

end;

procedure TfrmPrincipal.Comprar_WS;
begin
  TThread.CreateAnonymousThread(
    Procedure
    begin
      sleep(50000);
      // ...
      // ...
      // ...
      Floop := 'OK';
    end).Start;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  self.Loadingcompra(False);
end;

procedure TfrmPrincipal.Loadingcompra(aInd: Boolean);
begin
  rect_fundo_branco_top.Visible := aInd;
  rect_Fundo_Branco_Bottom.Visible := aInd;

  lyt_Botao_Compra.Visible := not aInd;
  lytLoadingCompra.Visible := aInd;
  lytCompraOk.Visible := False;
  lytCompraOk.Opacity := 0
end;

end.
