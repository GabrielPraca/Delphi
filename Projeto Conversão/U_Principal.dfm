object FrmPrincipal: TFrmPrincipal
  Left = 292
  Top = 172
  Width = 870
  Height = 640
  Caption = 'Tela Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MnuMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MnuMenu: TMainMenu
    object Opcoes1: TMenuItem
      Caption = '&Op'#231#245'es'
      object Soma1: TMenuItem
        Caption = '&Soma'
        OnClick = Soma1Click
      end
      object Subtrao1: TMenuItem
        Caption = 'S&ubtra'#231#227'o'
        OnClick = Subtrao1Click
      end
      object Multiplicao1: TMenuItem
        Caption = '&Multiplica'#231#227'o'
        OnClick = Multiplicao1Click
      end
      object Diviso1: TMenuItem
        Caption = '&Divis'#227'o'
        OnClick = Diviso1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'S&air'
        OnClick = Sair1Click
      end
    end
  end
end
