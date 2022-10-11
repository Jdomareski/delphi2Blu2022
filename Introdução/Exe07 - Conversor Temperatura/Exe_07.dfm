object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 142
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frmLB_Tit: TLabel
    Left = 16
    Top = 8
    Width = 274
    Height = 24
    Caption = 'Conversor Celsius x Fahrenheit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_celsius: TLabel
    Left = 16
    Top = 56
    Width = 178
    Height = 19
    Caption = 'Temperatura em Celsius:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_Saida: TLabel
    Left = 8
    Top = 117
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmEdt_Celsius: TEdit
    Left = 217
    Top = 53
    Width = 73
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object frmBT_Converter: TButton
    Left = 16
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 1
    OnClick = frmBT_ConverterClick
  end
end
