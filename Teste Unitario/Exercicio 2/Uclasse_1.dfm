object FrmFechamento: TFrmFechamento
  Left = 0
  Top = 0
  Caption = 'Fechamento de Pedido'
  ClientHeight = 270
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblQtd: TLabel
    Left = 8
    Top = 64
    Width = 120
    Height = 16
    Caption = 'Quantidade de Itens:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblVlrUnt: TLabel
    Left = 45
    Top = 96
    Width = 83
    Height = 16
    Caption = 'Valor Unit'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblVlrSemDesc: TLabel
    Left = 8
    Top = 128
    Width = 121
    Height = 16
    Caption = 'Valor Sem Desconto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblDesc: TLabel
    Left = 136
    Top = 150
    Width = 57
    Height = 16
    Caption = 'Desconto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblVlrPagar: TLabel
    Left = 46
    Top = 182
    Width = 82
    Height = 16
    Caption = 'Total a Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblResult: TLabel
    Left = 190
    Top = 198
    Width = 8
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LblTot1: TLabel
    Left = 309
    Top = 116
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblPctDesc: TLabel
    Left = 327
    Top = 150
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNome: TLabel
    Left = 146
    Top = 27
    Width = 175
    Height = 23
    Caption = 'Nome do Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtQtd: TEdit
    Left = 248
    Top = 56
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
  object EdtVlrUnt: TEdit
    Left = 248
    Top = 86
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
  object BTCalcular: TButton
    Left = 45
    Top = 209
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = BTCalcularClick
  end
end
