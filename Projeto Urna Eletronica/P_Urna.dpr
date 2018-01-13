program P_Urna;

uses
  Forms,
  U_Urna in 'U_Urna.pas' {FrmUrna},
  U_Votos in 'U_Votos.pas' {FrmVotos};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Urna Eletrônica';
  Application.CreateForm(TFrmUrna, FrmUrna);    
  Application.CreateForm(TFrmVotos, FrmVotos);
  Application.Run;
end.
