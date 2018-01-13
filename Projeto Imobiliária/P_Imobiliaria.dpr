program P_Imobiliaria;

uses
  Forms,
  U_FrmLogin in 'U_FrmLogin.pas' {FrmLogin},
  U_DMImobiliaria in 'U_DMImobiliaria.pas' {DMImobiliaria: TDataModule},
  U_FrmMain in 'U_FrmMain.pas' {FrmMain},
  U_FrmCadastro in 'U_FrmCadastro.pas' {FrmCadastro},
  U_FrmConsulta in 'U_FrmConsulta.pas' {FrmConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDMImobiliaria, DMImobiliaria);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.Run;
end.
