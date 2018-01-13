program P_Proc;

uses
  Forms,
  U_Proc in 'U_Proc.pas' {FrmProc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmProc, FrmProc);
  Application.Run;
end.
