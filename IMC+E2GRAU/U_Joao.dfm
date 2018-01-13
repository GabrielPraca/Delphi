object FrmJoao: TFrmJoao
  Left = 395
  Top = 334
  Width = 713
  Height = 243
  Caption = 'Jo'#227'o papo de pescador'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblNome: TLabel
    Left = 8
    Top = 8
    Width = 52
    Height = 24
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblQtdPesca: TLabel
    Left = 8
    Top = 40
    Width = 175
    Height = 24
    Caption = 'Quantidade pescada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblQtdExede: TLabel
    Left = 8
    Top = 72
    Width = 183
    Height = 24
    Caption = 'Quantidade exedente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblExedente: TLabel
    Left = 200
    Top = 72
    Width = 113
    Height = 24
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblMulta: TLabel
    Left = 8
    Top = 104
    Width = 120
    Height = 24
    Caption = 'Valor da multa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblVlMulta: TLabel
    Left = 199
    Top = 104
    Width = 121
    Height = 24
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblPaga: TLabel
    Left = 8
    Top = 136
    Width = 138
    Height = 24
    Caption = 'Valor a ser pago'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblPagar: TLabel
    Left = 199
    Top = 136
    Width = 121
    Height = 24
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EdtNome: TEdit
    Left = 72
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtQtdPesca: TEdit
    Left = 200
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtnCalc: TButton
    Left = 32
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Calcular'
    TabOrder = 2
    OnClick = BtnCalcClick
  end
  object BtnLimpa: TButton
    Left = 216
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 3
    OnClick = BtnLimpaClick
  end
  object MemRegistros: TMemo
    Left = 328
    Top = 8
    Width = 369
    Height = 193
    TabOrder = 4
  end
  object BtnMostrar: TButton
    Left = 123
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Mostrar'
    TabOrder = 5
    OnClick = BtnMostrarClick
  end
end
