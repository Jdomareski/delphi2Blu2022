object frmCompradores: TfrmCompradores
  Left = 0
  Top = 0
  Caption = 'frmCompradores'
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
    Width = 33
    Height = 16
    Caption = 'Nome'
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
    Width = 34
    Height = 16
    Caption = 'Cargo'
    FocusControl = DBEdit3
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 226
    Width = 659
    Height = 85
    Align = alBottom
    DataSource = DataSource
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
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cargo'
        Width = 200
        Visible = True
      end>
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
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 130
    Width = 400
    Height = 24
    DataField = 'Nome'
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 180
    Width = 200
    Height = 25
    DataField = 'Cargo'
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DataSource: TDataSource
    DataSet = FDTable
    Left = 552
    Top = 24
  end
  object FDTable: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'comprador'
    Left = 616
    Top = 24
    object FDTableId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTableNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTableCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
end
