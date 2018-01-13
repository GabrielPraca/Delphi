unit U_DM;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDataModule1 = class(TDataModule)
    TB_Funcionario: TTable;
    DS_Funcionario: TDataSource;
    TB_Departamento: TTable;
    DS_Departamento: TDataSource;
    TB_FuncionarioMatricula: TIntegerField;
    TB_FuncionarioCodDepartamento: TIntegerField;
    TB_FuncionarioNome: TStringField;
    TB_FuncionarioDataNascimento: TDateTimeField;
    TB_FuncionarioDataMatricula: TDateTimeField;
    TB_DepartamentoCodDepartamento: TIntegerField;
    TB_DepartamentoDepartamento: TStringField;
    TB_DepartamentoOrcamento: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
