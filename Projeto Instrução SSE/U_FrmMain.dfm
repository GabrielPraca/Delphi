object FrmMain: TFrmMain
  Left = 381
  Top = 202
  Width = 257
  Height = 106
  Caption = 'Teste instru'#231#227'o SSE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblNormal: TLabel
    Left = 8
    Top = 16
    Width = 58
    Height = 13
    Caption = 'Normal: 0ms'
  end
  object LblSSE: TLabel
    Left = 8
    Top = 40
    Width = 52
    Height = 13
    Caption = 'SSE2: 0ms'
  end
  object BtnCalcular: TButton
    Left = 160
    Top = 8
    Width = 75
    Height = 57
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = BtnCalcularClick
  end
end
