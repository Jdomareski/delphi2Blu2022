object frmUnidadeMedida: TfrmUnidadeMedida
  Left = 0
  Top = 0
  Caption = 'Unidade de Medida'
  ClientHeight = 311
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 110
    Width = 11
    Height = 16
    Caption = 'Id'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 160
    Width = 55
    Height = 16
    Caption = 'Descricao'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 226
    Width = 659
    Height = 85
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 130
    Width = 100
    Height = 24
    DataField = 'Id'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 180
    Width = 400
    Height = 24
    DataField = 'Descricao'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 424
    Top = 48
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.unidademedida'
    Left = 536
    Top = 48
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
end
