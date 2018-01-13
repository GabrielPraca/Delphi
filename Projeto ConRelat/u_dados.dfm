object FrmDados: TFrmDados
  Left = 192
  Top = 124
  Width = 313
  Height = 231
  Caption = 'Cadastro'
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
    Left = 8
    Top = 8
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 32
    Height = 13
    Caption = 'cidade'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 24
    Height = 13
    Caption = 'email'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 150
    Height = 21
    DataField = 'nome'
    DataSource = DMRelatorio.DSRelat
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 150
    Height = 21
    DataField = 'cidade'
    DataSource = DMRelatorio.DSRelat
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 104
    Width = 150
    Height = 21
    DataField = 'email'
    DataSource = DMRelatorio.DSRelat
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 28
    Top = 160
    Width = 240
    Height = 25
    DataSource = DMRelatorio.DSRelat
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 168
    Top = 32
    Width = 121
    Height = 81
    Caption = 'Gerar Relat'#243'rios'
    TabOrder = 4
    object BtnGeral: TButton
      Left = 10
      Top = 16
      Width = 100
      Height = 25
      Caption = 'Relat'#243'rio Geral'
      TabOrder = 0
      OnClick = BtnGeralClick
    end
    object BtnFiltro: TButton
      Left = 10
      Top = 48
      Width = 100
      Height = 25
      Caption = 'Relat'#243'rio Filtrado'
      TabOrder = 1
      OnClick = BtnFiltroClick
    end
  end
end
