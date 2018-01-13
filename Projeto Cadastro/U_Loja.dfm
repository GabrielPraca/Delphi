object FrmCadastro: TFrmCadastro
  Left = 392
  Top = 230
  BorderStyle = bsDialog
  Caption = 'Loja Pikachu - Cadastro'
  ClientHeight = 446
  ClientWidth = 641
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
  object LblNomeLoja: TLabel
    Left = 200
    Top = 8
    Width = 224
    Height = 48
    Caption = 'Lojas Pikachu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
  end
  object LblCadastro: TLabel
    Left = 272
    Top = 64
    Width = 78
    Height = 25
    Caption = 'Cadastro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro'
    Font.Style = []
    ParentFont = False
  end
  object LblNome: TLabel
    Left = 8
    Top = 112
    Width = 39
    Height = 25
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblEnder: TLabel
    Left = 8
    Top = 144
    Width = 59
    Height = 25
    Caption = 'Endere'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblBairro: TLabel
    Left = 8
    Top = 176
    Width = 39
    Height = 25
    Caption = 'Bairro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblCidade: TLabel
    Left = 8
    Top = 208
    Width = 44
    Height = 25
    Caption = 'Cidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblCep: TLabel
    Left = 8
    Top = 240
    Width = 23
    Height = 25
    Caption = 'CEP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblCpf: TLabel
    Left = 8
    Top = 272
    Width = 23
    Height = 25
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblCel: TLabel
    Left = 8
    Top = 304
    Width = 45
    Height = 25
    Caption = 'Celular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblEmail: TLabel
    Left = 8
    Top = 336
    Width = 42
    Height = 25
    Caption = 'E-Mail'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblRg: TLabel
    Left = 173
    Top = 240
    Width = 20
    Height = 25
    Caption = 'RG'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblTel: TLabel
    Left = 173
    Top = 272
    Width = 20
    Height = 25
    Caption = 'Tel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Myriad Pro Cond'
    Font.Style = []
    ParentFont = False
  end
  object LblFicha: TLabel
    Left = 328
    Top = 112
    Width = 297
    Height = 249
    AutoSize = False
  end
  object EdtNome: TEdit
    Left = 80
    Top = 112
    Width = 225
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object EdtEnder: TEdit
    Left = 80
    Top = 144
    Width = 225
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object EdtBairro: TEdit
    Left = 80
    Top = 176
    Width = 225
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object EdtCidade: TEdit
    Left = 80
    Top = 208
    Width = 225
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object EdtCep: TEdit
    Left = 80
    Top = 240
    Width = 89
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object EdtCpf: TEdit
    Left = 80
    Top = 272
    Width = 89
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object EdtCel: TEdit
    Left = 80
    Top = 304
    Width = 225
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object EdtEmail: TEdit
    Left = 80
    Top = 336
    Width = 225
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object EdtRg: TEdit
    Left = 200
    Top = 240
    Width = 105
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object EdtTel: TEdit
    Left = 200
    Top = 272
    Width = 105
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object BtnCadastra: TButton
    Left = 8
    Top = 384
    Width = 97
    Height = 33
    Caption = '&Cadastrar'
    TabOrder = 10
    OnClick = BtnCadastraClick
  end
  object BtnLimpa: TButton
    Left = 112
    Top = 384
    Width = 97
    Height = 33
    Caption = '&Limpar'
    TabOrder = 11
    OnClick = BtnLimpaClick
  end
  object BtnSair: TButton
    Left = 216
    Top = 384
    Width = 97
    Height = 33
    Caption = '&Sair'
    TabOrder = 12
    OnClick = BtnSairClick
  end
  object BtnLimpaFicha: TButton
    Left = 424
    Top = 384
    Width = 105
    Height = 33
    Caption = 'Limpar &Ficha'
    TabOrder = 13
    OnClick = BtnLimpaFichaClick
  end
end
