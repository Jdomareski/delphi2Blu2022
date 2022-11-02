object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
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
    Top = 60
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
    Top = 110
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
  object Label3: TLabel
    Left = 8
    Top = 160
    Width = 91
    Height = 16
    Caption = 'Unidade Medida'
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
    DataSource = DataSource
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 80
    Width = 100
    Height = 24
    DataField = 'Id'
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 130
    Width = 400
    Height = 24
    DataField = 'Descricao'
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 226
    Width = 659
    Height = 85
    Align = alBottom
    DataSource = DataSource
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 380
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idUnidadeMedida'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookUpUnidadeMedida'
        Width = 100
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 182
    Width = 200
    Height = 24
    DataField = 'idUnidadeMedida'
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'Id'
    ListField = 'Descricao'
    ListSource = DataSource1
    ParentFont = False
    TabOrder = 4
  end
  object DataSource: TDataSource
    DataSet = FDTable1
    Left = 480
    Top = 24
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 552
    Top = 24
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object FDTable1idUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
    object FDTable1LookUpUnidadeMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'LookUpUnidadeMedida'
      LookupDataSet = FDTableLookup
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idUnidadeMedida'
      Size = 100
      Lookup = True
    end
  end
  object FDTableLookup: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.unidademedida'
    Left = 560
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = FDTableLookup
    Left = 472
    Top = 144
  end
end
