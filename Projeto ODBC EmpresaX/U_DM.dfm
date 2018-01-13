object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 559
  Top = 202
  Height = 150
  Width = 215
  object TB_Funcionario: TTable
    Active = True
    DatabaseName = 'Empresa21'
    TableName = 'dbo.Funcionario'
    Left = 32
    object TB_FuncionarioMatricula: TIntegerField
      FieldName = 'Matricula'
      Required = True
    end
    object TB_FuncionarioCodDepartamento: TIntegerField
      FieldName = 'CodDepartamento'
    end
    object TB_FuncionarioNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object TB_FuncionarioDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
    end
    object TB_FuncionarioDataMatricula: TDateTimeField
      FieldName = 'DataMatricula'
    end
  end
  object DS_Funcionario: TDataSource
    DataSet = TB_Funcionario
    Left = 140
  end
  object TB_Departamento: TTable
    Active = True
    DatabaseName = 'Empresa21'
    TableName = 'dbo.Departamento'
    Left = 32
    Top = 48
    object TB_DepartamentoCodDepartamento: TIntegerField
      FieldName = 'CodDepartamento'
      Required = True
    end
    object TB_DepartamentoDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 30
    end
    object TB_DepartamentoOrcamento: TFloatField
      FieldName = 'Orcamento'
    end
  end
  object DS_Departamento: TDataSource
    DataSet = TB_Departamento
    Left = 140
    Top = 48
  end
end
