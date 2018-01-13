object FrmVelha: TFrmVelha
  Left = 429
  Top = 269
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Jogo da Velha'
  ClientHeight = 218
  ClientWidth = 345
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object LblNomeJogador1: TLabel
    Left = 41
    Top = 9
    Width = 55
    Height = 14
    Caption = 'Jogador X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblNomeJogador2: TLabel
    Left = 40
    Top = 49
    Width = 56
    Height = 14
    Caption = 'Jogador O'
    Color = clAppWorkSpace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object LblP02: TLabel
    Left = 160
    Top = 131
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP02Click
    OnMouseEnter = LblP02MouseEnter
    OnMouseLeave = LblP02MouseLeave
  end
  object LblP12: TLabel
    Left = 216
    Top = 131
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP12Click
    OnMouseEnter = LblP12MouseEnter
    OnMouseLeave = LblP12MouseLeave
  end
  object LblP22: TLabel
    Left = 272
    Top = 131
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP22Click
    OnMouseEnter = LblP22MouseEnter
    OnMouseLeave = LblP22MouseLeave
  end
  object LblP01: TLabel
    Left = 160
    Top = 75
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP01Click
    OnMouseEnter = LblP01MouseEnter
    OnMouseLeave = LblP01MouseLeave
  end
  object LblP11: TLabel
    Left = 216
    Top = 75
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP11Click
    OnMouseEnter = LblP11MouseEnter
    OnMouseLeave = LblP11MouseLeave
  end
  object LblP21: TLabel
    Left = 272
    Top = 75
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP21Click
    OnMouseEnter = LblP21MouseEnter
    OnMouseLeave = LblP21MouseLeave
  end
  object LblP00: TLabel
    Left = 160
    Top = 19
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP00Click
    OnMouseEnter = LblP00MouseEnter
    OnMouseLeave = LblP00MouseLeave
  end
  object LblP10: TLabel
    Left = 216
    Top = 19
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP10Click
    OnMouseEnter = LblP10MouseEnter
    OnMouseLeave = LblP10MouseLeave
  end
  object LblP20: TLabel
    Left = 272
    Top = 19
    Width = 37
    Height = 61
    Alignment = taCenter
    AutoSize = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = LblP20Click
    OnMouseEnter = LblP20MouseEnter
    OnMouseLeave = LblP20MouseLeave
  end
  object ShpC1: TShape
    Left = 208
    Top = 24
    Width = 2
    Height = 169
  end
  object ShpC2: TShape
    Left = 264
    Top = 24
    Width = 2
    Height = 169
  end
  object ShpL2: TShape
    Left = 144
    Top = 136
    Width = 177
    Height = 2
  end
  object ShpL1: TShape
    Left = 144
    Top = 80
    Width = 177
    Height = 2
  end
  object ShpFundo: TShape
    Left = 136
    Top = 8
    Width = 201
    Height = 201
    Brush.Color = clAppWorkSpace
  end
  object EdtJogador1: TEdit
    Left = 8
    Top = 25
    Width = 121
    Height = 22
    TabOrder = 0
  end
  object EdtJogador2: TEdit
    Left = 8
    Top = 65
    Width = 121
    Height = 22
    TabOrder = 1
  end
  object BtnComecar: TButton
    Left = 8
    Top = 95
    Width = 121
    Height = 25
    Caption = '&Come'#231'ar'
    TabOrder = 2
    OnClick = BtnComecarClick
  end
end
