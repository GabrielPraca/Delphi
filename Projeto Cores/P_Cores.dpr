program P_Cores;

uses
  Forms,
  U_Primeiro in 'U_Primeiro.pas' {FrmPrimeiro};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrimeiro, FrmPrimeiro);
  Application.Run;
end.
