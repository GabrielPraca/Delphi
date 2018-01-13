object FrmVetor1: TFrmVetor1
  Left = 513
  Top = 224
  Width = 177
  Height = 529
  Caption = 'Vetor 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LblLista: TLabel
    Left = 24
    Top = 72
    Width = 22
    Height = 13
    Caption = 'Lista'
  end
  object LblNome: TLabel
    Left = 8
    Top = 11
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object LstNomes: TListBox
    Left = 24
    Top = 88
    Width = 121
    Height = 369
    ItemHeight = 13
    TabOrder = 0
  end
  object BtnMostra: TButton
    Left = 48
    Top = 464
    Width = 75
    Height = 25
    Caption = '&Mostrar'
    Enabled = False
    TabOrder = 1
    OnClick = BtnMostraClick
  end
  object EdtNome: TEdit
    Left = 40
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object BtnCadastra: TButton
    Left = 48
    Top = 40
    Width = 75
    Height = 25
    Caption = '&Cadastrar'
    TabOrder = 3
    OnClick = BtnCadastraClick
  end
end
