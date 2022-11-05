object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 460
  ClientWidth = 740
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
    Top = 65
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
    Left = 115
    Top = 65
    Width = 45
    Height = 16
    Caption = 'Numero'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 220
    Top = 65
    Width = 68
    Height = 16
    Caption = 'Data Pedido'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 120
    Width = 64
    Height = 16
    Caption = 'Comprador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 180
    Width = 65
    Height = 16
    Caption = 'Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 88
    Top = 266
    Width = 101
    Height = 16
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 85
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
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 115
    Top = 85
    Width = 100
    Height = 24
    DataField = 'Numero'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 220
    Top = 85
    Width = 100
    Height = 24
    DataField = 'DataPedido'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 140
    Width = 310
    Height = 24
    DataField = 'idComprador'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DataSource2
    ParentFont = False
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 200
    Width = 310
    Height = 24
    DataField = 'idFornecedor'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DataSource3
    ParentFont = False
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 288
    Width = 312
    Height = 164
    DataSource = DataSource4
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Title.Caption = 'Id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupProdutos'
        Title.Caption = 'Descri'#231#227'o'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Width = 50
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 326
    Top = 288
    Width = 25
    Height = 160
    DataSource = DataSource4
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 7
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 424
    Top = 16
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.pedidocompra'
    Left = 560
    Top = 8
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Numero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object FDTable1DataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object FDTable1idComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object FDTable1idFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTablelookupComprador
    Left = 424
    Top = 88
  end
  object FDTablelookupComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 568
    Top = 80
    object FDTablelookupCompradorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTablelookupCompradorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTablelookupCompradorCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = FDtableLookupFornecedor
    Left = 424
    Top = 168
  end
  object DataSource4: TDataSource
    DataSet = FDTable2
    Left = 424
    Top = 256
  end
  object FDtableLookupFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 568
    Top = 168
    object FDtableLookupFornecedorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDtableLookupFornecedorCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object FDtableLookupFornecedorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
  object FDTable2: TFDTable
    BeforePost = FDTable2BeforePost
    IndexFieldNames = 'Id'
    MasterSource = DataSource1
    MasterFields = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.itemcompra'
    Left = 560
    Top = 248
    object FDTable2Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable2Quantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object FDTable2idPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object FDTable2idProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object FDTable2LookupProdutos: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupProdutos'
      LookupDataSet = FDTable3
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
  end
  object FDTable3: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 560
    Top = 320
  end
end
