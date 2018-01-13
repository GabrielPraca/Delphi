unit U_DMCadastro;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDMCadastro = class(TDataModule)
    DSPessoa: TDataSource;
    TABPessoa: TTable;
    TABPessoaCodigo: TIntegerField;
    TABPessoaNome: TStringField;
    TABPessoaFone: TStringField;
    TABPessoaEmail: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCadastro: TDMCadastro;

implementation

{$R *.dfm}

end.
