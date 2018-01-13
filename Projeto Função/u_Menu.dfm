object FrmMenu: TFrmMenu
  Left = 410
  Top = 305
  Width = 313
  Height = 204
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 24
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Soma1: TMenuItem
        Caption = 'Soma'
        OnClick = Soma1Click
      end
      object S1: TMenuItem
        Caption = 'Divis'#227'o'
        OnClick = S1Click
      end
      object Multiplicao1: TMenuItem
        Caption = 'Multiplica'#231#227'o'
        OnClick = Multiplicao1Click
      end
      object Subtrao1: TMenuItem
        Caption = 'Subtra'#231#227'o'
        OnClick = Subtrao1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
  end
end
