program P_Locacao;

uses
  Forms,
  U_Locacao in 'U_Locacao.pas' {FrmMLocacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMLocacao, FrmMLocacao);
  Application.Run;
end.
