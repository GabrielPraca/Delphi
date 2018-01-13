object FrmIMC: TFrmIMC
  Left = 505
  Top = 292
  Width = 217
  Height = 208
  Caption = 'IMC -Calculo'
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
  object LblPeso: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 25
    Caption = 'Peso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Poplar Std'
    Font.Style = []
    ParentFont = False
  end
  object LblAltura: TLabel
    Left = 8
    Top = 40
    Width = 41
    Height = 25
    Caption = 'Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Poplar Std'
    Font.Style = []
    ParentFont = False
  end
  object LblRes: TLabel
    Left = 56
    Top = 72
    Width = 86
    Height = 25
    Caption = 'O seu '#237'ndice '#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Poplar Std'
    Font.Style = []
    ParentFont = False
  end
  object LblResult: TLabel
    Left = 76
    Top = 104
    Width = 57
    Height = 24
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EdtPeso: TEdit
    Left = 64
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtAltura: TEdit
    Left = 64
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtnCalcular: TButton
    Left = 16
    Top = 136
    Width = 89
    Height = 25
    Hint = 'Calcular seu IMC'
    Caption = '&Calcular'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnCalcularClick
  end
  object BtnLimpa: TButton
    Left = 112
    Top = 136
    Width = 83
    Height = 25
    Caption = '&Limpa'
    TabOrder = 3
    OnClick = BtnLimpaClick
  end
end
