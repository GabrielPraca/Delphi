program P_Agega;

uses
  Forms,
  U_adega in 'U_adega.pas' {FrmAdega},
  U_DMAdega in 'U_DMAdega.pas' {DM_Adega: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmAdega, FrmAdega);
  Application.CreateForm(TDM_Adega, DM_Adega);
  Application.Run;
end.
