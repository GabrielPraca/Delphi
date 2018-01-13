unit U_DMDados;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDMDados = class(TDataModule)
    TBProduto: TTable;
    TBSetor: TTable;
    DSProduto: TDataSource;
    DSSetor: TDataSource;
    TBProdutoNomedoProduto: TStringField;
    TBProdutoValorUnit: TFloatField;
    TBProdutoCodigodoSetor: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDados: TDMDados;

implementation

{$R *.dfm}

end.
