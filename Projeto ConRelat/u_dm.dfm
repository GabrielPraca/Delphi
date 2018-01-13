object DMRelatorio: TDMRelatorio
  OldCreateOrder = False
  Left = 1404
  Top = 120
  Height = 86
  Width = 195
  object TBRelat: TTable
    Active = True
    DatabaseName = 'ConRelat'
    TableName = 'dbo.TBDados'
    Left = 16
    object TBRelatnome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object TBRelatcidade: TStringField
      FieldName = 'cidade'
      Size = 40
    end
    object TBRelatemail: TStringField
      FieldName = 'email'
      Size = 40
    end
  end
  object DSRelat: TDataSource
    DataSet = TBRelat
    Left = 72
  end
  object QryRelat: TQuery
    DatabaseName = 'ConRelat'
    SQL.Strings = (
      'select * from TBDados')
    Left = 128
  end
end
