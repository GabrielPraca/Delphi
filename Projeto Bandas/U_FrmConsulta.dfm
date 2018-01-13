object FrmConsBanda: TFrmConsBanda
  Left = 174
  Top = 317
  Width = 588
  Height = 355
  Caption = 'Consulta de Bandas'
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 580
    Height = 321
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta Din'#226'mica'
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 98
        Height = 13
        Caption = 'Nome para consulta:'
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 103
        Height = 13
        Caption = 'C'#243'digo para consulta:'
      end
      object EdtNome: TEdit
        Left = 120
        Top = 28
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = EdtNomeChange
      end
      object EdtCod: TEdit
        Left = 120
        Top = 4
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object BtnDinNovaConsulta: TBitBtn
        Left = 376
        Top = 2
        Width = 97
        Height = 25
        Caption = 'Nova consulta'
        TabOrder = 2
        OnClick = BtnDinNovaConsultaClick
      end
      object BtnDinConsultar: TBitBtn
        Left = 256
        Top = 2
        Width = 113
        Height = 25
        Caption = 'Consultar C'#243'digo'
        TabOrder = 3
        OnClick = BtnDinConsultarClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta por Campo'
      ImageIndex = 1
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 47
        Height = 13
        Caption = 'Consultar:'
      end
      object Label4: TLabel
        Left = 200
        Top = 24
        Width = 14
        Height = 13
        Caption = 'em'
      end
      object TxtCampConsulta: TEdit
        Left = 72
        Top = 20
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object CmbCampEm: TComboBox
        Left = 224
        Top = 20
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = 'Nome'
        Items.Strings = (
          'C'#243'digo'
          'Vocalista'
          'Nome'
          'Site'
          'Pa'#237's')
      end
      object BtnCampNConsulta: TBitBtn
        Left = 464
        Top = 18
        Width = 97
        Height = 25
        Caption = 'Nova Consulta'
        TabOrder = 2
        OnClick = BtnCampNConsultaClick
      end
      object BtnCampConsultar: TBitBtn
        Left = 376
        Top = 18
        Width = 81
        Height = 25
        Caption = 'Consultar'
        TabOrder = 3
        OnClick = BtnCampConsultarClick
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 563
    Height = 233
    DataSource = DM_Bandas.DS_QryBanda
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
