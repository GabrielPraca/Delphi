object FrmSub: TFrmSub
  Left = 656
  Top = 387
  Width = 321
  Height = 200
  Caption = 'Subtra'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblV1: TLabel
    Left = 8
    Top = 8
    Width = 58
    Height = 23
    Caption = 'Valor 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Myriad Pro Light'
    Font.Style = []
    ParentFont = False
  end
  object LblV2: TLabel
    Left = 8
    Top = 40
    Width = 58
    Height = 23
    Caption = 'Valor 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Myriad Pro Light'
    Font.Style = []
    ParentFont = False
  end
  object LblRes: TLabel
    Left = 8
    Top = 80
    Width = 84
    Height = 23
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Myriad Pro Light'
    Font.Style = []
    ParentFont = False
  end
  object LblResult: TLabel
    Left = 104
    Top = 80
    Width = 193
    Height = 23
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Myriad Pro Light'
    Font.Style = []
    ParentFont = False
  end
  object EdtV1: TEdit
    Left = 96
    Top = 8
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object EdtV2: TEdit
    Left = 96
    Top = 40
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object BtnCalc: TButton
    Left = 40
    Top = 120
    Width = 81
    Height = 33
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = BtnCalcClick
  end
  object BtnLimpa: TButton
    Left = 192
    Top = 120
    Width = 81
    Height = 33
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = BtnLimpaClick
  end
end
