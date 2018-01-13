object DMDados: TDMDados
  OldCreateOrder = False
  Left = 466
  Top = 123
  Height = 134
  Width = 204
  object TBProduto: TTable
    Active = True
    DatabaseName = 'ConLoja'
    TableName = 'dbo.TBProdutos'
    Left = 120
    object TBProdutoNomedoProduto: TStringField
      FieldName = 'NomedoProduto'
      Size = 50
    end
    object TBProdutoValorUnit: TFloatField
      FieldName = 'ValorUnit'
    end
    object TBProdutoCodigodoSetor: TIntegerField
      FieldName = 'CodigodoSetor'
    end
  end
  object TBSetor: TTable
    Active = True
    DatabaseName = 'ConLoja'
    TableName = 'dbo.TBSetor'
    Left = 120
    Top = 48
  end
  object DSProduto: TDataSource
    DataSet = TBProduto
    Left = 40
  end
  object DSSetor: TDataSource
    DataSet = TBSetor
    Left = 40
    Top = 48
  end
end
