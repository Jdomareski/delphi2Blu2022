object Form_Principal: TForm_Principal
  Left = 0
  Top = 0
  ClientHeight = 281
  ClientWidth = 418
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 16
    object CalculoReajuste1: TMenuItem
      Caption = 'Menu Exerc'#237'cios'
      object InserirDados1: TMenuItem
        Caption = 'Calculo Reajuste'
        OnClick = InserirDados1Click
      end
      object CalcularReajuste1: TMenuItem
        Caption = 'Valida'#231#227'o M'#234's'
        OnClick = CalcularReajuste1Click
      end
      object CalcularReajuste2: TMenuItem
        Caption = 'Classifica'#231#227'o de Valores'
        OnClick = CalcularReajuste2Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
