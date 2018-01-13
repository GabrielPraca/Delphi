object FrmStrings: TFrmStrings
  Left = 494
  Top = 393
  Width = 386
  Height = 243
  Caption = 'Manipula Strings'
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
  object LblNome: TLabel
    Left = 24
    Top = 8
    Width = 50
    Height = 26
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arno Pro'
    Font.Style = []
    ParentFont = False
  end
  object LblMai: TLabel
    Left = 120
    Top = 48
    Width = 250
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
  end
  object LblMin: TLabel
    Left = 120
    Top = 80
    Width = 250
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
  end
  object LblMen: TLabel
    Left = 120
    Top = 112
    Width = 250
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
  end
  object LblSobre: TLabel
    Left = 120
    Top = 144
    Width = 250
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
  end
  object LblPrimai: TLabel
    Left = 119
    Top = 176
    Width = 250
    Height = 19
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
  end
  object EdtNome: TEdit
    Left = 96
    Top = 8
    Width = 250
    Height = 24
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BtnMai: TButton
    Left = 8
    Top = 40
    Width = 95
    Height = 33
    Caption = 'Mai'#250'sculo'
    TabOrder = 1
    OnClick = BtnMaiClick
  end
  object BtnMin: TButton
    Left = 8
    Top = 72
    Width = 95
    Height = 33
    Caption = 'Min'#250'sculo'
    TabOrder = 2
    OnClick = BtnMinClick
  end
  object BtnMen: TButton
    Left = 8
    Top = 104
    Width = 95
    Height = 33
    Caption = '-3 Letras'
    TabOrder = 3
    OnClick = BtnMenClick
  end
  object BtnSobre: TButton
    Left = 8
    Top = 136
    Width = 95
    Height = 33
    Caption = 'Sobrenome'
    TabOrder = 4
    OnClick = BtnSobreClick
  end
  object BtnPrimai: TButton
    Left = 8
    Top = 168
    Width = 95
    Height = 33
    Caption = 'Primeira Mai'#250'scula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BtnPrimaiClick
  end
end
