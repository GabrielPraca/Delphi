program p_relatorios;

uses
  Forms,
  u_dados in 'u_dados.pas' {FrmDados},
  u_dm in 'u_dm.pas' {DMRelatorio: TDataModule},
  u_relatorio in 'u_relatorio.pas' {FrmRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmDados, FrmDados);
  Application.CreateForm(TDMRelatorio, DMRelatorio);
  Application.CreateForm(TFrmRelatorio, FrmRelatorio);
  Application.Run;
end.
