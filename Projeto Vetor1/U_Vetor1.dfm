object FrmVetor1: TFrmVetor1
  Left = 503
  Top = 231
  Width = 145
  Height = 467
  Caption = 'Vetor 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LblLista: TLabel
    Left = 8
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Lista'
  end
  object LstNomes: TListBox
    Left = 8
    Top = 24
    Width = 121
    Height = 369
    ItemHeight = 13
    TabOrder = 0
  end
  object BtnMostra: TButton
    Left = 32
    Top = 400
    Width = 75
    Height = 25
    Caption = '&Mostrar'
    TabOrder = 1
    OnClick = BtnMostraClick
  end
end
