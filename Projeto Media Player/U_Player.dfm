object FrmPlayer: TFrmPlayer
  Left = 539
  Top = 391
  Width = 297
  Height = 232
  Caption = 'Player'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblStatus: TLabel
    Left = 117
    Top = 24
    Width = 18
    Height = 13
    Caption = '000'
  end
  object MediaPlayer1: TMediaPlayer
    Left = 0
    Top = 70
    Width = 253
    Height = 30
    FileName = 'E:\Linguagens\C#\Urna\Urna\Urna\Resources\urna.wav'
    TabOrder = 0
  end
  object MediaPlayer2: TMediaPlayer
    Left = 0
    Top = 41
    Width = 253
    Height = 30
    FileName = 'E:\Linguagens\C#\Urna\Urna\Urna\Resources\urna.wav'
    TabOrder = 1
  end
  object BtnSom1: TButton
    Left = 51
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Som 1'
    TabOrder = 2
    OnClick = BtnSom1Click
  end
  object BtnSom2: TButton
    Left = 126
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Som 2'
    TabOrder = 3
    OnClick = BtnSom2Click
  end
  object PgbStatus: TProgressBar
    Left = 0
    Top = 0
    Width = 253
    Height = 17
    Smooth = True
    TabOrder = 4
  end
  object BtnComeca: TButton
    Left = 89
    Top = 125
    Width = 74
    Height = 25
    Caption = '&Come'#231'a'
    TabOrder = 5
    OnClick = BtnComecaClick
  end
  object TmrRelogio: TTimer
    Enabled = False
    Interval = 125
    OnTimer = TmrRelogioTimer
    Left = 253
  end
end
