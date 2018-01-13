object FrmMLocacao: TFrmMLocacao
  Left = 521
  Top = 317
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Matriz Loca'#231#227'o'
  ClientHeight = 185
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PgcLoca: TPageControl
    Left = 0
    Top = 0
    Width = 281
    Height = 185
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar Im'#243'vel'
      object LblCodImo: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object LblDescImo: TLabel
        Left = 8
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object LblTipo: TLabel
        Left = 8
        Top = 32
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object LblValAlugImo: TLabel
        Left = 8
        Top = 80
        Width = 62
        Height = 13
        Caption = 'Valor Aluguel'
      end
      object EdtCodImo: TEdit
        Left = 80
        Top = 4
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object EdtDescImo: TEdit
        Left = 80
        Top = 52
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object BtnCadastrarImo: TButton
        Left = 94
        Top = 128
        Width = 75
        Height = 25
        Caption = '&Cadastrar'
        TabOrder = 4
        OnClick = BtnCadastrarImoClick
      end
      object EdtTipoImo: TEdit
        Left = 80
        Top = 28
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object EdtValAlugImo: TEdit
        Left = 80
        Top = 76
        Width = 121
        Height = 21
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastrar Cliente'
      ImageIndex = 1
      object LblCodCli: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object LblNomeCli: TLabel
        Left = 8
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object LblFoneCli: TLabel
        Left = 8
        Top = 56
        Width = 24
        Height = 13
        Caption = 'Fone'
      end
      object LblNascCli: TLabel
        Left = 8
        Top = 80
        Width = 56
        Height = 13
        Caption = 'Nascimento'
      end
      object LblCPFCli: TLabel
        Left = 8
        Top = 104
        Width = 20
        Height = 13
        Caption = 'CPF'
      end
      object EdtCodCli: TEdit
        Left = 80
        Top = 4
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object EdtFoneCli: TEdit
        Left = 80
        Top = 52
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object EdtNascCli: TEdit
        Left = 80
        Top = 76
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object EdtCPFCli: TEdit
        Left = 80
        Top = 100
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object BtnCadastrarCli: TButton
        Left = 94
        Top = 128
        Width = 75
        Height = 25
        Caption = '&Cadastrar'
        TabOrder = 5
        OnClick = BtnCadastrarCliClick
      end
      object EdtNomeCli: TEdit
        Left = 80
        Top = 28
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Efetuar Loca'#231#227'o'
      ImageIndex = 2
      object LblCodImovel: TLabel
        Left = 8
        Top = 8
        Width = 67
        Height = 13
        Caption = 'C'#243'digo Im'#243'vel'
      end
      object LblCodCliente: TLabel
        Left = 8
        Top = 32
        Width = 68
        Height = 13
        Caption = 'C'#243'digo Cliente'
      end
      object LblIniContrato: TLabel
        Left = 8
        Top = 56
        Width = 70
        Height = 13
        Caption = 'In'#237'cio Contrato'
      end
      object LblDuracao: TLabel
        Left = 8
        Top = 80
        Width = 41
        Height = 13
        Caption = 'Dura'#231#227'o'
      end
      object EdtCodImovel: TEdit
        Left = 80
        Top = 4
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object EdtCodCliente: TEdit
        Left = 80
        Top = 28
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object EdtIniContrato: TEdit
        Left = 80
        Top = 52
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object EdtDuracao: TEdit
        Left = 80
        Top = 76
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object LstDetalhes: TListBox
        Left = 0
        Top = 104
        Width = 273
        Height = 49
        ItemHeight = 13
        TabOrder = 6
      end
      object BtnCadastrarLoca: TButton
        Left = 208
        Top = 2
        Width = 65
        Height = 25
        Caption = '&Cadastrar'
        TabOrder = 5
        OnClick = BtnCadastrarLocaClick
      end
      object BtnDetalhesLoca: TButton
        Left = 208
        Top = 26
        Width = 65
        Height = 25
        Caption = '&Detalhes'
        TabOrder = 4
        OnClick = BtnDetalhesLocaClick
      end
    end
  end
end
