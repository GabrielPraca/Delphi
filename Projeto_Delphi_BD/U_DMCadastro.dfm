object DMCadastro: TDMCadastro
  OldCreateOrder = False
  Left = 189
  Top = 140
  Height = 150
  Width = 215
  object DSPessoa: TDataSource
    DataSet = TABPessoa
    Left = 16
  end
  object TABPessoa: TTable
    Active = True
    DatabaseName = 'CONPessoa'
    TableName = 'dbo.TBPessoa'
    Left = 96
    Top = 8
    object TABPessoaCodigo: TIntegerField
      FieldName = 'Codigo'
      Required = True
    end
    object TABPessoaNome: TStringField
      FieldName = 'Nome'
      Size = 15
    end
    object TABPessoaFone: TStringField
      FieldName = 'Fone'
      Size = 14
    end
    object TABPessoaEmail: TStringField
      FieldName = 'Email'
      Size = 40
    end
  end
end
