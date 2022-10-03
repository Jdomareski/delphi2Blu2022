object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 401
  ClientWidth = 416
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frmLB_Titulo: TLabel
    Left = 72
    Top = 8
    Width = 267
    Height = 25
    Caption = 'Calculo de Comissionamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_NomeVendedor: TLabel
    Left = 31
    Top = 56
    Width = 170
    Height = 23
    Caption = 'Nome do Vendedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_SalárioFixo: TLabel
    Left = 74
    Top = 104
    Width = 127
    Height = 23
    Caption = 'Sal'#225'rio Mensal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_VolVendas: TLabel
    Left = 8
    Top = 152
    Width = 200
    Height = 23
    Caption = 'Volume Vendas Mensal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmEdt_NomeVendedor: TEdit
    Left = 224
    Top = 51
    Width = 186
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object frmEdt_SalarioFixo: TEdit
    Left = 224
    Top = 100
    Width = 186
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object frmEdt_VolVendas: TEdit
    Left = 224
    Top = 152
    Width = 186
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object frmBT_calcular: TButton
    Left = 225
    Top = 200
    Width = 185
    Height = 33
    Caption = 'Calcular Valor a Receber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = frmBT_calcularClick
  end
  object frmMem_Saida: TMemo
    Left = 8
    Top = 264
    Width = 400
    Height = 121
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 4
  end
end
