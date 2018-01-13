object FrmModelo: TFrmModelo
  Left = 553
  Top = 374
  Width = 228
  Height = 147
  Caption = 'Calcular Valores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 8
    Top = 57
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object LblRes: TLabel
    Left = 64
    Top = 57
    Width = 3
    Height = 13
  end
  object EdtV1: TEdit
    Left = 48
    Top = 4
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edtv2: TEdit
    Left = 48
    Top = 28
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BtnCalcular: TButton
    Left = 16
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
  end
  object BtnLimpar: TButton
    Left = 128
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = BtnLimparClick
  end
end
