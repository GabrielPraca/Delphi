program P_Heranca;

uses
  Forms,
  U_Modelo in 'U_Modelo.pas' {FrmModelo},
  U_Principal in 'U_Principal.pas' {FrmPrincipal},
  U_Soma in 'U_Soma.pas' {FrmSoma},
  U_Sub in 'U_Sub.pas' {FrmSub},
  U_Mult in 'U_Mult.pas' {FrmMult},
  U_Div in 'U_Div.pas' {FrmDiv};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmModelo, FrmModelo);
  Application.CreateForm(TFrmSoma, FrmSoma);
  Application.CreateForm(TFrmSub, FrmSub);
  Application.CreateForm(TFrmMult, FrmMult);
  Application.CreateForm(TFrmDiv, FrmDiv);
  Application.Run;
end.
