unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmPrincipal = class(TForm)
    MnuMenu: TMainMenu;
    IMC1: TMenuItem;
    IMC2: TMenuItem;
    Equaodo2grau1: TMenuItem;
    JooPescador1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure IMC2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Equaodo2grau1Click(Sender: TObject);
    procedure JooPescador1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses U_IMC, U_Equacao, U_Joao;

{$R *.dfm}

procedure TFrmPrincipal.IMC2Click(Sender: TObject);
begin
  FrmIMC.Show();
  FrmPrincipal.Hide();
end;

procedure TFrmPrincipal.Equaodo2grau1Click(Sender: TObject);
begin
  FrmEqua.Show();
  FrmPrincipal.Hide();
end;     

procedure TFrmPrincipal.JooPescador1Click(Sender: TObject);
begin
  FrmJoao.Show();
  FrmPrincipal.Hide();
end;


procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate();
end;

end.
