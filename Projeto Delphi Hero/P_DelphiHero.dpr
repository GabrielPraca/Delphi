program P_DelphiHero;

uses
  Forms,
  U_Main in 'U_Main.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
