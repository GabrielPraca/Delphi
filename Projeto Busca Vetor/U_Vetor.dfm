object FrmBusca: TFrmBusca
  Left = 488
  Top = 316
  BorderStyle = bsSingle
  Caption = 'Busca Vetor'
  ClientHeight = 187
  ClientWidth = 185
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
  object LblIn: TLabel
    Left = 31
    Top = 8
    Width = 123
    Height = 20
    Caption = 'Insira um n'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object LblBusca: TLabel
    Left = 8
    Top = 88
    Width = 50
    Height = 20
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EdtInsere: TEdit
    Left = 60
    Top = 31
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object BtnInsere: TButton
    Left = 55
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 1
    OnClick = BtnInsereClick
  end
  object EdtBusca: TEdit
    Left = 64
    Top = 88
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object BtnOk: TButton
    Left = 136
    Top = 88
    Width = 41
    Height = 25
    Caption = '&Ok'
    TabOrder = 3
    OnClick = BtnOkClick
  end
  object BtnAleatorio: TButton
    Left = 16
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Aleat'#243'rio'
    TabOrder = 4
    OnClick = BtnAleatorioClick
  end
  object BtnCrescente: TButton
    Left = 16
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Crescente'
    TabOrder = 5
    OnClick = BtnCrescenteClick
  end
  object BtnDecrescente: TButton
    Left = 96
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Decrescente'
    TabOrder = 6
    OnClick = BtnDecrescenteClick
  end
  object BtnObservar: TButton
    Left = 96
    Top = 152
    Width = 75
    Height = 25
    Caption = 'O&bservar'
    TabOrder = 7
    OnClick = BtnObservarClick
  end
end
