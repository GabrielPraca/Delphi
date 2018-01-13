unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmPrincipal = class(TForm)
    MnuMenu: TMainMenu;
    Opcoes1: TMenuItem;
    Soma1: TMenuItem;
    Subtrao1: TMenuItem;
    Multiplicao1: TMenuItem;
    Diviso1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Soma1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
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

uses U_Calc, U_Sub, U_Multi, U_Div;

{$R *.dfm}

procedure TFrmPrincipal.Soma1Click(Sender: TObject);
begin
  FrmSoma.Show();
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TFrmPrincipal.Subtrao1Click(Sender: TObject);
begin
  FrmSub.Show();
end;

procedure TFrmPrincipal.Multiplicao1Click(Sender: TObject);
begin
  FrmMult.Show();
end;

procedure TFrmPrincipal.Diviso1Click(Sender: TObject);
begin
  FrmDiv.Show();
end;

end.
