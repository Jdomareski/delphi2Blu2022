object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 249
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
  object LB_Homens: TLabel
    Left = 20
    Top = 197
    Width = 172
    Height = 19
    Caption = 'Quantidade de Homens:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_Mulheres: TLabel
    Left = 20
    Top = 222
    Width = 177
    Height = 19
    Caption = 'Quantidade de Mulheres:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BT_Cadastro: TButton
    Left = 212
    Top = 48
    Width = 186
    Height = 35
    Caption = 'Cadastrar dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BT_CadastroClick
  end
  object MMB_Masc: TMemo
    Left = 20
    Top = 102
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object MMB_Fem: TMemo
    Left = 211
    Top = 102
    Width = 185
    Height = 89
    TabOrder = 2
  end
end
