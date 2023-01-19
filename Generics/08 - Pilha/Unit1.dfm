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
    Top = 24
    Width = 75
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 176
    Top = 0
    Width = 234
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object BtnPush: TButton
    Left = 8
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Push'
    TabOrder = 2
    OnClick = BtnPushClick
  end
  object BtnPop: TButton
    Left = 8
    Top = 93
    Width = 75
    Height = 25
    Caption = 'Pop'
    TabOrder = 3
    OnClick = BtnPopClick
  end
  object BtnExtract: TButton
    Left = 8
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
    OnClick = BtnExtractClick
  end
  object BtnPeek: TButton
    Left = 8
    Top = 155
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 5
    OnClick = BtnPeekClick
  end
  object BtnTrimExcess: TButton
    Left = 8
    Top = 186
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = BtnTrimExcessClick
  end
  object BtnCount: TButton
    Left = 8
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = BtnCountClick
  end
  object BtnCapacity: TButton
    Left = 8
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = BtnCapacityClick
  end
end
