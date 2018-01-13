program P_Loja;

uses
  Forms,
  U_Loja in 'U_Loja.pas' {FrmCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.Run;
end.
