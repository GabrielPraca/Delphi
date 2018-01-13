object FrmConsulta: TFrmConsulta
  Left = 190
  Top = 114
  Width = 465
  Height = 370
  Caption = 'Consulta'
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
    Width = 457
    Height = 337
    ActivePage = TabCliente
    TabOrder = 0
    object TabCliente: TTabSheet
      Caption = 'Cliente'
      object Label1: TLabel
        Left = 0
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Busca'
      end
      object TxtBusca: TEdit
        Left = 40
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object CmbCampo: TComboBox
        Left = 168
        Top = 8
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'Nome'
        Items.Strings = (
          'Nome'
          'RG')
      end
    end
    object TabImovel: TTabSheet
      Caption = 'Im'#243'vel'
      ImageIndex = 1
    end
    object TabTipoImo: TTabSheet
      Caption = 'Tipo Im'#243'vel'
      ImageIndex = 2
    end
    object TabAluguel: TTabSheet
      Caption = 'Aluguel'
      ImageIndex = 3
    end
  end
end
