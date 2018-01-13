object FrmMatrizes: TFrmMatrizes
  Left = 358
  Top = 759
  Width = 496
  Height = 179
  Caption = 'Matrizes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LblNome: TLabel
    Left = 8
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object LblIdade: TLabel
    Left = 8
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Idade'
  end
  object LblECivil: TLabel
    Left = 8
    Top = 64
    Width = 42
    Height = 13
    Caption = 'Est. Civ'#237'l'
  end
  object LblFilhos: TLabel
    Left = 8
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Filhos'
  end
  object EdtNome: TEdit
    Left = 64
    Top = 10
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtIdade: TEdit
    Left = 64
    Top = 34
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EdtECivil: TEdit
    Left = 64
    Top = 58
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdtFilhos: TEdit
    Left = 64
    Top = 82
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object BtnCadastrar: TButton
    Left = 158
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cadastrar'
    TabOrder = 4
    OnClick = BtnCadastrarClick
  end
  object BtnMostrar: TButton
    Left = 254
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Mostrar'
    TabOrder = 5
    OnClick = BtnMostrarClick
  end
  object LstNomes: TListBox
    Left = 200
    Top = 8
    Width = 281
    Height = 97
    ItemHeight = 13
    TabOrder = 6
  end
end
