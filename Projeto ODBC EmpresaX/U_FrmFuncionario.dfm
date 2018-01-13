object FrmFuncionario: TFrmFuncionario
  Left = 382
  Top = 219
  Width = 248
  Height = 280
  Caption = 'Funcion'#225'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 43
    Height = 13
    Caption = 'Matricula'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 86
    Height = 13
    Caption = 'CodDepartamento'
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 79
    Height = 13
    Caption = 'DataNascimento'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 192
    Width = 66
    Height = 13
    Caption = 'DataMatricula'
    FocusControl = DBEdit5
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 240
    Height = 25
    DataSource = DataModule1.DS_Funcionario
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 134
    Height = 21
    DataField = 'Matricula'
    DataSource = DataModule1.DS_Funcionario
    Enabled = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 128
    Width = 226
    Height = 21
    DataField = 'Nome'
    DataSource = DataModule1.DS_Funcionario
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 168
    Width = 103
    Height = 21
    DataField = 'DataNascimento'
    DataSource = DataModule1.DS_Funcionario
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 208
    Width = 103
    Height = 21
    DataField = 'DataMatricula'
    DataSource = DataModule1.DS_Funcionario
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 88
    Width = 145
    Height = 21
    DataField = 'CodDepartamento'
    DataSource = DataModule1.DS_Funcionario
    KeyField = 'CodDepartamento'
    ListField = 'Departamento'
    ListSource = DataModule1.DS_Departamento
    TabOrder = 5
  end
end
