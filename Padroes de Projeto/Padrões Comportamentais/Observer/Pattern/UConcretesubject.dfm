﻿object FraCadastro: TFraCadastro
  Left = 0
  Top = 0
  Width = 452
  Height = 500
  TabOrder = 0
  object Label1: TLabel
    Left = 3
    Top = 20
    Width = 67
    Height = 16
    Caption = 'Opera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 2
    Top = 50
    Width = 68
    Height = 16
    Caption = 'Categoria:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 30
    Top = 75
    Width = 39
    Height = 16
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 227
    Top = 12
    Width = 9
    Height = 85
  end
  object BtnGravar: TButton
    Left = 296
    Top = 19
    Width = 89
    Height = 73
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = BtnGravarClick
  end
  object CmbOperacao: TComboBox
    Left = 76
    Top = 12
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = CmbOperacaoChange
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
  end
  object CmbCategoria: TComboBox
    Left = 76
    Top = 42
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object EdtValor: TEdit
    Left = 75
    Top = 72
    Width = 146
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 103
    Width = 345
    Height = 480
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      790000009619E0BD01000000180000000300000000000300000079000A4F7065
      7261C3A7C3A36F0100490000000100055749445448020002000A000943617465
      676F7269610100490000000100055749445448020002000A000556616C6F7208
      0004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 176
    object ClientDataSet1Operação: TStringField
      DisplayWidth = 12
      FieldName = 'Opera'#231#227'o'
      Size = 10
    end
    object ClientDataSet1Categoria: TStringField
      DisplayWidth = 23
      FieldName = 'Categoria'
      Size = 10
    end
    object ClientDataSet1Valor: TCurrencyField
      DisplayWidth = 30
      FieldName = 'Valor'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 216
    Top = 184
  end
end
