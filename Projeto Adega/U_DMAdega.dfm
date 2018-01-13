object DM_Adega: TDM_Adega
  OldCreateOrder = False
  Left = 189
  Top = 455
  Height = 86
  Width = 256
  object TB_Adega: TTable
    Active = True
    DatabaseName = 'ConAdega'
    TableName = 'dbo.TB_Bebida'
    Left = 64
    object TB_Adegacod: TIntegerField
      FieldName = 'cod'
      Required = True
    end
    object TB_Adegapreco: TStringField
      FieldName = 'preco'
      Size = 50
    end
    object TB_AdegaMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object TB_AdegaAno: TStringField
      FieldName = 'Ano'
      Size = 50
    end
    object TB_AdegaPorcAlc: TStringField
      FieldName = 'PorcAlc'
      Size = 50
    end
    object TB_Adegaestoque: TStringField
      FieldName = 'estoque'
      Size = 50
    end
  end
  object DS_Adega: TDataSource
    DataSet = TB_Adega
    Left = 144
  end
end
