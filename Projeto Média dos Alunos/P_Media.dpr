program P_Media;

uses
  Forms,
  U_Media in 'U_Media.pas' {FrmMedia};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMedia, FrmMedia);
  Application.Run;
end.
