object FraHistorico: TFraHistorico
  Left = 0
  Top = 0
  Width = 300
  Height = 200
  TabOrder = 0
  object Label1: TLabel
    Left = 80
    Top = 3
    Width = 142
    Height = 16
    Caption = 'D'#233'bitos Por Categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 24
    Width = 298
    Height = 190
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'categoria'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Width = 50
        Visible = True
      end>
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      5A0000009619E0BD0100000018000000020000000000030000005A0009636174
      65676F726961010049000000010005574944544802000200640005546F74616C
      080004000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 96
    object ClientDataSet1categoria: TStringField
      FieldName = 'categoria'
      Size = 100
    end
    object ClientDataSet1Total: TCurrencyField
      FieldName = 'Total'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 152
    Top = 96
  end
end
