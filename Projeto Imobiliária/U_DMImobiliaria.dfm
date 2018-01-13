object DMImobiliaria: TDMImobiliaria
  OldCreateOrder = False
  Left = 1345
  Top = 132
  Height = 281
  Width = 154
  object QryUsuario: TQuery
    DatabaseName = 'ConImobiliaria'
    Left = 21
  end
  object DSUsuario: TDataSource
    DataSet = QryUsuario
    Left = 85
  end
  object DSCliente: TDataSource
    DataSet = TBCliente
    Left = 85
    Top = 48
  end
  object DSImovel: TDataSource
    DataSet = TBImovel
    Left = 85
    Top = 96
  end
  object DSAluguel: TDataSource
    DataSet = TBAluguel
    Left = 85
    Top = 192
  end
  object TBCliente: TTable
    Active = True
    DatabaseName = 'ConImobiliaria'
    TableName = 'dbo.TBCliente'
    Left = 22
    Top = 48
    object TBClienteNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object TBClienteRG: TStringField
      FieldName = 'RG'
      Size = 50
    end
    object TBClienteCPF: TStringField
      FieldName = 'CPF'
      Size = 50
    end
    object TBClienteNascimento: TStringField
      FieldName = 'Nascimento'
      Size = 50
    end
    object TBClienteFone: TStringField
      FieldName = 'Fone'
      Size = 50
    end
    object TBClienteEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Size = 50
    end
  end
  object TBImovel: TTable
    Active = True
    DatabaseName = 'ConImobiliaria'
    TableName = 'dbo.TBImovel'
    Left = 22
    Top = 96
    object TBImovelCodTipo: TIntegerField
      FieldName = 'CodTipo'
    end
    object TBImovelAreaConstruida: TStringField
      FieldName = 'AreaConstruida'
      Size = 50
    end
    object TBImovelQtdeComodos: TIntegerField
      FieldName = 'QtdeComodos'
    end
    object TBImovelGaragem: TStringField
      FieldName = 'Garagem'
      Size = 50
    end
    object TBImovelFotoImovel: TStringField
      FieldName = 'FotoImovel'
      Size = 255
    end
    object TBImovelValorImovel: TFloatField
      FieldName = 'ValorImovel'
    end
  end
  object TBAluguel: TTable
    Active = True
    DatabaseName = 'ConImobiliaria'
    TableName = 'dbo.TBAluguel'
    Left = 22
    Top = 192
    object TBAluguelCodImovel: TIntegerField
      FieldName = 'CodImovel'
    end
    object TBAluguelCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object TBAluguelDataInicioContrato: TStringField
      FieldName = 'DataInicioContrato'
      Size = 50
    end
    object TBAluguelDataFimContrato: TStringField
      FieldName = 'DataFimContrato'
      Size = 50
    end
  end
  object DSTipoImo: TDataSource
    DataSet = TBTipoImo
    Left = 85
    Top = 144
  end
  object TBTipoImo: TTable
    Active = True
    DatabaseName = 'ConImobiliaria'
    TableName = 'dbo.TBTipo'
    Left = 22
    Top = 144
    object TBTipoImoTipoImovel: TStringField
      FieldName = 'TipoImovel'
      Size = 50
    end
  end
end
