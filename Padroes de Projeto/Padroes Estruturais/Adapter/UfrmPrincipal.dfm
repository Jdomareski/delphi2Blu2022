object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Adapter'
  ClientHeight = 173
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 22
    Height = 16
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblBairro: TLabel
    Left = 24
    Top = 120
    Width = 39
    Height = 16
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblLogradouro: TLabel
    Left = 24
    Top = 98
    Width = 75
    Height = 16
    Caption = 'Logradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCidade: TLabel
    Left = 24
    Top = 142
    Width = 43
    Height = 16
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BtnConsultar: TButton
    Left = 192
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Consultar ViaCEP'
    TabOrder = 0
    OnClick = BtnConsultarClick
  end
  object Button1: TButton
    Left = 192
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Consultar Correios'
    TabOrder = 1
  end
  object EdtCEP: TEdit
    Left = 24
    Top = 41
    Width = 145
    Height = 21
    TabOrder = 2
  end
end
