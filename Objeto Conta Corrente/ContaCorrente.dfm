object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 272
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LB_NunConta: TLabel
    Left = 24
    Top = 128
    Width = 173
    Height = 19
    Caption = 'Conta N'#250'mero:  081240'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LB_Nome: TLabel
    Left = 24
    Top = 153
    Width = 334
    Height = 19
    Caption = 'Nome do Titular: Jefferson Cardoso Domareski'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LB_Saldo: TLabel
    Left = 24
    Top = 178
    Width = 187
    Height = 19
    Caption = 'Saldo da Conta: R$ 10000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object EDT_NConat: TEdit
    Left = 24
    Top = 8
    Width = 281
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'N'#250'mero da Conta'
  end
  object EDT_Nome: TEdit
    Left = 24
    Top = 38
    Width = 281
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'Nome do Correntista'
  end
  object EDT_Saldo: TEdit
    Left = 24
    Top = 68
    Width = 281
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'Saldo da Conta Corrente'
  end
  object BT_AltNome: TButton
    Left = 344
    Top = 68
    Width = 148
    Height = 25
    Caption = 'Alterar Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = BT_AltNomeClick
  end
  object BT_Ins: TButton
    Left = 344
    Top = 8
    Width = 148
    Height = 41
    Caption = 'Inserir Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BT_InsClick
  end
  object BT_dep: TButton
    Left = 344
    Top = 178
    Width = 148
    Height = 25
    Caption = 'Efetuar Dep'#243'sito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = BT_depClick
  end
  object BT_Saque: TButton
    Left = 344
    Top = 209
    Width = 148
    Height = 25
    Caption = 'Efetuar Saque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = BT_SaqueClick
  end
end
