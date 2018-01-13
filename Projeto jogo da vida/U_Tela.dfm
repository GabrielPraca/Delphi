object FrmMain: TFrmMain
  Left = 481
  Top = 279
  BorderStyle = bsNone
  Caption = 'Jogo da Vida'
  ClientHeight = 190
  ClientWidth = 227
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
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object TimRender: TTimer
    Interval = 1
    OnTimer = TimRenderTimer
  end
end
