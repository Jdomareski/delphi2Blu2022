object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 199
  ClientWidth = 373
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frmLB_Titulo: TLabel
    Left = 47
    Top = 8
    Width = 275
    Height = 33
    Caption = 'Convers'#227'o D'#243'lar x Real'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_Cotacao: TLabel
    Left = 8
    Top = 72
    Width = 165
    Height = 19
    Caption = 'Cota'#231#227'o atual do d'#243'lar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLBQtd: TLabel
    Left = 47
    Top = 105
    Width = 126
    Height = 19
    Caption = 'Valor em d'#243'lares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frm_LB_Real: TLabel
    Left = 8
    Top = 168
    Width = 5
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object frm_BT_Converter: TButton
    Left = 238
    Top = 130
    Width = 115
    Height = 25
    Caption = 'Converter'
    TabOrder = 0
    OnClick = frm_BT_ConverterClick
  end
  object frm_EDT_Cotacao: TEdit
    Left = 232
    Top = 64
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object frm_EDT_Dolar: TEdit
    Left = 232
    Top = 97
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
