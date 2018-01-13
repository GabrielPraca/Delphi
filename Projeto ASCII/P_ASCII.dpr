program P_ASCII;

uses
  Forms,
  U_FrmMain in 'U_FrmMain.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
