object FrmPrincipal: TFrmPrincipal
  Left = 397
  Top = 369
  Width = 629
  Height = 301
  Caption = 'Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object Operaes1: TMenuItem
      Caption = 'Opera'#231#245'es'
      object Soma1: TMenuItem
        Caption = 'Soma'
        OnClick = Soma1Click
      end
      object Subtrao1: TMenuItem
        Caption = 'Subtra'#231#227'o'
        OnClick = Subtrao1Click
      end
      object Multiplicao1: TMenuItem
        Caption = 'Multiplica'#231#227'o'
        OnClick = Multiplicao1Click
      end
      object Diviso1: TMenuItem
        Caption = 'Divis'#227'o'
        OnClick = Diviso1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
  end
end
