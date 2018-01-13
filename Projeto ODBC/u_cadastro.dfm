object FrmCadastro: TFrmCadastro
  Left = 194
  Top = 129
  Width = 536
  Height = 480
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
    Left = 72
    Top = 40
    Width = 32
    Height = 13
    Caption = 'codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 72
    Top = 80
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 72
    Top = 120
    Width = 24
    Height = 13
    Caption = 'email'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 72
    Top = 160
    Width = 21
    Height = 13
    Caption = 'fone'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 72
    Top = 200
    Width = 18
    Height = 13
    Caption = 'cep'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 56
    Width = 134
    Height = 21
    DataField = 'codigo'
    DataSource = DmCadastro.DsTbCadPessoa
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 96
    Width = 394
    Height = 21
    DataField = 'nome'
    DataSource = DmCadastro.DsTbCadPessoa
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 136
    Width = 394
    Height = 21
    DataField = 'email'
    DataSource = DmCadastro.DsTbCadPessoa
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 72
    Top = 176
    Width = 121
    Height = 21
    DataField = 'fone'
    DataSource = DmCadastro.DsTbCadPessoa
    MaxLength = 9
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 72
    Top = 216
    Width = 121
    Height = 21
    DataField = 'cep'
    DataSource = DmCadastro.DsTbCadPessoa
    MaxLength = 9
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 72
    Top = 8
    Width = 200
    Height = 25
    DataSource = DmCadastro.DsTbCadPessoa
    TabOrder = 5
  end
end
