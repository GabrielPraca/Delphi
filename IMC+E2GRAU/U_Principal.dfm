object FrmPrincipal: TFrmPrincipal
  Left = 432
  Top = 298
  Width = 397
  Height = 231
  Caption = 'Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MnuMenu
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MnuMenu: TMainMenu
    object IMC1: TMenuItem
      Caption = '&Menu'
      object IMC2: TMenuItem
        Caption = '&IMC'
        OnClick = IMC2Click
      end
      object Equaodo2grau1: TMenuItem
        Caption = '&Equa'#231#227'o do 2'#186' grau'
        OnClick = Equaodo2grau1Click
      end
      object JooPescador1: TMenuItem
        Caption = 'Jo'#227'o Pescador'
        OnClick = JooPescador1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
  end
end
