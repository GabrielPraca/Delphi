unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    TxtLogin: TEdit;
    TxtSenha: TEdit;
    Login: TButton;
    procedure LoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses U_DM_Bands, U_FrmPrincipal, DB, DBTables, Math;

{$R *.dfm}

procedure TFrmLogin.LoginClick(Sender: TObject);
begin
  with DM_Bandas.QryLogin do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from TB_Usuarios where Senha = ' + QuotedStr(TxtSenha.Text) + ' and UserName  = ' + QuotedStr(TxtLogin.Text));
    Open;
    //if (rowsaffected >0  ) then
     //begin
    If IsEmpty then
    begin
      ShowMessage('Login ou Senha errados');
      exit;
    end;
    //end;
    FrmMain.Show;
    Hide;
  end;

end;

end.
