object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Elevador Misterioso'
  ClientHeight = 174
  ClientWidth = 457
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
  object LBAndares: TLabel
    Left = 216
    Top = 27
    Width = 161
    Height = 16
    Caption = 'Esse Pr'#233'dio tem 10 Andares'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LBCapacidade: TLabel
    Left = 216
    Top = 49
    Width = 170
    Height = 16
    Caption = 'Elevador Comporta 6 Pessoas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LBAndarAtual: TLabel
    Left = 216
    Top = 98
    Width = 129
    Height = 16
    Caption = 'Voc'#234' Esta no andar 10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object LBPessoasNoElevador: TLabel
    Left = 216
    Top = 120
    Width = 186
    Height = 16
    Caption = 'Total de Pessoas no elevador 10'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = False
    Visible = False
  end
  object TBSobe: TButton
    Left = 40
    Top = 24
    Width = 121
    Height = 25
    Caption = 'Subir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = TBSobeClick
  end
  object BTDesce: TButton
    Left = 40
    Top = 55
    Width = 121
    Height = 25
    Caption = 'Descer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BTDesceClick
  end
  object BTEntrar: TButton
    Left = 40
    Top = 86
    Width = 121
    Height = 25
    Caption = 'Entrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BTEntrarClick
  end
  object BTSair: TButton
    Left = 40
    Top = 117
    Width = 121
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BTSairClick
  end
end
