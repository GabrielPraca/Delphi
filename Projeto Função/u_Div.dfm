object FrmDiv: TFrmDiv
  Left = 370
  Top = 238
  Width = 366
  Height = 264
  Caption = 'Divis'#227'o'
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
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 30
    Height = 13
    Caption = 'Valor1'
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Valor2'
  end
  object Label3: TLabel
    Left = 40
    Top = 112
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object LblTotal: TLabel
    Left = 137
    Top = 112
    Width = 38
    Height = 13
    Caption = 'LblTotal'
  end
  object EdtV1: TEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EdtV1'
  end
  object EdtV2: TEdit
    Left = 136
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EdtV2'
  end
  object BtnSomar: TButton
    Left = 81
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Dividir'
    TabOrder = 2
    OnClick = BtnSomarClick
  end
  object BtnLimpar: TButton
    Left = 201
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 3
    OnClick = BtnLimparClick
  end
end
