unit Coffee;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  TFormulario1 = class(TForm)
    lytMenus: TLayout;
    lytSearch: TLayout;
    lytlabelMenu: TLayout;
    lytLabel: TLayout;
    ToolBar1: TToolBar;
    rect_Img_Menu: TRectangle;
    ImgMenu: TImage;
    imgCesta: TImage;
    rect_Img_Cesta: TRectangle;
    LblCoffee: TLabel;
    LblNonCoffee: TLabel;
    LnCoffe: TLine;
    LblTitulo: TLabel;
    FlowLayout1: TFlowLayout;
    rect_1_1: TRectangle;
    rect_1_1_1: TRectangle;
    LblRect_1_1: TLabel;
    LblRect_1_2: TLabel;
    Circle1: TCircle;
    Label1: TLabel;
    rect_1_2: TRectangle;
    rect_1_2_1: TRectangle;
    LblRect_1_2_1: TLabel;
    LblRect_1_2_2: TLabel;
    Circle2: TCircle;
    Label4: TLabel;
    rect_2_1: TRectangle;
    rect_2_1_1: TRectangle;
    LblRect_2_1_1: TLabel;
    LblRect_2_1_2: TLabel;
    Circle3: TCircle;
    Label5: TLabel;
    rect_2_2: TRectangle;
    rect_2_2_0: TRectangle;
    LblRect_2_2_1: TLabel;
    LblRect_2_2_2: TLabel;
    Circle4: TCircle;
    Label6: TLabel;
    rect_3_1: TRectangle;
    rect_3_1_0: TRectangle;
    LblRect_3_1_1: TLabel;
    LblRect_3_1_2: TLabel;
    Circle5: TCircle;
    Label7: TLabel;
    rect_3_2: TRectangle;
    rect_3_2_1: TRectangle;
    LblRect_3_2_1: TLabel;
    LblRect_3_2_2: TLabel;
    Circle6: TCircle;
    Label8: TLabel;
    rect_Search_1_1: TRectangle;
    rect_Search_1_2: TRectangle;
    EdtSearch: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formulario1: TFormulario1;

implementation

{$R *.fmx}

end.
