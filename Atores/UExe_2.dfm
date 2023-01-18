object frmRelCidades: TfrmRelCidades
  Left = 0
  Top = 0
  ClientHeight = 153
  ClientWidth = 426
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = -8
    Width = 465
    Height = 153
    TabOrder = 0
    object LblCidades: TLabel
      Left = 12
      Top = 38
      Width = 39
      Height = 16
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LblFiltros: TLabel
      Left = 12
      Top = 16
      Width = 35
      Height = 16
      Caption = 'Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtExportar: TButton
      Left = 216
      Top = 112
      Width = 97
      Height = 25
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtExportarClick
    end
    object BTVisualizar: TButton
      Left = 319
      Top = 112
      Width = 97
      Height = 25
      Caption = 'Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BTVisualizarClick
    end
    object cmbcidade: TDBLookupComboBox
      Left = 14
      Top = 72
      Width = 402
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'city_id'
      ListField = 'city'
      ListSource = DtsLookUpCidades
      ParentFont = False
      TabOrder = 2
    end
  end
  object QryCidades: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT CITY.CITY, ADDRESS.ADDRESS FROM CITY LEFT JOIN ADDRESS ON' +
        ' ADDRESS.CITY_ID = CITY.CITY_ID WHERE (CITY.CITY_ID = :CITY_ID O' +
        'R COALESCE(:CITY_ID, 0) = 0) ')
    Left = 376
    Top = 216
    ParamData = <
      item
        Name = 'CITY_ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryCidades
    BCDToCurrency = False
    Left = 328
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44939.822526608800000000
    ReportOptions.LastChange = 44939.822526608800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 232
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 224.882035000000000000
          Top = 3.779530000000000000
          Width = 268.346630000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Endere'#231'os')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = -3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CITY: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          DataField = 'CITY'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CITY"]')
        end
        object frxDBDataset1ADDRESS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ADDRESS"]')
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 456
    Top = 8
  end
  object DtsLookUpCidades: TDataSource
    DataSet = qrylookupcdades
    Left = 496
    Top = 168
  end
  object qrylookupcdades: TFDTable
    Active = True
    IndexFieldNames = 'city_id'
    Connection = DataModule1.FDConnection1
    TableName = 'sakila.city'
    Left = 496
    Top = 240
  end
end