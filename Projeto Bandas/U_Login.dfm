object FrmLogin: TFrmLogin
  Left = 577
  Top = 421
  Width = 193
  Height = 127
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object TxtLogin: TEdit
    Left = 48
    Top = 4
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object TxtSenha: TEdit
    Left = 48
    Top = 28
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Login: TButton
    Left = 56
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = LoginClick
  end
end
