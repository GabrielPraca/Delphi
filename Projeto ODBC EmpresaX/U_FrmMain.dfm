object FrmMain: TFrmMain
  Left = 639
  Top = 183
  Width = 310
  Height = 231
  Caption = 'Principal'
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
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Funcionrio1: TMenuItem
        Caption = 'Funcion'#225'rio'
        OnClick = Funcionrio1Click
      end
      object Departamento1: TMenuItem
        Caption = 'Departamento'
        OnClick = Departamento1Click
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
