object FrmVotos: TFrmVotos
  Left = 285
  Top = 530
  BorderStyle = bsNone
  Caption = 'Votos em tempo real'
  ClientHeight = 149
  ClientWidth = 703
  Color = 15663103
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ShpBorda: TShape
    Left = 0
    Top = 0
    Width = 703
    Height = 149
    Brush.Style = bsClear
  end
  object LblCandidato1: TLabel
    Left = 1
    Top = 30
    Width = 48
    Height = 13
    Caption = 'Candidato'
  end
  object LblCandidato2: TLabel
    Left = 1
    Top = 62
    Width = 48
    Height = 13
    Caption = 'Candidato'
  end
  object LblCandidato3: TLabel
    Left = 1
    Top = 94
    Width = 48
    Height = 13
    Caption = 'Candidato'
  end
  object LblCandidato4: TLabel
    Left = 1
    Top = 126
    Width = 48
    Height = 13
    Caption = 'Candidato'
  end
  object lblQntVotos: TLabel
    Left = 320
    Top = 8
    Width = 62
    Height = 13
    Caption = 'Votos: (0/28)'
  end
  object BarCandidato1: TProgressBar
    Left = 176
    Top = 28
    Width = 473
    Height = 17
    Smooth = True
    TabOrder = 0
  end
  object BarCandidato2: TProgressBar
    Left = 176
    Top = 60
    Width = 473
    Height = 17
    Smooth = True
    TabOrder = 1
  end
  object BarCandidato3: TProgressBar
    Left = 176
    Top = 92
    Width = 473
    Height = 17
    Smooth = True
    TabOrder = 2
  end
  object BarCandidato4: TProgressBar
    Left = 176
    Top = 124
    Width = 473
    Height = 17
    Smooth = True
    TabOrder = 3
  end
end
