object DmCadastro: TDmCadastro
  OldCreateOrder = False
  Left = 731
  Top = 113
  Height = 150
  Width = 215
  object DsTbCadPessoa: TDataSource
    DataSet = TbCadPessoa
    Left = 16
  end
  object TbCadPessoa: TTable
    Active = True
    DatabaseName = 'ConCadastro'
    TableName = 'dbo.TB_Pessoa'
    Left = 128
    object TbCadPessoacodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object TbCadPessoanome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object TbCadPessoaemail: TStringField
      FieldName = 'email'
      Size = 30
    end
    object TbCadPessoafone: TStringField
      FieldName = 'fone'
      EditMask = '9999-9999;1;_'
      FixedChar = True
      Size = 9
    end
    object TbCadPessoacep: TStringField
      FieldName = 'cep'
      EditMask = '99999-999;1;_'
      FixedChar = True
      Size = 9
    end
  end
end
