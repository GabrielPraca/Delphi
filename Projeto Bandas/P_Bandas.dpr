program P_Bandas;

uses
  Forms,
  U_FrmMain in 'U_FrmMain.pas' {FrmCadBanda},
  U_DM_Bands in 'U_DM_Bands.pas' {DM_Bandas: TDataModule},
  U_FrmPrincipal in 'U_FrmPrincipal.pas' {FrmMain},
  U_FrmConsulta in 'U_FrmConsulta.pas' {FrmConsBanda},
  U_Login in 'U_Login.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmCadBanda, FrmCadBanda);
  Application.CreateForm(TDM_Bandas, DM_Bandas);
  Application.CreateForm(TFrmConsBanda, FrmConsBanda);
  Application.Run;
end.
