unit u_dm;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDMRelatorio = class(TDataModule)
    TBRelat: TTable;
    DSRelat: TDataSource;
    QryRelat: TQuery;
    TBRelatnome: TStringField;
    TBRelatcidade: TStringField;
    TBRelatemail: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorio: TDMRelatorio;

implementation

{$R *.dfm}

end.
