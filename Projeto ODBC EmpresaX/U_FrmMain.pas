unit U_FrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Funcionrio1: TMenuItem;
    Departamento1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Departamento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses U_FrmDepartamento, U_FrmFuncionario;

{$R *.dfm}

procedure TFrmMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMain.Funcionrio1Click(Sender: TObject);
begin
  FrmFuncionario.Show;
  Hide;
end;

procedure TFrmMain.Departamento1Click(Sender: TObject);
begin
  FrmDepartamento.Show;
  Hide;
end;

end.
