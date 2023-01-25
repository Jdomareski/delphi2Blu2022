object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 362
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CMBMarca: TComboBox
    Left = 24
    Top = 24
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'Dell'
      'Apple')
  end
  object BtnExibir: TButton
    Left = 88
    Top = 64
    Width = 81
    Height = 25
    Caption = 'Exibir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnExibirClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 120
    Width = 185
    Height = 105
    Caption = 'Dados do Notebook'
    TabOrder = 2
    object LblMemoriaRam: TLabel
      Left = 16
      Top = 26
      Width = 87
      Height = 16
      Caption = 'Mem'#243'ria Ram'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblTamanhoTela: TLabel
      Left = 16
      Top = 48
      Width = 108
      Height = 16
      Caption = 'Tamanho da Tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 248
    Width = 185
    Height = 105
    Caption = 'Dados do Desktop'
    TabOrder = 3
    object LblProcessador: TLabel
      Left = 15
      Top = 24
      Width = 81
      Height = 16
      Caption = 'Processador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblTamanhoHD: TLabel
      Left = 15
      Top = 46
      Width = 100
      Height = 16
      Caption = 'Tamanho da HD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
