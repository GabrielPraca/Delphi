program P_CalcMatriz;

uses
  Forms,
  U_CalcMatriz in 'U_CalcMatriz.pas' {FrmCalcMatriz};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmCalcMatriz, FrmCalcMatriz);
  Application.Run;
end.
