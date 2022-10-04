object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 220
  ClientWidth = 462
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Titulo: TLabel
    Left = 88
    Top = 8
    Width = 226
    Height = 25
    Caption = 'Calculo da Conta de Luz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_Ins: TLabel
    Left = 40
    Top = 55
    Width = 126
    Height = 19
    Caption = 'KW/h consumido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_Tipo: TLabel
    Left = 296
    Top = 55
    Width = 114
    Height = 19
    Caption = 'Tipo de Im'#243'vel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_Saida: TLabel
    Left = 21
    Top = 151
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EDT_Cons: TEdit
    Left = 37
    Top = 80
    Width = 129
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RG_Tp: TRadioGroup
    Left = 269
    Top = 80
    Width = 185
    Height = 105
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Resid'#234'ncial'
      'Com'#233'rcio'
      'Ind'#250'stria'
      'Fazenda')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object TBt_Calcular: TButton
    Left = 379
    Top = 191
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = TBt_CalcularClick
  end
end
