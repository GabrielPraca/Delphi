object Frm_Agencia: TFrm_Agencia
  Left = 304
  Top = 134
  AlphaBlend = True
  BorderStyle = bsDialog
  Caption = 'Agencia de Viagem'
  ClientHeight = 424
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  PixelsPerInch = 96
  TextHeight = 13
  object LblNome: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 20
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EdtNome: TEdit
    Left = 56
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 0
    OnExit = EdtNomeExit
  end
  object GpbEC: TGroupBox
    Left = 16
    Top = 40
    Width = 281
    Height = 81
    Caption = 'Estado Civil'
    TabOrder = 1
    object LblCon: TLabel
      Left = 6
      Top = 56
      Width = 107
      Height = 16
      Caption = 'Nome do conjuge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RdbSol: TRadioButton
      Left = 8
      Top = 16
      Width = 70
      Height = 17
      Caption = 'Solteiro'
      TabOrder = 0
      OnClick = RdbSolClick
    end
    object RdbCas: TRadioButton
      Left = 8
      Top = 32
      Width = 70
      Height = 17
      Caption = 'Casado'
      TabOrder = 1
      OnClick = RdbCasClick
    end
    object EdtCon: TEdit
      Left = 118
      Top = 54
      Width = 155
      Height = 21
      Enabled = False
      TabOrder = 2
      OnExit = EdtConExit
    end
  end
  object GpbAdultos: TGroupBox
    Left = 16
    Top = 128
    Width = 137
    Height = 81
    Caption = 'Adultos'
    TabOrder = 2
    object LblQA: TLabel
      Left = 6
      Top = 56
      Width = 50
      Height = 16
      Caption = 'Quantos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RdbNaoA: TRadioButton
      Left = 8
      Top = 16
      Width = 50
      Height = 17
      Caption = 'N'#227'o'
      TabOrder = 0
      OnClick = RdbNaoAClick
    end
    object RdbSimA: TRadioButton
      Left = 8
      Top = 32
      Width = 50
      Height = 17
      Caption = 'Sim'
      TabOrder = 1
      OnClick = RdbSimAClick
    end
    object EdtA: TEdit
      Left = 62
      Top = 54
      Width = 67
      Height = 21
      Enabled = False
      TabOrder = 2
      OnExit = EdtAExit
    end
  end
  object GpbCrianca: TGroupBox
    Left = 160
    Top = 128
    Width = 137
    Height = 81
    Caption = 'Crian'#231'as'
    TabOrder = 3
    object LblQC: TLabel
      Left = 6
      Top = 56
      Width = 50
      Height = 16
      Caption = 'Quantas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RdbNaoC: TRadioButton
      Left = 8
      Top = 16
      Width = 50
      Height = 17
      Caption = 'N'#227'o'
      TabOrder = 0
      OnClick = RdbNaoCClick
    end
    object RdbSimC: TRadioButton
      Left = 8
      Top = 32
      Width = 50
      Height = 17
      Caption = 'Sim'
      TabOrder = 1
      OnClick = RdbSimCClick
    end
    object EdtC: TEdit
      Left = 62
      Top = 54
      Width = 67
      Height = 21
      Enabled = False
      TabOrder = 2
      OnExit = EdtCExit
    end
  end
  object GpbSaida: TGroupBox
    Left = 312
    Top = 40
    Width = 169
    Height = 121
    Caption = 'Sa'#237'da'
    TabOrder = 4
    object RdbFr: TRadioButton
      Left = 8
      Top = 16
      Width = 108
      Height = 17
      Caption = 'Franco da Rocha'
      TabOrder = 0
      OnClick = RdbFrClick
    end
    object RdbCa: TRadioButton
      Left = 8
      Top = 32
      Width = 108
      Height = 17
      Caption = 'Caieiras'
      TabOrder = 1
      OnClick = RdbCaClick
    end
    object RdbMa: TRadioButton
      Left = 8
      Top = 48
      Width = 108
      Height = 17
      Caption = 'Mairipor'#227
      TabOrder = 2
      OnClick = RdbMaClick
    end
    object RdbFm: TRadioButton
      Left = 8
      Top = 64
      Width = 108
      Height = 17
      Caption = 'Francisco Morato'
      TabOrder = 3
      OnClick = RdbFmClick
    end
    object CmbLocal: TComboBox
      Left = 8
      Top = 88
      Width = 145
      Height = 21
      Cursor = crHandPoint
      AutoDropDown = True
      ItemHeight = 13
      TabOrder = 4
    end
  end
  object GpbDes: TGroupBox
    Left = 312
    Top = 168
    Width = 169
    Height = 105
    Caption = 'Destino'
    TabOrder = 5
    object RdbJun: TRadioButton
      Left = 8
      Top = 16
      Width = 108
      Height = 17
      Caption = 'Jundia'#237
      TabOrder = 0
      OnClick = RdbJunClick
    end
    object RdbCam: TRadioButton
      Left = 8
      Top = 32
      Width = 108
      Height = 17
      Caption = 'Campinas'
      TabOrder = 1
      OnClick = RdbCamClick
    end
    object RdbSan: TRadioButton
      Left = 8
      Top = 48
      Width = 108
      Height = 17
      Caption = 'Santos'
      TabOrder = 2
      OnClick = RdbSanClick
    end
    object RdbPin: TRadioButton
      Left = 8
      Top = 64
      Width = 108
      Height = 17
      Caption = 'Pindamonhangaba'
      TabOrder = 3
      OnClick = RdbPinClick
    end
    object RdbPer: TRadioButton
      Left = 8
      Top = 80
      Width = 108
      Height = 17
      Caption = 'Perus'
      TabOrder = 4
      OnClick = RdbPerClick
    end
  end
  object BtnCad: TButton
    Left = 96
    Top = 224
    Width = 121
    Height = 41
    Cursor = crHandPoint
    Caption = '&Cadastrar'
    TabOrder = 6
    OnClick = BtnCadClick
  end
  object LstFicha: TListBox
    Left = 8
    Top = 280
    Width = 473
    Height = 137
    ItemHeight = 13
    TabOrder = 7
  end
end
