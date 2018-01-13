unit U_DMAdega;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM_Adega = class(TDataModule)
    TB_Adega: TTable;
    DS_Adega: TDataSource;
    TB_Adegacod: TIntegerField;
    TB_Adegapreco: TStringField;
    TB_AdegaMarca: TStringField;
    TB_AdegaAno: TStringField;
    TB_AdegaPorcAlc: TStringField;
    TB_Adegaestoque: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Adega: TDM_Adega;

implementation

{$R *.dfm}

end.
