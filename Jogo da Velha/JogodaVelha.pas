unit JogodaVelha;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Layouts, FMX.Objects, FMX.TabControl;

type
  TFrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    rect_fundo_tab1: TRectangle;
    lyt_tab1: TLayout;
    Image1: TImage;
    lyt_Jogadores: TLayout;
    rect_morango: TRectangle;
    FlowLayout1: TFlowLayout;
    rect_banana: TRectangle;
    img_morango: TImage;
    img_banana: TImage;
    Layout2: TLayout;
    rect_deu_velha: TRectangle;
    rect_game_over: TRectangle;
    rect_parabens: TRectangle;
    rect_fundo_tab2: TRectangle;
    Layout4: TLayout;
    lyt_tab2: TLayout;
    img_capa_2: TImage;
    FlowLayout2: TFlowLayout;
    rect_1_1: TRectangle;
    img_1_1: TImage;
    rect_1_2: TRectangle;
    img_1_2: TImage;
    rect_1_3: TRectangle;
    img_1_3: TImage;
    rect_2_1: TRectangle;
    img_2_1: TImage;
    rect_2_2: TRectangle;
    img_2_2: TImage;
    rect_2_3: TRectangle;
    img_2_3: TImage;
    rect_3_1: TRectangle;
    img_3_1: TImage;
    rect_3_2: TRectangle;
    img_3_2: TImage;
    rect_3_3: TRectangle;
    img_3_3: TImage;
    ShadowEffect1: TShadowEffect;
    img_computador: TImage;
    img_jogador: TImage;
    rect_fim_jogo: TRectangle;
    rect_progresso: TRectangle;
    procedure onClickSelecioneJogador(Sender: TObject);
    procedure formshow(Sender: TObject);
    Procedure OnClickJogador(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

  private
  FJogoVelha : TJogoVelha;
  Procedure MarcarJogadaComputador(Const aCoordenadas: String);
  Procedure ReiniciarJogo;
  Procedure AnimarFimJogo(Const aRetangulo: TRectangle);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

procedure TFrmPrincipal.formshow(Sender: TObject);
begin
  TabControl1.tabposition := Ttabposition.None;
  TabControl1.Activetab := TabItem1;
end;


procedure TFrmPrincipal.MarcarJogadaComputador(const aCoordenadas: String);
var
xLinha, xColuna : Byte;
xRetangulo : TRectangle;
xImagem : TImage;

begin
xLinha := StrToInt(Copy(aCoordenadas, 1, 1));
xColuna := StrToInt(Copy(aCoordenadas, 3, 1));

FJogoVelha.RealizarJogada(TJogador.tpCPU,
                          xLinha,
                          xColuna;

xRetangulo := TRectangle(FindComponent('Rect_' + aCoordenadas));

if Assigned(xRetangulo) then
Begin
  xImagem :+ Timage(FindComponent('img_' + aCoordenadas));
  xImagem.bitmap :=img_computador.bitmap;
  ximagem.visible := true;

  xRetangulo.Hittest := False;

End;


end;

procedure TFrmPrincipal.onClickSelecioneJogador(Sender: TObject);

var
  xPosicao: Integer;
  xRetangulo, xJogador: String;

begin
  TabControl1.Activetab := TabItem2;

  xRetangulo := (Sender as TRectangle).name;
  xPosicao := Pos('_', xRetangulo);
  xJogador := copy(xRetangulo, xPosicao + 1, length(xRetangulo));

  if xJogador = 'morango' then
  begin
    img_jogador.Bitmap := img_morango.Bitmap;
    img_computador.Bitmap := img_banana.Bitmap;

  end

  else

  begin
    img_jogador.Bitmap := img_banana.Bitmap;
    img_computador.Bitmap := img_morango.Bitmap;

  end;

end;
procedure TFrmPrincipal.AnimarFimJogo(const aRetangulo: TRectangle);
begin
rect_fim_jogo.visible := true;
rect_progresso.width := 20;

aretangulo.Opacity := 0;
aRetangulo.visible := true;

TThread.CreateAnonymousThread(Procedure
begin
  Tthread.Synchronize(nil, procedure
  begin
    aRetangulo.AnimateFloat ('Opacity', 1, 0.3);
  end);
end).start;

TThread.CreateAnonymousThread(procedure
begin
  Sleep(450);

  while rect_progresso.width <rect_fim_jogo.width  do
  begin
    tthread.Synchronize(nil, procedure
    begin
      rect_progresso.AnimateFloat('width', rect_progresso.Width + 50, 0.3);
    end);
    Sleep (150);
  end;

TThread.Synchronize(nil, procedure
begin
  aRetangulo.Visible := False;
  rect_fim_Jogo.Visible := False;

  Self.ReiniciarJogo;
end);
end).start;
end;

procedure TFrmPrincipal.ReiniciarJogo;
var
I : Integer;
begin
TabControl1.ActiveTab := TabItem1;

for I := 0 to Pred(Self.ComponentCount) do
  begin
    if (Self.Components[I] is TRectangle) and (self.Components[I].Tag >0) then
    TRectangle(Self.Components[I]).HitTest := True;

    if (Self.Components[I] is Timage) and (self.Components[I].Tag >0) then
    TImage(Self.Components[I]).Bitmap := nil;
  end;
  FJogoVelha.ReiniciarJogo;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FJogoVelha.DisposeOf;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
 FJogoVelha := TJogoVelha.create;
end;

Procedure TfrmPrincipal.OnClickJogador(Sender: TObject);
  var
  xPosicao : Integer;
  xCoordenadas : String;
  xLinha, xColuna : Byte;
  xRetangulo : TRectangle;
  xImagem : Timage;

  begin
    xRetangulo := (Sender as TRectangle);

    xPosicao := Pos('_', xRetangulo.Name);
    xCoordenadas := copy(xRetangulo.Name, xPosicao + 1, Length(Xretangulo.Name));

    xLinha := strToInt(Copy(xCoordenadas, 1, 1));
    xColuna := StrToInt(copy(xCoordenadas, 3, 1));

    FJogoVelha.RealizarJogada(TJogador, tpPlayer1,
                              xLinha,
                              xColuna);

    xImagem := Timage(FindComponent('img_' + xCoordenadas));
    xImagem.bitmap := img_Jogador.Bitmap;
    xImagem.visible := true;

    xRetangulo.HitTest := False;

    FJogoVelha.VerificarFimdoJogo(TJogador.tpPlayer1);
    if (not FJogoVelha.FimJogo) and (FjogoVelha.Jogadas <5) then
    begin
      xcoordenadas := FJogoVelha.JogadaComputador;
      Self.MarcarJogadaComputador(xCoordenadas);

      FJogoVelha.VerificarFimdoJogo(TJogador.tpCPU);

      if FJogoVelha.FimJogo then then
      Self.AnimarFimJogo(rect_game_over);
     end

     else
     begin
       if (FJogoVelha.Jogadas <5) or (I)FJogoVelha.FimJogo) then
       self.AnimarFimJogo(Rect_parabens)
       else
       Self.AnimarFimJogo(rect_deu_velha);
     end;


  end;
{$R *.fmx}

end.
