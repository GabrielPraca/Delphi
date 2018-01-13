object FrmCalcMatriz: TFrmCalcMatriz
  Left = 387
  Top = 273
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculo Matriz'
  ClientHeight = 201
  ClientWidth = 353
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
  object ShpRetangulo: TShape
    Left = 67
    Top = 0
    Width = 219
    Height = 89
    Brush.Color = clBtnFace
  end
  object LblOperacao: TLabel
    Left = 112
    Top = 122
    Width = 8
    Height = 13
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblResult: TLabel
    Left = 232
    Top = 122
    Width = 8
    Height = 13
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GpbMatrizA: TGroupBox
    Left = 8
    Top = 96
    Width = 97
    Height = 65
    Caption = 'Matriz A'
    TabOrder = 0
    object EdtMA00: TEdit
      Left = 8
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object EdtMA01: TEdit
      Left = 48
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 1
    end
    object EdtMA10: TEdit
      Left = 8
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 5
    end
    object EdtMA11: TEdit
      Left = 48
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 6
    end
    object EdtMA20: TEdit
      Left = 8
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 8
      Visible = False
    end
    object EdtMA21: TEdit
      Left = 48
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 9
      Visible = False
    end
    object EdtMA30: TEdit
      Left = 8
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 10
      Visible = False
    end
    object EdtMA40: TEdit
      Left = 8
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 11
      Visible = False
    end
    object EdtMA31: TEdit
      Left = 48
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 12
      Visible = False
    end
    object EdtMA02: TEdit
      Left = 88
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object EdtMA12: TEdit
      Left = 88
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 7
      Visible = False
    end
    object EdtMA22: TEdit
      Left = 88
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 13
      Visible = False
    end
    object EdtMA32: TEdit
      Left = 88
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 14
      Visible = False
    end
    object EdtMA42: TEdit
      Left = 88
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 15
      Visible = False
    end
    object EdtMA03: TEdit
      Left = 128
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 3
      Visible = False
    end
    object EdtMA13: TEdit
      Left = 128
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 16
      Visible = False
    end
    object EdtMA23: TEdit
      Left = 128
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 17
      Visible = False
    end
    object EdtMA33: TEdit
      Left = 128
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 18
      Visible = False
    end
    object EdtMA43: TEdit
      Left = 128
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 19
      Visible = False
    end
    object EdtMA04: TEdit
      Left = 168
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 4
      Visible = False
    end
    object EdtMA14: TEdit
      Left = 168
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 20
      Visible = False
    end
    object EdtMA24: TEdit
      Left = 168
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 21
      Visible = False
    end
    object EdtMA34: TEdit
      Left = 168
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 22
      Visible = False
    end
    object EdtMA44: TEdit
      Left = 168
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 23
      Visible = False
    end
    object EdtMA41: TEdit
      Left = 48
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 24
      Visible = False
    end
  end
  object BtnCalcular: TButton
    Left = 139
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Calcular'
    TabOrder = 1
    OnClick = BtnCalcularClick
  end
  object GpbTamanho: TGroupBox
    Left = 78
    Top = 8
    Width = 89
    Height = 73
    Caption = 'Tamanhos'
    TabOrder = 2
    object Rdb3: TRadioButton
      Left = 10
      Top = 32
      Width = 73
      Height = 17
      Caption = 'Matriz 3x3'
      TabOrder = 0
      OnClick = Rdb3Click
    end
    object Rdb5: TRadioButton
      Left = 10
      Top = 48
      Width = 73
      Height = 17
      Caption = 'Matriz 5x5'
      TabOrder = 1
      OnClick = Rdb5Click
    end
    object Rdb2: TRadioButton
      Left = 10
      Top = 16
      Width = 73
      Height = 17
      Caption = 'Matriz 2x2'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = Rdb2Click
    end
  end
  object GpbOperacao: TGroupBox
    Left = 174
    Top = 16
    Width = 101
    Height = 57
    Caption = 'Opera'#231#227'o'
    TabOrder = 3
    object RdbSoma: TRadioButton
      Left = 7
      Top = 16
      Width = 90
      Height = 17
      Caption = 'Soma'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RdbSomaClick
    end
    object RdbMult: TRadioButton
      Left = 7
      Top = 32
      Width = 90
      Height = 17
      Caption = 'Multiplica'#231#227'o'
      TabOrder = 1
      OnClick = RdbMultClick
    end
  end
  object GpbMatrizB: TGroupBox
    Left = 128
    Top = 96
    Width = 97
    Height = 65
    Caption = 'Matriz B'
    TabOrder = 4
    object EdtMB00: TEdit
      Left = 8
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object EdtMB01: TEdit
      Left = 48
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 1
    end
    object EdtMB10: TEdit
      Left = 8
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 2
    end
    object EdtMB11: TEdit
      Left = 48
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 3
    end
    object EdtMB20: TEdit
      Left = 8
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 4
      Visible = False
    end
    object EdtMB21: TEdit
      Left = 48
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 5
      Visible = False
    end
    object EdtMB30: TEdit
      Left = 8
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 6
      Visible = False
    end
    object EdtMB40: TEdit
      Left = 8
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 7
      Visible = False
    end
    object EdtMB31: TEdit
      Left = 48
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 8
      Visible = False
    end
    object EdtMB02: TEdit
      Left = 88
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 9
      Visible = False
    end
    object EdtMB12: TEdit
      Left = 88
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 10
      Visible = False
    end
    object EdtMB22: TEdit
      Left = 88
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 11
      Visible = False
    end
    object EdtMB32: TEdit
      Left = 88
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 12
      Visible = False
    end
    object EdtMB42: TEdit
      Left = 88
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 13
      Visible = False
    end
    object EdtMB03: TEdit
      Left = 128
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 14
      Visible = False
    end
    object EdtMB13: TEdit
      Left = 128
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 15
      Visible = False
    end
    object EdtMB23: TEdit
      Left = 128
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 16
      Visible = False
    end
    object EdtMB33: TEdit
      Left = 128
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 17
      Visible = False
    end
    object EdtMB43: TEdit
      Left = 128
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 18
      Visible = False
    end
    object EdtMB04: TEdit
      Left = 168
      Top = 16
      Width = 41
      Height = 21
      TabOrder = 19
      Visible = False
    end
    object EdtMB14: TEdit
      Left = 168
      Top = 36
      Width = 41
      Height = 21
      TabOrder = 20
      Visible = False
    end
    object EdtMB24: TEdit
      Left = 168
      Top = 56
      Width = 41
      Height = 21
      TabOrder = 21
      Visible = False
    end
    object EdtMB34: TEdit
      Left = 168
      Top = 76
      Width = 41
      Height = 21
      TabOrder = 22
      Visible = False
    end
    object EdtMB44: TEdit
      Left = 168
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 23
      Visible = False
    end
    object EdtMB41: TEdit
      Left = 48
      Top = 96
      Width = 41
      Height = 21
      TabOrder = 24
      Visible = False
    end
  end
  object GpbMatrizC: TGroupBox
    Left = 248
    Top = 96
    Width = 97
    Height = 65
    Caption = 'Matriz C'
    TabOrder = 5
    object EdtMC00: TEdit
      Left = 8
      Top = 16
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object EdtMC01: TEdit
      Left = 48
      Top = 16
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object EdtMC10: TEdit
      Left = 8
      Top = 36
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object EdtMC11: TEdit
      Left = 48
      Top = 36
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object EdtMC20: TEdit
      Left = 8
      Top = 56
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Visible = False
    end
    object EdtMC21: TEdit
      Left = 48
      Top = 56
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Visible = False
    end
    object EdtMC30: TEdit
      Left = 8
      Top = 76
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 6
      Visible = False
    end
    object EdtMC40: TEdit
      Left = 8
      Top = 96
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 7
      Visible = False
    end
    object EdtMC31: TEdit
      Left = 48
      Top = 76
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 8
      Visible = False
    end
    object EdtMC02: TEdit
      Left = 88
      Top = 16
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 9
      Visible = False
    end
    object EdtMC12: TEdit
      Left = 88
      Top = 36
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 10
      Visible = False
    end
    object EdtMC22: TEdit
      Left = 88
      Top = 56
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 11
      Visible = False
    end
    object EdtMC32: TEdit
      Left = 88
      Top = 76
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 12
      Visible = False
    end
    object EdtMC42: TEdit
      Left = 88
      Top = 96
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 13
      Visible = False
    end
    object EdtMC03: TEdit
      Left = 128
      Top = 16
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 14
      Visible = False
    end
    object EdtMC13: TEdit
      Left = 128
      Top = 36
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 15
      Visible = False
    end
    object EdtMC23: TEdit
      Left = 128
      Top = 56
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 16
      Visible = False
    end
    object EdtMC33: TEdit
      Left = 128
      Top = 76
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 17
      Visible = False
    end
    object EdtMC43: TEdit
      Left = 128
      Top = 96
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 18
      Visible = False
    end
    object EdtMC04: TEdit
      Left = 168
      Top = 16
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 19
      Visible = False
    end
    object EdtMC14: TEdit
      Left = 168
      Top = 36
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 20
      Visible = False
    end
    object EdtMC24: TEdit
      Left = 168
      Top = 56
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 21
      Visible = False
    end
    object EdtMC34: TEdit
      Left = 168
      Top = 76
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 22
      Visible = False
    end
    object EdtMC44: TEdit
      Left = 168
      Top = 96
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 23
      Visible = False
    end
    object EdtMC41: TEdit
      Left = 48
      Top = 96
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 24
      Visible = False
    end
  end
end
