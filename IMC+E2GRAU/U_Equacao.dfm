object FrmEqua: TFrmEqua
  Left = 450
  Top = 236
  Width = 225
  Height = 267
  Caption = 'Equa'#231#227'o do 2'#186' grau'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblA: TLabel
    Left = 8
    Top = 8
    Width = 13
    Height = 24
    Caption = 'A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblB: TLabel
    Left = 8
    Top = 40
    Width = 12
    Height = 24
    Caption = 'B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblC: TLabel
    Left = 8
    Top = 72
    Width = 13
    Height = 24
    Caption = 'C'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblDelt: TLabel
    Left = 8
    Top = 104
    Width = 42
    Height = 24
    Caption = 'Delta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblDelta: TLabel
    Left = 63
    Top = 107
    Width = 66
    Height = 20
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblX1: TLabel
    Left = 8
    Top = 136
    Width = 24
    Height = 24
    Caption = 'X1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblX2: TLabel
    Left = 8
    Top = 168
    Width = 24
    Height = 24
    Caption = 'X2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblValX1: TLabel
    Left = 47
    Top = 139
    Width = 66
    Height = 20
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblValX2: TLabel
    Left = 47
    Top = 171
    Width = 66
    Height = 20
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EdtA: TEdit
    Left = 32
    Top = 8
    Width = 81
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object EdtB: TEdit
    Left = 32
    Top = 40
    Width = 81
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object EdtC: TEdit
    Left = 32
    Top = 72
    Width = 81
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object BtnCalc: TButton
    Left = 16
    Top = 200
    Width = 75
    Height = 25
    Caption = '&Calcular'
    TabOrder = 3
    OnClick = BtnCalcClick
  end
  object BtnLimpa: TButton
    Left = 128
    Top = 200
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 4
    OnClick = BtnLimpaClick
  end
end
