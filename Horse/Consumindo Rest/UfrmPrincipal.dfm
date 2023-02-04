object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo meu primeiro rest'
  ClientHeight = 141
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 176
    Top = 80
    Width = 88
    Height = 19
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnHelloWorld: TButton
    Left = 8
    Top = 32
    Width = 121
    Height = 25
    Caption = 'Hello World'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnHelloWorldClick
  end
  object btnPingPong: TButton
    Left = 176
    Top = 32
    Width = 121
    Height = 25
    Caption = 'Ping Pong'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnPingPongClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9000/ping'
    Params = <>
    Left = 168
    Top = 152
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 104
    Top = 152
  end
  object RESTResponse1: TRESTResponse
    Left = 32
    Top = 152
  end
end
