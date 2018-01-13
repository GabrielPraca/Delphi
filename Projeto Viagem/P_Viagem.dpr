program P_Viagem;

uses
  Forms,
  U_Viagem in 'U_Viagem.pas' {Frm_Agencia};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_Agencia, Frm_Agencia);
  Application.Run;
end.
