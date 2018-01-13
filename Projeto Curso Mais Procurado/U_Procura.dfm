object FrmProcura: TFrmProcura
  Left = 349
  Top = 206
  BorderStyle = bsSingle
  Caption = 'Procurar Curso'
  ClientHeight = 169
  ClientWidth = 201
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
  object ShpMaisProcurado: TShape
    Left = 15
    Top = 128
    Width = 169
    Height = 33
  end
  object Label1: TLabel
    Left = 68
    Top = 130
    Width = 74
    Height = 13
    Caption = 'Mais Procurado'
    Color = clWhite
    ParentColor = False
  end
  object LblCursoProcurado: TLabel
    Left = 23
    Top = 146
    Width = 73
    Height = 13
    Caption = 'Curso: Nenhum'
    Color = clWhite
    ParentColor = False
  end
  object Button1: TButton
    Left = 63
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Verificar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GpbCurso: TGroupBox
    Left = 8
    Top = 8
    Width = 113
    Height = 83
    Caption = 'Curso'
    TabOrder = 1
    object RdbInfo: TRadioButton
      Left = 4
      Top = 16
      Width = 93
      Height = 17
      Caption = 'Inform'#225'tica'
      TabOrder = 0
    end
    object RdbAdm: TRadioButton
      Left = 4
      Top = 32
      Width = 93
      Height = 17
      Caption = 'Administra'#231#227'o'
      TabOrder = 1
    end
    object RdbEM: TRadioButton
      Left = 4
      Top = 48
      Width = 93
      Height = 17
      Caption = 'Ensino M'#233'dio'
      TabOrder = 2
    end
    object RdbLog: TRadioButton
      Left = 4
      Top = 64
      Width = 93
      Height = 17
      Caption = 'Log'#237'stica'
      TabOrder = 3
    end
  end
  object GpbAno: TGroupBox
    Left = 128
    Top = 8
    Width = 65
    Height = 83
    Caption = 'Ano'
    TabOrder = 2
    object Rdb1ano: TRadioButton
      Left = 4
      Top = 16
      Width = 58
      Height = 17
      Caption = '1'#186' Ano'
      TabOrder = 0
    end
    object Rdb2ano: TRadioButton
      Left = 4
      Top = 40
      Width = 58
      Height = 17
      Caption = '2'#186' Ano'
      TabOrder = 1
    end
    object Rdb3ano: TRadioButton
      Left = 4
      Top = 64
      Width = 58
      Height = 17
      Caption = '3'#186' Ano'
      TabOrder = 2
    end
  end
end
