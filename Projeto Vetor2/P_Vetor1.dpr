program P_Vetor1;

uses
  Forms,
  U_Vetor1 in 'U_Vetor1.pas' {FrmVetor1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmVetor1, FrmVetor1);
  Application.Run;
end.
