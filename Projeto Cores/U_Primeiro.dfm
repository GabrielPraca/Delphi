object FrmPrimeiro: TFrmPrimeiro
  Left = 321
  Top = 225
  Width = 871
  Height = 640
  Caption = 'Primeira Tela'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnAzul: TButton
    Left = 344
    Top = 264
    Width = 75
    Height = 25
    Hint = 'Clique neste bot'#227'o para a tela ficar azul'
    Caption = '&Azul'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BtnAzulClick
  end
  object BtnAmarelo: TButton
    Left = 416
    Top = 264
    Width = 75
    Height = 25
    Hint = 'Clique neste bot'#227'o para a tela ficar Amarelo'
    Caption = 'A&marelo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnAmareloClick
  end
  object BtnVerde: TButton
    Left = 344
    Top = 288
    Width = 75
    Height = 25
    Hint = 'Clique neste bot'#227'o para a tela ficar Verde'
    Caption = '&Verde'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnVerdeClick
  end
  object BtnVermelho: TButton
    Left = 416
    Top = 288
    Width = 75
    Height = 25
    Hint = 'Clique neste bot'#227'o para a tela ficar Vermelho'
    Caption = 'V&ermelho'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnVermelhoClick
  end
end
