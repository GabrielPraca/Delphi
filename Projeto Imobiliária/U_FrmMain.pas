unit U_FrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmMain = class(TForm)
    Menu: TMainMenu;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses U_FrmCadastro;

{$R *.dfm}

procedure TFrmMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMain.Cadastro1Click(Sender: TObject);
begin
  FrmCadastro.ShowModal;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;

end.
