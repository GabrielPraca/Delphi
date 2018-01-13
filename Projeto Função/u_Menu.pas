unit u_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Soma1: TMenuItem;
    S1: TMenuItem;
    Multiplicao1: TMenuItem;
    Subtrao1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Soma1Click(Sender: TObject);
    procedure Multiplicao1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure Subtrao1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses u_Soma, u_Mult, u_Div, u_Sub;

{$R *.dfm}

procedure TFrmMenu.Soma1Click(Sender: TObject);
begin
  FrmSoma.Show;
  Hide;
end;

procedure TFrmMenu.Multiplicao1Click(Sender: TObject);
begin
  FrmMult.Show;
  Hide;
end;

procedure TFrmMenu.S1Click(Sender: TObject);
begin
  FrmDiv.Show;  
  Hide;
end;

procedure TFrmMenu.Subtrao1Click(Sender: TObject);
begin
  FrmSub.Show; 
  Hide;
end;

procedure TFrmMenu.Sair1Click(Sender: TObject);
begin
  Close;
end;

end.
