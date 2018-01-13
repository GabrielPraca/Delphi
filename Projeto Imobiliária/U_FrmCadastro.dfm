object FrmCadastro: TFrmCadastro
  Left = 216
  Top = 116
  Width = 258
  Height = 330
  Caption = 'Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 249
    Height = 297
    ActivePage = TabCliente
    TabOrder = 0
    object TabCliente: TTabSheet
      Caption = 'Cliente'
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 60
        Height = 13
        Caption = 'NomeCliente'
        FocusControl = TxtCNome
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 16
        Height = 13
        Caption = 'RG'
        FocusControl = TxtCRG
      end
      object Label3: TLabel
        Left = 8
        Top = 80
        Width = 20
        Height = 13
        Caption = 'CPF'
        FocusControl = TxtCCPF
      end
      object Label4: TLabel
        Left = 8
        Top = 120
        Width = 56
        Height = 13
        Caption = 'Nascimento'
        FocusControl = TxtCNasc
      end
      object Label5: TLabel
        Left = 8
        Top = 160
        Width = 24
        Height = 13
        Caption = 'Fone'
        FocusControl = TxtCFone
      end
      object Label6: TLabel
        Left = 8
        Top = 200
        Width = 52
        Height = 13
        Caption = 'EstadoCivil'
        FocusControl = TxtCEstCivil
      end
      object TxtCNome: TDBEdit
        Left = 8
        Top = 16
        Width = 100
        Height = 21
        DataField = 'NomeCliente'
        DataSource = DMImobiliaria.DSCliente
        TabOrder = 0
      end
      object TxtCRG: TDBEdit
        Left = 8
        Top = 56
        Width = 100
        Height = 21
        DataField = 'RG'
        DataSource = DMImobiliaria.DSCliente
        TabOrder = 1
      end
      object TxtCCPF: TDBEdit
        Left = 8
        Top = 96
        Width = 100
        Height = 21
        DataField = 'CPF'
        DataSource = DMImobiliaria.DSCliente
        TabOrder = 2
      end
      object TxtCNasc: TDBEdit
        Left = 8
        Top = 136
        Width = 100
        Height = 21
        DataField = 'Nascimento'
        DataSource = DMImobiliaria.DSCliente
        TabOrder = 3
      end
      object TxtCFone: TDBEdit
        Left = 8
        Top = 176
        Width = 100
        Height = 21
        DataField = 'Fone'
        DataSource = DMImobiliaria.DSCliente
        TabOrder = 4
      end
      object TxtCEstCivil: TDBEdit
        Left = 8
        Top = 216
        Width = 100
        Height = 21
        DataField = 'EstadoCivil'
        DataSource = DMImobiliaria.DSCliente
        TabOrder = 5
      end
      object BtnCPrimeiro: TBitBtn
        Left = 0
        Top = 244
        Width = 24
        Height = 25
        Caption = '|<'
        TabOrder = 6
        OnClick = BtnCPrimeiroClick
      end
      object BtnCAnterior: TBitBtn
        Left = 24
        Top = 244
        Width = 24
        Height = 25
        Caption = '<'
        TabOrder = 7
        OnClick = BtnCAnteriorClick
      end
      object BtnCProximo: TBitBtn
        Left = 48
        Top = 244
        Width = 24
        Height = 25
        Caption = '>'
        TabOrder = 8
        OnClick = BtnCProximoClick
      end
      object BtnCUltimo: TBitBtn
        Left = 72
        Top = 244
        Width = 24
        Height = 25
        Caption = '>|'
        TabOrder = 9
        OnClick = BtnCUltimoClick
      end
      object BtnCInserir: TBitBtn
        Left = 96
        Top = 244
        Width = 24
        Height = 25
        Caption = '+'
        TabOrder = 10
        OnClick = BtnCInserirClick
      end
      object BtnCDeletar: TBitBtn
        Left = 120
        Top = 244
        Width = 24
        Height = 25
        Caption = '-'
        TabOrder = 11
        OnClick = BtnCDeletarClick
      end
      object BtnCEditar: TBitBtn
        Left = 144
        Top = 244
        Width = 24
        Height = 25
        Caption = '^'
        TabOrder = 12
        OnClick = BtnCEditarClick
      end
      object BtnCGravar: TBitBtn
        Left = 168
        Top = 244
        Width = 24
        Height = 25
        Caption = 'V'
        Enabled = False
        TabOrder = 13
        OnClick = BtnCGravarClick
      end
      object BtnCCancelar: TBitBtn
        Left = 192
        Top = 244
        Width = 24
        Height = 25
        Caption = 'X'
        Enabled = False
        TabOrder = 14
        OnClick = BtnCCancelarClick
      end
      object BtnCAtualizar: TBitBtn
        Left = 216
        Top = 244
        Width = 24
        Height = 25
        Caption = '@'
        TabOrder = 15
        OnClick = BtnCAtualizarClick
      end
    end
    object TabImovel: TTabSheet
      Caption = 'Im'#243'vel'
      ImageIndex = 1
      object Label7: TLabel
        Left = 8
        Top = 0
        Width = 40
        Height = 13
        Caption = 'CodTipo'
        FocusControl = TxtICodTipo
      end
      object Label8: TLabel
        Left = 8
        Top = 40
        Width = 72
        Height = 13
        Caption = 'AreaConstruida'
        FocusControl = TxtIAreaC
      end
      object Label9: TLabel
        Left = 8
        Top = 80
        Width = 67
        Height = 13
        Caption = 'QtdeComodos'
        FocusControl = TxtIComodos
      end
      object Label10: TLabel
        Left = 8
        Top = 120
        Width = 43
        Height = 13
        Caption = 'Garagem'
        FocusControl = TxtIGaragem
      end
      object Label11: TLabel
        Left = 8
        Top = 160
        Width = 52
        Height = 13
        Caption = 'FotoImovel'
        FocusControl = TxtIFoto
      end
      object Label12: TLabel
        Left = 8
        Top = 200
        Width = 55
        Height = 13
        Caption = 'ValorImovel'
        FocusControl = TxtIValor
      end
      object TxtICodTipo: TDBEdit
        Left = 8
        Top = 16
        Width = 100
        Height = 21
        DataField = 'CodTipo'
        DataSource = DMImobiliaria.DSImovel
        TabOrder = 0
      end
      object TxtIAreaC: TDBEdit
        Left = 8
        Top = 56
        Width = 100
        Height = 21
        DataField = 'AreaConstruida'
        DataSource = DMImobiliaria.DSImovel
        TabOrder = 1
      end
      object TxtIComodos: TDBEdit
        Left = 8
        Top = 96
        Width = 100
        Height = 21
        DataField = 'QtdeComodos'
        DataSource = DMImobiliaria.DSImovel
        TabOrder = 2
      end
      object TxtIGaragem: TDBEdit
        Left = 8
        Top = 136
        Width = 100
        Height = 21
        DataField = 'Garagem'
        DataSource = DMImobiliaria.DSImovel
        TabOrder = 3
      end
      object TxtIFoto: TDBEdit
        Left = 8
        Top = 176
        Width = 100
        Height = 21
        DataField = 'FotoImovel'
        DataSource = DMImobiliaria.DSImovel
        TabOrder = 4
      end
      object TxtIValor: TDBEdit
        Left = 8
        Top = 216
        Width = 100
        Height = 21
        DataField = 'ValorImovel'
        DataSource = DMImobiliaria.DSImovel
        TabOrder = 5
      end
      object BtnIPrimeiro: TBitBtn
        Left = 0
        Top = 244
        Width = 24
        Height = 25
        Caption = '|<'
        TabOrder = 6
        OnClick = BtnIPrimeiroClick
      end
      object BtnIAnterior: TBitBtn
        Left = 24
        Top = 244
        Width = 24
        Height = 25
        Caption = '<'
        TabOrder = 7
        OnClick = BtnIAnteriorClick
      end
      object BtnIProximo: TBitBtn
        Left = 48
        Top = 244
        Width = 24
        Height = 25
        Caption = '>'
        TabOrder = 8
        OnClick = BtnIProximoClick
      end
      object BtnIUltimo: TBitBtn
        Left = 72
        Top = 244
        Width = 24
        Height = 25
        Caption = '>|'
        TabOrder = 9
        OnClick = BtnIUltimoClick
      end
      object BtnIInserir: TBitBtn
        Left = 96
        Top = 244
        Width = 24
        Height = 25
        Caption = '+'
        TabOrder = 10
        OnClick = BtnIInserirClick
      end
      object BtnIDeletar: TBitBtn
        Left = 120
        Top = 244
        Width = 24
        Height = 25
        Caption = '-'
        TabOrder = 11
        OnClick = BtnIDeletarClick
      end
      object BtnIEditar: TBitBtn
        Left = 144
        Top = 244
        Width = 24
        Height = 25
        Caption = '^'
        TabOrder = 12
        OnClick = BtnIEditarClick
      end
      object BtnIGravar: TBitBtn
        Left = 168
        Top = 244
        Width = 24
        Height = 25
        Caption = 'V'
        Enabled = False
        TabOrder = 13
        OnClick = BtnIGravarClick
      end
      object BtnICancelar: TBitBtn
        Left = 192
        Top = 244
        Width = 24
        Height = 25
        Caption = 'X'
        Enabled = False
        TabOrder = 14
        OnClick = BtnICancelarClick
      end
      object BtnIAtualizar: TBitBtn
        Left = 216
        Top = 244
        Width = 24
        Height = 25
        Caption = '@'
        TabOrder = 15
        OnClick = BtnIAtualizarClick
      end
    end
    object TabTipoImo: TTabSheet
      Caption = 'Tipo Im'#243'vel'
      ImageIndex = 2
      object Label13: TLabel
        Left = 8
        Top = 0
        Width = 52
        Height = 13
        Caption = 'TipoImovel'
        FocusControl = TxtTTipo
      end
      object TxtTTipo: TDBEdit
        Left = 8
        Top = 16
        Width = 100
        Height = 21
        DataField = 'TipoImovel'
        DataSource = DMImobiliaria.DSTipoImo
        TabOrder = 0
      end
      object BtnTAtualizar: TBitBtn
        Left = 216
        Top = 244
        Width = 24
        Height = 25
        Caption = '@'
        TabOrder = 1
        OnClick = BtnTAtualizarClick
      end
      object BtnTCancelar: TBitBtn
        Left = 192
        Top = 244
        Width = 24
        Height = 25
        Caption = 'X'
        Enabled = False
        TabOrder = 2
        OnClick = BtnTCancelarClick
      end
      object BtnTGravar: TBitBtn
        Left = 168
        Top = 244
        Width = 24
        Height = 25
        Caption = 'V'
        Enabled = False
        TabOrder = 3
        OnClick = BtnTGravarClick
      end
      object BtnTEditar: TBitBtn
        Left = 144
        Top = 244
        Width = 24
        Height = 25
        Caption = '^'
        TabOrder = 4
        OnClick = BtnTEditarClick
      end
      object BtnTDeletar: TBitBtn
        Left = 120
        Top = 244
        Width = 24
        Height = 25
        Caption = '-'
        TabOrder = 5
        OnClick = BtnTDeletarClick
      end
      object BtnTInserir: TBitBtn
        Left = 96
        Top = 244
        Width = 24
        Height = 25
        Caption = '+'
        TabOrder = 6
        OnClick = BtnTInserirClick
      end
      object BtnTUltimo: TBitBtn
        Left = 72
        Top = 244
        Width = 24
        Height = 25
        Caption = '>|'
        TabOrder = 7
        OnClick = BtnTUltimoClick
      end
      object BtnTProximo: TBitBtn
        Left = 48
        Top = 244
        Width = 24
        Height = 25
        Caption = '>'
        TabOrder = 8
        OnClick = BtnTProximoClick
      end
      object BtnTAnterior: TBitBtn
        Left = 24
        Top = 244
        Width = 24
        Height = 25
        Caption = '<'
        TabOrder = 9
        OnClick = BtnTAnteriorClick
      end
      object BtnTPrimeiro: TBitBtn
        Left = 0
        Top = 244
        Width = 24
        Height = 25
        Caption = '|<'
        TabOrder = 10
        OnClick = BtnTPrimeiroClick
      end
    end
    object TabAluguel: TTabSheet
      Caption = 'Aluguel'
      ImageIndex = 3
      object Label14: TLabel
        Left = 8
        Top = 0
        Width = 50
        Height = 13
        Caption = 'CodImovel'
        FocusControl = TxtACodImo
      end
      object Label15: TLabel
        Left = 8
        Top = 40
        Width = 51
        Height = 13
        Caption = 'CodCliente'
        FocusControl = TxtACodCli
      end
      object Label16: TLabel
        Left = 8
        Top = 80
        Width = 88
        Height = 13
        Caption = 'DataInicioContrato'
        FocusControl = TxtADataIni
      end
      object Label17: TLabel
        Left = 8
        Top = 120
        Width = 79
        Height = 13
        Caption = 'DataFimContrato'
        FocusControl = TxtADataFim
      end
      object TxtACodImo: TDBEdit
        Left = 8
        Top = 16
        Width = 100
        Height = 21
        DataField = 'CodImovel'
        DataSource = DMImobiliaria.DSAluguel
        TabOrder = 0
      end
      object TxtACodCli: TDBEdit
        Left = 8
        Top = 56
        Width = 100
        Height = 21
        DataField = 'CodCliente'
        DataSource = DMImobiliaria.DSAluguel
        TabOrder = 1
      end
      object TxtADataIni: TDBEdit
        Left = 8
        Top = 96
        Width = 100
        Height = 21
        DataField = 'DataInicioContrato'
        DataSource = DMImobiliaria.DSAluguel
        TabOrder = 2
      end
      object TxtADataFim: TDBEdit
        Left = 8
        Top = 136
        Width = 100
        Height = 21
        DataField = 'DataFimContrato'
        DataSource = DMImobiliaria.DSAluguel
        TabOrder = 3
      end
      object BtnAAtualizar: TBitBtn
        Left = 216
        Top = 244
        Width = 24
        Height = 25
        Caption = '@'
        TabOrder = 4
      end
      object BtnACancelar: TBitBtn
        Left = 192
        Top = 244
        Width = 24
        Height = 25
        Caption = 'X'
        Enabled = False
        TabOrder = 5
      end
      object BtnAGravar: TBitBtn
        Left = 168
        Top = 244
        Width = 24
        Height = 25
        Caption = 'V'
        Enabled = False
        TabOrder = 6
      end
      object BtnAEditar: TBitBtn
        Left = 144
        Top = 244
        Width = 24
        Height = 25
        Caption = '^'
        TabOrder = 7
      end
      object BtnADeletar: TBitBtn
        Left = 120
        Top = 244
        Width = 24
        Height = 25
        Caption = '-'
        TabOrder = 8
      end
      object BtnAInserir: TBitBtn
        Left = 96
        Top = 244
        Width = 24
        Height = 25
        Caption = '+'
        TabOrder = 9
      end
      object BtnAUltimo: TBitBtn
        Left = 72
        Top = 244
        Width = 24
        Height = 25
        Caption = '>|'
        TabOrder = 10
      end
      object BtnAProximo: TBitBtn
        Left = 48
        Top = 244
        Width = 24
        Height = 25
        Caption = '>'
        TabOrder = 11
      end
      object BtnAAnterior: TBitBtn
        Left = 24
        Top = 244
        Width = 24
        Height = 25
        Caption = '<'
        TabOrder = 12
      end
      object BtnAPrimeiro: TBitBtn
        Left = 0
        Top = 244
        Width = 24
        Height = 25
        Caption = '|<'
        TabOrder = 13
      end
    end
  end
end
