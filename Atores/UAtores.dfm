object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 123
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 8
    Top = 8
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Exerccio011: TMenuItem
        Caption = 'Exerc'#237'cio 01'
        OnClick = Exerccio011Click
      end
      object Exerccio021: TMenuItem
        Caption = 'Exerc'#237'cio 02'
        OnClick = Exerccio021Click
      end
      object Exerccio031: TMenuItem
        Caption = 'Exerc'#237'cio 03'
        OnClick = Exerccio031Click
      end
    end
  end
end