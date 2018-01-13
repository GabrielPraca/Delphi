program P_Velha;

uses
  Forms,
  U_Velha in 'U_Velha.pas' {FrmVelha};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmVelha, FrmVelha);
  Application.Run;
end.
