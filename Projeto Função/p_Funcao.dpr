program p_Funcao;

uses
  Forms,
  u_Soma in 'u_Soma.pas' {FrmSoma},
  u_Menu in 'u_Menu.pas' {FrmMenu},
  u_Mult in 'u_Mult.pas' {FrmMult},
  u_Div in 'u_Div.pas' {FrmDiv},
  u_Sub in 'u_Sub.pas' {FrmSub};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmSoma, FrmSoma);
  Application.CreateForm(TFrmMult, FrmMult);
  Application.CreateForm(TFrmDiv, FrmDiv);
  Application.CreateForm(TFrmSub, FrmSub);
  Application.Run;
end.
