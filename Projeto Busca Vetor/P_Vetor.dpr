program P_Vetor;

uses
  Forms,
  U_Vetor in 'U_Vetor.pas' {FrmBusca};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmBusca, FrmBusca);
  Application.Run;
end.
