object FrmMain: TFrmMain
  Left = 189
  Top = 122
  Width = 327
  Height = 154
  Caption = 'Imobili'#225'ria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      OnClick = Cadastro1Click
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
    end
  end
end
