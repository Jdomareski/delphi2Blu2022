object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LB_QTD: TLabel
    Left = 31
    Top = 23
    Width = 163
    Height = 19
    Caption = 'Quantidade de Pessoas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_Men: TLabel
    Left = 47
    Top = 58
    Width = 103
    Height = 16
    Caption = 'Menores de Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_Maiores: TLabel
    Left = 239
    Top = 55
    Width = 99
    Height = 16
    Caption = 'Maiores de Idade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_SMaior: TLabel
    Left = 23
    Top = 191
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_SMenor: TLabel
    Left = 23
    Top = 231
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EDT_Qtd: TEdit
    Left = 200
    Top = 18
    Width = 73
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object MBoxMenor: TMemo
    Left = 23
    Top = 80
    Width = 170
    Height = 89
    TabOrder = 1
  end
  object MMBoxMaior: TMemo
    Left = 215
    Top = 77
    Width = 170
    Height = 89
    TabOrder = 2
  end
  object BT_Inserir: TButton
    Left = 310
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 3
    OnClick = BT_InserirClick
  end
end
