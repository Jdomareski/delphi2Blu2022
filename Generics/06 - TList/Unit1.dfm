object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 418
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
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 137
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 184
    Top = 8
    Width = 217
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object BtnAdd: TButton
    Left = 8
    Top = 57
    Width = 137
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = BtnAddClick
  end
  object BtnRemove: TButton
    Left = 8
    Top = 88
    Width = 137
    Height = 25
    Caption = 'Remove'
    TabOrder = 3
    OnClick = BtnRemoveClick
  end
  object BtnListar: TButton
    Left = 8
    Top = 119
    Width = 137
    Height = 25
    Caption = 'Listar'
    TabOrder = 4
    OnClick = BtnListarClick
  end
  object BtnCapacity: TButton
    Left = 8
    Top = 150
    Width = 137
    Height = 25
    Caption = 'Capacity'
    TabOrder = 5
    OnClick = BtnCapacityClick
  end
  object BtnCount: TButton
    Left = 8
    Top = 185
    Width = 137
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = BtnCountClick
  end
  object BtnNotify: TButton
    Left = 8
    Top = 216
    Width = 137
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 7
    OnClick = BtnNotifyClick
  end
end
