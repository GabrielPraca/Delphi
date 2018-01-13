object FrmMedia: TFrmMedia
  Left = 374
  Top = 191
  Width = 601
  Height = 410
  Caption = 'M'#233'dia dos Alunos'
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
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object LblNota1: TLabel
    Left = 8
    Top = 48
    Width = 36
    Height = 13
    Caption = '1'#170' Nota'
  end
  object LblNota2: TLabel
    Left = 8
    Top = 88
    Width = 36
    Height = 13
    Caption = '2'#170' Nota'
  end
  object LblNota3: TLabel
    Left = 8
    Top = 128
    Width = 36
    Height = 13
    Caption = '3'#170' Nota'
  end
  object LblNota4: TLabel
    Left = 8
    Top = 168
    Width = 36
    Height = 13
    Caption = '4'#170' Nota'
  end
  object LblNota5: TLabel
    Left = 8
    Top = 208
    Width = 36
    Height = 13
    Caption = '5'#170' Nota'
  end
  object EdtNome: TEdit
    Left = 8
    Top = 24
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object EdtNota1: TEdit
    Left = 8
    Top = 64
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object EdtNota2: TEdit
    Left = 8
    Top = 104
    Width = 129
    Height = 21
    TabOrder = 2
  end
  object EdtNota3: TEdit
    Left = 8
    Top = 144
    Width = 129
    Height = 21
    TabOrder = 3
  end
  object EdtNota4: TEdit
    Left = 8
    Top = 184
    Width = 129
    Height = 21
    TabOrder = 4
  end
  object EdtNota5: TEdit
    Left = 8
    Top = 224
    Width = 129
    Height = 21
    TabOrder = 5
  end
  object BtnEnviar: TButton
    Left = 35
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Enviar'
    TabOrder = 6
    OnClick = BtnEnviarClick
  end
  object LstMedias: TListBox
    Left = 144
    Top = 8
    Width = 441
    Height = 361
    ItemHeight = 13
    TabOrder = 7
  end
  object BtnMostra: TButton
    Left = 32
    Top = 312
    Width = 75
    Height = 25
    Caption = '&Mostrar'
    TabOrder = 8
    OnClick = BtnMostraClick
  end
end
