object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo Calculadora SOAP'
  ClientHeight = 351
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lblValor1: TLabel
    Left = 24
    Top = 24
    Width = 46
    Height = 16
    Caption = 'Valor 1:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblValor2: TLabel
    Left = 200
    Top = 24
    Width = 46
    Height = 16
    Caption = 'Valor 2:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblOperacao: TLabel
    Left = 24
    Top = 104
    Width = 60
    Height = 16
    Caption = 'Opera'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 136
    Top = 168
    Width = 70
    Height = 16
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValor1: TEdit
    Left = 24
    Top = 46
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtValor2: TEdit
    Left = 200
    Top = 46
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object cmbOperacao: TComboBox
    Left = 24
    Top = 126
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Dividir'
      'Multiplicar'
      '')
  end
  object btnCalcular: TButton
    Left = 200
    Top = 124
    Width = 121
    Height = 29
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9000/ping'
    Params = <>
    Left = 80
    Top = 256
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 232
    Top = 256
  end
  object RESTResponse1: TRESTResponse
    Left = 376
    Top = 248
  end
end
