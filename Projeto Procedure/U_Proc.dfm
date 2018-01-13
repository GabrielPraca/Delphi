object FrmProc: TFrmProc
  Left = 590
  Top = 304
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Teste de Procedure'
  ClientHeight = 115
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblVal1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object LblVal2: TLabel
    Left = 8
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object LblResult: TLabel
    Left = 8
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Resultado:'
  end
  object EdtVal1: TEdit
    Left = 48
    Top = 4
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtVal2: TEdit
    Left = 48
    Top = 28
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object BtnSoma: TButton
    Left = 11
    Top = 88
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = BtnSomaClick
  end
  object BtnSub: TButton
    Left = 51
    Top = 88
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = BtnSubClick
  end
  object BtnMult: TButton
    Left = 91
    Top = 88
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 4
    OnClick = BtnMultClick
  end
  object BtnDiv: TButton
    Left = 131
    Top = 88
    Width = 33
    Height = 25
    Caption = '/'
    TabOrder = 5
    OnClick = BtnDivClick
  end
  object BtnLimpa: TButton
    Left = 175
    Top = 88
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 6
    OnClick = BtnLimpaClick
  end
end
