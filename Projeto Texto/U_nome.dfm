object FrmNome: TFrmNome
  Left = 534
  Top = 372
  Width = 408
  Height = 187
  Caption = 'Nome'
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
  object LblSobre: TLabel
    Left = 8
    Top = 40
    Width = 100
    Height = 24
    Caption = 'Sobrenome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblRes: TLabel
    Left = 8
    Top = 72
    Width = 385
    Height = 20
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EdtNome: TEdit
    Left = 120
    Top = 8
    Width = 273
    Height = 21
    Hint = 'Insira seu nome aqui'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object EdtSobre: TEdit
    Left = 120
    Top = 40
    Width = 273
    Height = 21
    Hint = 'Insira seu sobrenome aqui'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object BtnOk: TButton
    Left = 48
    Top = 104
    Width = 97
    Height = 41
    Hint = 'Mostra seu nome e sobre nome juntos'
    Caption = '&OK'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnOkClick
  end
  object BtnLimpa: TButton
    Left = 256
    Top = 104
    Width = 97
    Height = 41
    Hint = 'Limpa todos os campos'
    Caption = '&Limpa'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnLimpaClick
  end
end
