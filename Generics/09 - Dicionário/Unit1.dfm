object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 370
  ClientWidth = 609
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
  object LBLCPF: TLabel
    Left = 192
    Top = 8
    Width = 27
    Height = 16
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblNome: TLabel
    Left = 380
    Top = 8
    Width = 38
    Height = 16
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtCPF: TEdit
    Left = 192
    Top = 30
    Width = 137
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 380
    Top = 30
    Width = 205
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 192
    Top = 60
    Width = 393
    Height = 291
    TabOrder = 2
  end
  object BtnAdd: TButton
    Left = 16
    Top = 19
    Width = 129
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = BtnAddClick
  end
  object BtnTryGetValue: TButton
    Left = 16
    Top = 47
    Width = 129
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 4
    OnClick = BtnTryGetValueClick
  end
  object BtnRemove: TButton
    Left = 16
    Top = 78
    Width = 129
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = BtnRemoveClick
  end
  object BtnTrimExcess: TButton
    Left = 16
    Top = 109
    Width = 129
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = BtnTrimExcessClick
  end
  object BtnContainsKey: TButton
    Left = 16
    Top = 140
    Width = 129
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 7
    OnClick = BtnContainsKeyClick
  end
  object BtnAddOrSetValue: TButton
    Left = 16
    Top = 171
    Width = 129
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 8
    OnClick = BtnAddOrSetValueClick
  end
  object BtnListaKey: TButton
    Left = 16
    Top = 202
    Width = 129
    Height = 25
    Caption = 'Lista Key'
    TabOrder = 9
    OnClick = BtnListaKeyClick
  end
  object BtnListaValue: TButton
    Left = 16
    Top = 233
    Width = 129
    Height = 25
    Caption = 'Lista Value'
    TabOrder = 10
    OnClick = BtnListaValueClick
  end
  object BtnClear: TButton
    Left = 16
    Top = 264
    Width = 129
    Height = 25
    Caption = 'Clear'
    TabOrder = 11
    OnClick = BtnClearClick
  end
  object BtnOnKEYNotify: TButton
    Left = 16
    Top = 295
    Width = 129
    Height = 25
    Caption = 'OnKeyBNotify'
    TabOrder = 12
    OnClick = BtnOnKEYNotifyClick
  end
  object BtnONValueNotify: TButton
    Left = 16
    Top = 326
    Width = 129
    Height = 25
    Caption = 'ONValueNotify'
    TabOrder = 13
    OnClick = BtnONValueNotifyClick
  end
end
