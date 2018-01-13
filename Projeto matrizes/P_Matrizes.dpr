program P_Matrizes;

uses
  Forms,
  U_Matrizes in 'U_Matrizes.pas' {FrmMatrizes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMatrizes, FrmMatrizes);
  Application.Run;
end.
