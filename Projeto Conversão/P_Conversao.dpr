program P_Conversao;

uses
  Forms,
  U_Calc in 'U_Calc.pas' {FrmSoma},
  U_Principal in 'U_Principal.pas' {FrmPrincipal},
  U_Sub in 'U_Sub.pas' {FrmSub},
  U_Multi in 'U_Multi.pas' {FrmMult},
  U_Div in 'U_Div.pas' {FrmDiv};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmSoma, FrmSoma);
  Application.CreateForm(TFrmSub, FrmSub);
  Application.CreateForm(TFrmMult, FrmMult);
  Application.CreateForm(TFrmDiv, FrmDiv);
  Application.Run;
end.
