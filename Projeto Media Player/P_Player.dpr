program P_Player;

uses
  Forms,
  U_Player in 'U_Player.pas' {FrmPlayer};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPlayer, FrmPlayer);
  Application.Run;
end.
