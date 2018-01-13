unit u_DmCadastro;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDmCadastro = class(TDataModule)
    DsTbCadPessoa: TDataSource;
    TbCadPessoa: TTable;
    TbCadPessoacodigo: TIntegerField;
    TbCadPessoanome: TStringField;
    TbCadPessoaemail: TStringField;
    TbCadPessoafone: TStringField;
    TbCadPessoacep: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastro: TDmCadastro;

implementation

{$R *.dfm}

end.
