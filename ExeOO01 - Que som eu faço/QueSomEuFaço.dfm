object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 96
  ClientWidth = 188
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LBAnimal: TLabel
    Left = 8
    Top = 8
    Width = 39
    Height = 16
    Caption = 'Animal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object CBBox_01: TComboBox
    Left = 24
    Top = 33
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Cachorro'
      'Gato'
      'P'#225'ssaro')
  end
  object BT001: TButton
    Left = 24
    Top = 60
    Width = 145
    Height = 25
    Caption = 'Que Som eu Fa'#231'o?'
    TabOrder = 1
    OnClick = BT001Click
  end
end
