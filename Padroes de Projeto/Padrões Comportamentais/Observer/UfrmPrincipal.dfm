object UfrmPrincipal2: TUfrmPrincipal2
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 516
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 207
    Top = 12
    Width = 9
    Height = 85
  end
  inline FraLog1: TFraLog
    Left = 285
    Top = 339
    Width = 300
    Height = 185
    TabOrder = 0
    ExplicitLeft = 285
    ExplicitTop = 339
    ExplicitHeight = 185
    inherited Label1: TLabel
      Left = 96
      ExplicitLeft = 96
    end
    inherited Memo1: TMemo
      Left = 21
      Width = 270
      Height = 150
      ExplicitLeft = 21
      ExplicitWidth = 270
      ExplicitHeight = 150
    end
  end
  inline FraHistorico1: TFraHistorico
    Left = 306
    Top = 146
    Width = 275
    Height = 185
    TabOrder = 1
    ExplicitLeft = 306
    ExplicitTop = 146
    ExplicitWidth = 275
    ExplicitHeight = 185
    inherited Label1: TLabel
      Left = 72
      ExplicitLeft = 72
    end
    inherited DBGrid1: TDBGrid
      Width = 270
      Height = 180
      Columns = <
        item
          Expanded = False
          FieldName = 'categoria'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 101
          Visible = True
        end>
    end
  end
  inline FraSaldo1: TFraSaldo
    Left = 288
    Top = 0
    Width = 300
    Height = 150
    TabOrder = 2
    ExplicitLeft = 288
    ExplicitHeight = 150
    inherited Label1: TLabel
      Left = 104
      Top = 15
      ExplicitLeft = 104
      ExplicitTop = 15
    end
    inherited LblCreditos: TLabel
      Left = 168
      Top = 66
      Anchors = [akTop, akRight, akBottom]
      ExplicitLeft = 168
      ExplicitTop = 66
    end
    inherited LblDebitos: TLabel
      Left = 168
      Top = 88
      Anchors = [akTop, akRight, akBottom]
      ExplicitLeft = 168
      ExplicitTop = 88
    end
    inherited LblSaldo: TLabel
      Left = 168
      Top = 110
      Anchors = [akTop, akRight, akBottom]
      ExplicitLeft = 168
      ExplicitTop = 110
    end
    inherited Label2: TLabel
      Left = 18
      Top = 66
      ExplicitLeft = 18
      ExplicitTop = 66
    end
    inherited Label3: TLabel
      Left = 18
      Top = 88
      ExplicitLeft = 18
      ExplicitTop = 88
    end
    inherited Label4: TLabel
      Left = 18
      Top = 110
      ExplicitLeft = 18
      ExplicitTop = 110
    end
  end
  inline FraCadastro1: TFraCadastro
    Left = 0
    Top = 0
    Width = 300
    Height = 510
    TabOrder = 3
    ExplicitWidth = 300
    ExplicitHeight = 510
    inherited Shape1: TShape
      Left = 207
      ExplicitLeft = 207
    end
    inherited BtnGravar: TButton
      Left = 222
      Top = 72
      Width = 60
      Height = 25
      Font.Height = -13
      ParentFont = False
      ExplicitLeft = 222
      ExplicitTop = 72
      ExplicitWidth = 60
      ExplicitHeight = 25
    end
    inherited CmbOperacao: TComboBox
      Width = 125
      ExplicitWidth = 125
    end
    inherited CmbCategoria: TComboBox
      Width = 125
      ExplicitWidth = 125
    end
    inherited EdtValor: TEdit
      Width = 126
      ExplicitWidth = 126
    end
    inherited DBGrid1: TDBGrid
      Width = 280
    end
  end
end
