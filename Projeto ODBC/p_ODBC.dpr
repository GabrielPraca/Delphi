program p_ODBC;

uses
  Forms,
  u_cadastro in 'u_cadastro.pas' {FrmCadastro},
  u_DmCadastro in 'u_DmCadastro.pas' {DmCadastro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TDmCadastro, DmCadastro);
  Application.Run;
end.
