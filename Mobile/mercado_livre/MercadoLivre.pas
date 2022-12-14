unit MercadoLivre;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
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
    Rectangle2: TRectangle;
    CirculoProduto: TCircle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
