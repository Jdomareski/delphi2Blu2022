object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 180
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LB_Qtd: TLabel
    Left = 8
    Top = 13
    Width = 172
    Height = 19
    Caption = 'Quantidade de N'#250'meros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_saida: TLabel
    Left = 8
    Top = 141
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
    Left = 224
    Top = 8
    Width = 83
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BTIns: TButton
    Left = 224
    Top = 38
    Width = 83
    Height = 25
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = BTInsClick
  end
  object MMbox: TMemo
    Left = 8
    Top = 38
    Width = 185
    Height = 89
    TabOrder = 2
  end
end
