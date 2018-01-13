object FrmDepartamento: TFrmDepartamento
  Left = 475
  Top = 152
  Width = 248
  Height = 191
  Caption = 'Departamento'
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
    Width = 86
    Height = 13
    Caption = 'CodDepartamento'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 67
    Height = 13
    Caption = 'Departamento'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 52
    Height = 13
    Caption = 'Orcamento'
    FocusControl = DBEdit3
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 240
    Height = 25
    DataSource = DataModule1.DS_Departamento
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 48
    Width = 134
    Height = 21
    DataField = 'CodDepartamento'
    DataSource = DataModule1.DS_Departamento
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 88
    Width = 179
    Height = 21
    DataField = 'Departamento'
    DataSource = DataModule1.DS_Departamento
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 128
    Width = 134
    Height = 21
    DataField = 'Orcamento'
    DataSource = DataModule1.DS_Departamento
    TabOrder = 3
  end
end
