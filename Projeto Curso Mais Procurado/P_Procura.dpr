program P_Procura;

uses
  Forms,
  U_Procura in 'U_Procura.pas' {FrmProcura};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmProcura, FrmProcura);
  Application.Run;
end.
