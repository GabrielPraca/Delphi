object FrmAdega: TFrmAdega
  Left = 189
  Top = 121
  Width = 256
  Height = 319
  Caption = 'Adega'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 84
    Height = 13
    Caption = 'C'#243'digo da Bebida'
    FocusControl = EdtCod
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Pre'#231'o'
    FocusControl = EdtPreco
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 30
    Height = 13
    Caption = 'Marca'
    FocusControl = EdtMarca
  end
  object Label4: TLabel
    Left = 8
    Top = 128
    Width = 19
    Height = 13
    Caption = 'Ano'
    FocusControl = EdtAno
  end
  object Label5: TLabel
    Left = 8
    Top = 168
    Width = 110
    Height = 13
    Caption = 'Porcentagem de Alcool'
    FocusControl = EdtPorAlc
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 39
    Height = 13
    Caption = 'Estoque'
    FocusControl = EdtEstoque
  end
  object EdtCod: TDBEdit
    Left = 8
    Top = 24
    Width = 89
    Height = 21
    DataField = 'cod'
    DataSource = DM_Adega.DS_Adega
    ReadOnly = True
    TabOrder = 0
  end
  object EdtPreco: TDBEdit
    Left = 8
    Top = 64
    Width = 200
    Height = 21
    DataField = 'preco'
    DataSource = DM_Adega.DS_Adega
    ReadOnly = True
    TabOrder = 1
  end
  object EdtMarca: TDBEdit
    Left = 8
    Top = 104
    Width = 200
    Height = 21
    DataField = 'Marca'
    DataSource = DM_Adega.DS_Adega
    ReadOnly = True
    TabOrder = 2
  end
  object EdtAno: TDBEdit
    Left = 8
    Top = 144
    Width = 200
    Height = 21
    DataField = 'Ano'
    DataSource = DM_Adega.DS_Adega
    ReadOnly = True
    TabOrder = 3
  end
  object EdtPorAlc: TDBEdit
    Left = 8
    Top = 184
    Width = 200
    Height = 21
    DataField = 'PorcAlc'
    DataSource = DM_Adega.DS_Adega
    ReadOnly = True
    TabOrder = 4
  end
  object EdtEstoque: TDBEdit
    Left = 8
    Top = 224
    Width = 200
    Height = 21
    DataField = 'estoque'
    DataSource = DM_Adega.DS_Adega
    ReadOnly = True
    TabOrder = 5
  end
  object BtnPrimeiro: TBitBtn
    Left = 0
    Top = 256
    Width = 24
    Height = 25
    Caption = '|<'
    TabOrder = 6
    OnClick = BtnPrimeiroClick
  end
  object BtnAnterior: TBitBtn
    Left = 24
    Top = 256
    Width = 24
    Height = 25
    Caption = '<'
    TabOrder = 7
    OnClick = BtnAnteriorClick
  end
  object BtnProximo: TBitBtn
    Left = 48
    Top = 256
    Width = 24
    Height = 25
    Caption = '>'
    TabOrder = 8
    OnClick = BtnProximoClick
  end
  object BtnUltimo: TBitBtn
    Left = 72
    Top = 256
    Width = 24
    Height = 25
    Caption = '>|'
    TabOrder = 9
    OnClick = BtnUltimoClick
  end
  object BtnInserir: TBitBtn
    Left = 96
    Top = 256
    Width = 24
    Height = 25
    Caption = '+'
    TabOrder = 10
    OnClick = BtnInserirClick
  end
  object BtnDeletar: TBitBtn
    Left = 120
    Top = 256
    Width = 24
    Height = 25
    Caption = '-'
    TabOrder = 11
    OnClick = BtnDeletarClick
  end
  object BtnEditar: TBitBtn
    Left = 144
    Top = 256
    Width = 24
    Height = 25
    Caption = '^'
    TabOrder = 12
    OnClick = BtnEditarClick
  end
  object BtnGravar: TBitBtn
    Left = 168
    Top = 256
    Width = 24
    Height = 25
    Caption = 'V'
    Enabled = False
    TabOrder = 13
    OnClick = BtnGravarClick
  end
  object BtnCancelar: TBitBtn
    Left = 192
    Top = 256
    Width = 24
    Height = 25
    Caption = 'X'
    Enabled = False
    TabOrder = 14
    OnClick = BtnCancelarClick
  end
  object BtnAtualizar: TBitBtn
    Left = 216
    Top = 256
    Width = 24
    Height = 25
    Caption = '@'
    TabOrder = 15
    OnClick = BtnAtualizarClick
  end
end
