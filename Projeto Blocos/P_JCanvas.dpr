program P_JCanvas;

uses
  Forms,
  U_Tela in 'U_Tela.pas' {FrmTela};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Blocos';
  Application.CreateForm(TFrmTela, FrmTela);
  Application.Run;
end.
