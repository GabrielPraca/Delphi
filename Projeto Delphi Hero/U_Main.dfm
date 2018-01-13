object FrmMain: TFrmMain
  Left = 414
  Top = 250
  BorderStyle = bsNone
  Caption = 'Delphi Hero'
  ClientHeight = 202
  ClientWidth = 338
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TimRender: TTimer
    Interval = 1
    OnTimer = TimRenderTimer
  end
end
