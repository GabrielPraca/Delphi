program P_Jogo_da_Vida;

uses
  Forms,
  U_Tela in 'U_Tela.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
