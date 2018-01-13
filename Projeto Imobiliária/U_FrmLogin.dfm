object FrmLogin: TFrmLogin
  Left = 282
  Top = 150
  Width = 265
  Height = 95
  Caption = 'Login'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
    Left = 44
    Top = 4
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object TxtSenha: TEdit
    Left = 44
    Top = 28
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object BtnEntrar: TButton
    Left = 168
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = BtnEntrarClick
  end
end
