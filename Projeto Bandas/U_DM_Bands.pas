unit U_DM_Bands;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM_Bandas = class(TDataModule)
    TB_CadBanda: TTable;
    DS_CadBanda: TDataSource;
    TB_CadBandaNome: TStringField;
    TB_CadBandaFormacao: TStringField;
    TB_CadBandaVocalista: TStringField;
    TB_CadBandaSite: TStringField;
    TB_CadBandaPais: TStringField;
    TB_CadBandaFoto: TStringField;
    TB_CadBandaultimo_album: TStringField;
    TB_CadBandaPreco: TFloatField;
    TB_CadBandaestilo: TStringField;
    QryBanda: TQuery;
    DS_QryBanda: TDataSource;
    QryLogin: TQuery;
    DS_QryLogin: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Bandas: TDM_Bandas;

implementation

uses U_FrmConsulta;

{$R *.dfm}

end.
