object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 303
  ClientWidth = 1231
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LB_Titulo: TLabel
    Left = 152
    Top = 8
    Width = 143
    Height = 23
    Caption = 'Dados Cadastrais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_PF: TLabel
    Left = 14
    Top = 116
    Width = 167
    Height = 23
    Caption = 'Dados Exclusivos PF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LB_PJ: TLabel
    Left = 294
    Top = 116
    Width = 165
    Height = 23
    Caption = 'Dados Exclusivos PJ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Result1: TLabel
    Left = 40
    Top = 205
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Result2: TLabel
    Left = 353
    Top = 205
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EDT_Nome: TEdit
    Left = 14
    Top = 48
    Width = 464
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Insira o Nome da Pessoa ou Empresa'
  end
  object EDT_End: TEdit
    Left = 14
    Top = 78
    Width = 464
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'Insira o Endere'#231'o'
  end
  object CPF: TEdit
    Left = 14
    Top = 145
    Width = 187
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = 'Insira o CPF'
  end
  object CNPJ: TEdit
    Left = 291
    Top = 145
    Width = 187
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'Insira o CNPJ'
  end
  object EDT_Idade: TEdit
    Left = 14
    Top = 175
    Width = 187
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = 'Insira a Idade'
  end
  object EDT_IE: TEdit
    Left = 291
    Top = 175
    Width = 187
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = 'Insira a Inscri'#231#227'o Estadual'
  end
  object BT_01: TButton
    Left = 152
    Top = 229
    Width = 187
    Height = 25
    Caption = 'Cadastrar Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BT_01Click
  end
  object MMBox: TMemo
    Left = 552
    Top = 32
    Width = 369
    Height = 193
    TabOrder = 7
    Visible = False
  end
end
