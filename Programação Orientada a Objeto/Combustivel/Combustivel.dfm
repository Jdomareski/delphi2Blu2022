object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 338
  ClientWidth = 501
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
  object LB_Tit1: TLabel
    Left = 354
    Top = 49
    Width = 85
    Height = 13
    Caption = 'Valor a Abastecer'
  end
  object LB_Tit2: TLabel
    Left = 352
    Top = 114
    Width = 87
    Height = 13
    Caption = 'Litros a Abastecer'
  end
  object LB_Tit3: TLabel
    Left = 384
    Top = 95
    Width = 14
    Height = 13
    Caption = 'Ou'
  end
  object LBS_1NMX: TLabel
    Left = 16
    Top = 249
    Width = 211
    Height = 19
    Caption = 'Litros Dispon'#237'veis na Bomba: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LBS_2MX: TLabel
    Left = 367
    Top = 249
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LBS_3NMX: TLabel
    Left = 415
    Top = 249
    Width = 39
    Height = 19
    Caption = 'Litros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LBS_4NMX: TLabel
    Left = 16
    Top = 274
    Width = 162
    Height = 19
    Caption = 'Quantidade Abastecida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LBS_5MX: TLabel
    Left = 368
    Top = 274
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LBS_6NMX: TLabel
    Left = 415
    Top = 274
    Width = 39
    Height = 19
    Caption = 'Litros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LBS_7NMX: TLabel
    Left = 16
    Top = 299
    Width = 119
    Height = 19
    Caption = 'Valor Abastecido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LB_8MX: TLabel
    Left = 368
    Top = 299
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LBS_9NMX: TLabel
    Left = 431
    Top = 299
    Width = 37
    Height = 19
    Caption = 'Reais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LB_Titulo: TLabel
    Left = 124
    Top = 8
    Width = 252
    Height = 25
    Caption = 'Controle de Abastecimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RG_TComb: TRadioGroup
    Left = 8
    Top = 57
    Width = 185
    Height = 105
    Caption = 'Selecione o Tipo de Combust'#237'vel'
    Items.Strings = (
      'Alcool'
      'Gasolina'
      'Gasolna Aditivada'
      'Diesel')
    TabOrder = 0
  end
  object EDT_Vlr: TEdit
    Left = 350
    Top = 68
    Width = 87
    Height = 21
    TabOrder = 1
  end
  object EDT_Lts: TEdit
    Left = 352
    Top = 133
    Width = 87
    Height = 21
    TabOrder = 2
  end
  object BT_Vlr: TButton
    Left = 312
    Top = 168
    Width = 161
    Height = 25
    Caption = 'Abastecer em Reais'
    TabOrder = 3
  end
  object BT_Lts: TButton
    Left = 312
    Top = 199
    Width = 161
    Height = 25
    Caption = 'Abastecer em Litros'
    TabOrder = 4
  end
  object BT_CB: TButton
    Left = 16
    Top = 168
    Width = 177
    Height = 25
    Caption = 'Pre'#231'o Combut'#237'vel'
    TabOrder = 5
    OnClick = BT_CBClick
  end
  object Edit1: TEdit
    Left = 208
    Top = 168
    Width = 87
    Height = 25
    TabOrder = 6
  end
  object BT_RPRC: TButton
    Left = 16
    Top = 199
    Width = 177
    Height = 25
    Caption = 'Repor Combust'#237'vel'
    TabOrder = 7
  end
  object Edit2: TEdit
    Left = 208
    Top = 199
    Width = 87
    Height = 25
    TabOrder = 8
  end
end
