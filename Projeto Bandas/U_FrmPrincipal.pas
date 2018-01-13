unit U_FrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Opes1: TMenuItem;
    Cadastrar1: TMenuItem;
    Consultar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Cadastrar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses U_FrmConsulta, U_FrmMain, U_DM_Bands;

{$R *.dfm}

procedure TFrmMain.Cadastrar1Click(Sender: TObject);
begin
  FrmCadBanda.Show;
  Hide;
end;

procedure TFrmMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMain.Consultar1Click(Sender: TObject);
begin
  FrmConsBanda.Show;
  Hide;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;

end.
