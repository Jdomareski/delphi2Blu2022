object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 166
  ClientWidth = 276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LBLigar: TLabel
    Left = 46
    Top = 26
    Width = 91
    Height = 23
    Caption = 'Ligar Avi'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 20
    Top = 74
    Width = 117
    Height = 23
    Caption = 'Desligar Avi'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LBVoar: TLabel
    Left = 24
    Top = 122
    Width = 113
    Height = 23
    Caption = 'Decolar Avi'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Ligar: TButton
    Left = 160
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Ligar'
    TabOrder = 0
    OnClick = LigarClick
  end
  object Desligar: TButton
    Left = 160
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Desligar'
    TabOrder = 1
  end
  object Voar: TButton
    Left = 160
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Voar'
    TabOrder = 2
  end
end
