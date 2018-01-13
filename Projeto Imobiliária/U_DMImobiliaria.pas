unit U_DMImobiliaria;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDMImobiliaria = class(TDataModule)
    QryUsuario: TQuery;
    DSUsuario: TDataSource;
    DSCliente: TDataSource;
    DSImovel: TDataSource;
    DSAluguel: TDataSource;
    TBCliente: TTable;
    TBImovel: TTable;
    TBAluguel: TTable;
    DSTipoImo: TDataSource;
    TBTipoImo: TTable;
    TBClienteNomeCliente: TStringField;
    TBClienteRG: TStringField;
    TBClienteCPF: TStringField;
    TBClienteNascimento: TStringField;
    TBClienteFone: TStringField;
    TBClienteEstadoCivil: TStringField;
    TBTipoImoTipoImovel: TStringField;
    TBAluguelCodImovel: TIntegerField;
    TBAluguelCodCliente: TIntegerField;
    TBAluguelDataInicioContrato: TStringField;
    TBAluguelDataFimContrato: TStringField;
    TBImovelCodTipo: TIntegerField;
    TBImovelAreaConstruida: TStringField;
    TBImovelQtdeComodos: TIntegerField;
    TBImovelGaragem: TStringField;
    TBImovelFotoImovel: TStringField;
    TBImovelValorImovel: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMImobiliaria: TDMImobiliaria;

implementation

{$R *.dfm}

end.
