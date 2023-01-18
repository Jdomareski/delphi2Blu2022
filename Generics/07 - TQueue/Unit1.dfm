object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 261
  ClientWidth = 409
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
    Left = 0
    Top = 8
    Width = 105
    Height = 25
    TabOrder = 0
    Text = 'Edit1'
  end
  object BtnEnqueue: TButton
    Left = 0
    Top = 39
    Width = 105
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 1
    OnClick = BtnEnqueueClick
  end
  object BtnDequeue: TButton
    Left = 0
    Top = 70
    Width = 105
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 2
    OnClick = BtnDequeueClick
  end
  object BtnExtract: TButton
    Left = 0
    Top = 101
    Width = 105
    Height = 25
    Caption = 'Extract'
    TabOrder = 3
    OnClick = BtnExtractClick
  end
  object BtnPeek: TButton
    Left = 0
    Top = 132
    Width = 105
    Height = 25
    Caption = 'Peek'
    TabOrder = 4
    OnClick = BtnPeekClick
  end
  object BtnTrimExcess: TButton
    Left = 0
    Top = 163
    Width = 105
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 5
    OnClick = BtnTrimExcessClick
  end
  object BtnCount: TButton
    Left = 0
    Top = 194
    Width = 105
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = BtnCountClick
  end
  object BtnCapacity: TButton
    Left = 0
    Top = 225
    Width = 105
    Height = 25
    Caption = 'Capacity'
    TabOrder = 7
    OnClick = BtnCapacityClick
  end
  object Memo1: TMemo
    Left = 159
    Top = 8
    Width = 242
    Height = 242
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
end
