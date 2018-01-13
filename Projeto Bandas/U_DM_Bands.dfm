object DM_Bandas: TDM_Bandas
  OldCreateOrder = False
  Left = 840
  Top = 93
  Height = 230
  Width = 176
  object TB_CadBanda: TTable
    Active = True
    DatabaseName = 'ConBandas'
    TableName = 'dbo.TB_Bandas'
    Left = 23
    object TB_CadBandaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object TB_CadBandaFormacao: TStringField
      FieldName = 'Formacao'
      Size = 7
    end
    object TB_CadBandaVocalista: TStringField
      FieldName = 'Vocalista'
      Size = 50
    end
    object TB_CadBandaSite: TStringField
      FieldName = 'Site'
      Size = 50
    end
    object TB_CadBandaPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object TB_CadBandaFoto: TStringField
      FieldName = 'Foto'
      Size = 200
    end
    object TB_CadBandaultimo_album: TStringField
      FieldName = 'ultimo_album'
      Size = 250
    end
    object TB_CadBandaPreco: TFloatField
      FieldName = 'Preco'
    end
    object TB_CadBandaestilo: TStringField
      FieldName = 'estilo'
      Size = 50
    end
  end
  object DS_CadBanda: TDataSource
    DataSet = TB_CadBanda
    Left = 103
  end
  object QryBanda: TQuery
    Active = True
    DatabaseName = 'ConBandas'
    SQL.Strings = (
      'select * from TB_Bandas')
    Left = 24
    Top = 48
  end
  object DS_QryBanda: TDataSource
    DataSet = QryBanda
    Left = 104
    Top = 48
  end
  object QryLogin: TQuery
    Active = True
    DatabaseName = 'ConBandas'
    SQL.Strings = (
      'select * from TB_Usuarios')
    Left = 24
    Top = 104
  end
  object DS_QryLogin: TDataSource
    DataSet = QryLogin
    Left = 104
    Top = 104
  end
end
