object FrmTela: TFrmTela
  Left = 449
  Top = 300
  BorderStyle = bsNone
  Caption = 'Blocos'
  ClientHeight = 28
  ClientWidth = 199
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object AudioCanal1: TMediaPlayer
    Left = 28
    Top = -1
    Width = 29
    Height = 30
    VisibleButtons = [btPlay]
    Visible = False
    TabOrder = 0
    OnNotify = AudioCanal1Notify
  end
  object TimRender: TTimer
    Interval = 1
    OnTimer = TimRenderTimer
  end
end
