program P_Relacionamentos;

uses
  Forms,
  U_Produtos in 'U_Produtos.pas' {FrmProdutos},
  U_DMDados in 'U_DMDados.pas' {DMDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TDMDados, DMDados);
  Application.Run;
end.
