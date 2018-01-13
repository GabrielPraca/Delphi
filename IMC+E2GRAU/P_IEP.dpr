program P_IEP;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {FrmPrincipal},
  U_IMC in 'U_IMC.pas' {FrmIMC},
  U_Equacao in 'U_Equacao.pas' {FrmEqua},
  U_Joao in 'U_Joao.pas' {FrmJoao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmIMC, FrmIMC);
  Application.CreateForm(TFrmEqua, FrmEqua);
  Application.CreateForm(TFrmJoao, FrmJoao);
  Application.Run;
end.
