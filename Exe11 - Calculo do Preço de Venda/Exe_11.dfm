object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 203
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Titulo: TLabel
    Left = 48
    Top = 8
    Width = 328
    Height = 41
    Caption = 'C'#225'lculo do Pre'#231'o de Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = []
    GlowSize = 12
    ParentFont = False
  end
  object frm_LB_PC: TLabel
    Left = 48
    Top = 72
    Width = 187
    Height = 26
    Caption = 'Pre'#231'o de Custo R$:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    GlowSize = 12
    ParentFont = False
  end
  object frmImp: TLabel
    Left = 24
    Top = 110
    Width = 217
    Height = 47
    Caption = '% Impostos Incidentes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    GlowSize = 12
    ParentFont = False
  end
  object frm_LB_VV: TLabel
    Left = 85
    Top = 164
    Width = 156
    Height = 47
    Caption = 'Valor de Venda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    GlowSize = 12
    ParentFont = False
  end
  object frm_EDT_PC: TEdit
    Left = 224
    Top = 71
    Width = 152
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object frm_EDT_Perc: TEdit
    Left = 224
    Top = 104
    Width = 152
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = frm_EDT_PercExit
  end
  object frm_EDT_VV: TEdit
    Left = 224
    Top = 163
    Width = 152
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
