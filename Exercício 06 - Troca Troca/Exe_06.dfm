object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 136
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frmLB_Titulo: TLabel
    Left = 80
    Top = 8
    Width = 148
    Height = 29
    Caption = '"Troca Troca"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_Var_A: TLabel
    Left = 24
    Top = 56
    Width = 18
    Height = 23
    Caption = 'A:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmLB_Var_B: TLabel
    Left = 24
    Top = 85
    Width = 18
    Height = 23
    Caption = 'B:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object frmEdt_Var_a: TEdit
    Left = 64
    Top = 56
    Width = 108
    Height = 21
    TabOrder = 0
  end
  object frmEdt_Var_B: TEdit
    Left = 64
    Top = 85
    Width = 108
    Height = 21
    TabOrder = 1
  end
  object frmBT_Troca: TButton
    Left = 192
    Top = 56
    Width = 97
    Height = 52
    Caption = 'Trocar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = frmBT_TrocaClick
  end
end
