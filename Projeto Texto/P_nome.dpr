program P_nome;

uses
  Forms,
  U_nome in 'U_nome.pas' {FrmNome};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmNome, FrmNome);
  Application.Run;
end.
