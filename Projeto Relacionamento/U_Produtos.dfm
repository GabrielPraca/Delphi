object FrmProdutos: TFrmProdutos
  Left = 262
  Top = 167
  Width = 553
  Height = 327
  Caption = 'Cadastro de Produtos'
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
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 77
    Height = 13
    Caption = 'NomedoProduto'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 112
    Width = 43
    Height = 13
    Caption = 'ValorUnit'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 70
    Height = 13
    Caption = 'CodigodoSetor'
    FocusControl = DBEdit4
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 88
    Width = 201
    Height = 21
    DataField = 'NomedoProduto'
    DataSource = DMDados.DSProduto
    TabOrder = 0
    OnExit = DBEdit2Exit
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 128
    Width = 73
    Height = 21
    DataField = 'ValorUnit'
    DataSource = DMDados.DSProduto
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 168
    Width = 49
    Height = 21
    DataField = 'CodigodoSetor'
    DataSource = DMDados.DSProduto
    TabOrder = 2
    OnClick = DBEdit4Click
  end
  object DBGSetor: TDBGrid
    Left = 8
    Top = 168
    Width = 193
    Height = 120
    DataSource = DMDados.DSSetor
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnCellClick = DBGSetorCellClick
  end
  object DBGrid1: TDBGrid
    Left = 248
    Top = 0
    Width = 283
    Height = 288
    DataSource = DMDados.DSProduto
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BtnPrimeiro: TBitBtn
    Left = 9
    Top = 0
    Width = 24
    Height = 25
    Caption = '|<'
    TabOrder = 5
    OnClick = BtnPrimeiroClick
  end
  object BtnAnterior: TBitBtn
    Left = 33
    Top = 0
    Width = 24
    Height = 25
    Caption = '<'
    TabOrder = 6
    OnClick = BtnAnteriorClick
  end
  object BtnProximo: TBitBtn
    Left = 57
    Top = 0
    Width = 24
    Height = 25
    Caption = '>'
    TabOrder = 7
    OnClick = BtnProximoClick
  end
  object BtnUltimo: TBitBtn
    Left = 81
    Top = 0
    Width = 24
    Height = 25
    Caption = '>|'
    TabOrder = 8
    OnClick = BtnUltimoClick
  end
  object BtnInserir: TBitBtn
    Left = 105
    Top = 0
    Width = 24
    Height = 25
    Caption = '+'
    TabOrder = 9
    OnClick = BtnInserirClick
  end
  object BtnDeletar: TBitBtn
    Left = 129
    Top = 0
    Width = 24
    Height = 25
    Caption = '-'
    TabOrder = 10
    OnClick = BtnDeletarClick
  end
  object BtnEditar: TBitBtn
    Left = 153
    Top = 0
    Width = 24
    Height = 25
    Caption = '^'
    TabOrder = 11
    OnClick = BtnEditarClick
  end
  object BtnGravar: TBitBtn
    Left = 177
    Top = 0
    Width = 24
    Height = 25
    Caption = 'V'
    Enabled = False
    TabOrder = 12
    OnClick = BtnGravarClick
  end
  object BtnCancelar: TBitBtn
    Left = 201
    Top = 0
    Width = 24
    Height = 25
    Caption = 'X'
    Enabled = False
    TabOrder = 13
    OnClick = BtnCancelarClick
  end
  object BtnAtualizar: TBitBtn
    Left = 225
    Top = 0
    Width = 24
    Height = 25
    Caption = '@'
    TabOrder = 14
    OnClick = BtnAtualizarClick
  end
end
