object FrmCadPessoa: TFrmCadPessoa
  Left = 387
  Top = 152
  Width = 299
  Height = 272
  Caption = 'Cadastro de Pessoa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 24
    Height = 13
    Caption = 'Fone'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 25
    Height = 13
    Caption = 'Email'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 32
    Width = 41
    Height = 21
    DataField = 'Codigo'
    DataSource = DMCadastro.DSPessoa
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 72
    Width = 185
    Height = 21
    DataField = 'Nome'
    DataSource = DMCadastro.DSPessoa
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 112
    Width = 186
    Height = 21
    DataField = 'Fone'
    DataSource = DMCadastro.DSPessoa
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 152
    Width = 185
    Height = 21
    DataField = 'Email'
    DataSource = DMCadastro.DSPessoa
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 192
    Width = 240
    Height = 25
    TabOrder = 4
  end
end
