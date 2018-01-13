unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Operaes1: TMenuItem;
    Soma1: TMenuItem;
    Subtrao1: TMenuItem;
    Multiplicao1: TMenuItem;
    Diviso1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Soma1Click(Sender: TObject);
    procedure Subtrao1Click(Sender: TObject);
    procedure Multiplicao1Click(Sender: TObject);
    procedure Diviso1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses U_Div, U_Mult, U_Soma, U_Sub;

{$R *.dfm}

procedure TFrmPrincipal.Soma1Click(Sender: TObject);
begin
  FrmSoma.ShowModal;
  Hide;
end;

procedure TFrmPrincipal.Subtrao1Click(Sender: TObject);
begin
  FrmSub.ShowModal;
  Hide;
end;

procedure TFrmPrincipal.Multiplicao1Click(Sender: TObject);
begin
  FrmMult.ShowModal;
  Hide;
end;

procedure TFrmPrincipal.Diviso1Click(Sender: TObject);
begin
  FrmDiv.ShowModal;
  Hide;
end;

end.
