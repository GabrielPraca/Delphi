program P_EmpresaX;

uses
  Forms,
  U_FrmMain in 'U_FrmMain.pas' {FrmMain},
  U_FrmFuncionario in 'U_FrmFuncionario.pas' {FrmFuncionario},
  U_FrmDepartamento in 'U_FrmDepartamento.pas' {FrmDepartamento},
  U_DM in 'U_DM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmFuncionario, FrmFuncionario);
  Application.CreateForm(TFrmDepartamento, FrmDepartamento);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
