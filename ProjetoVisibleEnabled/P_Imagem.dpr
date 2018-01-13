program P_Imagem;

uses
  Forms,
  U_Imagem in 'U_Imagem.pas' {FrmImagem};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmImagem, FrmImagem);
  Application.Run;
end.
