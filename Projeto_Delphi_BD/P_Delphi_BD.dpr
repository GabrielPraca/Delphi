program P_Delphi_BD;

uses
  Forms,
  U_CadPessoa in 'U_CadPessoa.pas' {FrmCadPessoa},
  U_DMCadastro in 'U_DMCadastro.pas' {DMCadastro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCadPessoa, FrmCadPessoa);
  Application.CreateForm(TDMCadastro, DMCadastro);
  Application.Run;
end.
