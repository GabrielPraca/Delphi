unit U_FrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmLogin = class(TForm)
    Label1: TLabel;
    TxtLogin: TEdit;
    Label2: TLabel;
    TxtSenha: TEdit;
    BtnEntrar: TButton;
    procedure BtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses U_DMImobiliaria, U_FrmMain;

{$R *.dfm}

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  if TxtLogin.Text = '' then
  begin
    ShowMessage('Campo Login vazio.');
    Exit;
  end;
  if TxtSenha.Text = '' then
  begin
    ShowMessage('Campo Senha vazio.');
    Exit;
  end;

  with DMImobiliaria.QryUsuario do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from TBUsuario where Senha = ' + QuotedStr(TxtSenha.Text) + ' and Login  = ' + QuotedStr(TxtLogin.Text));
    Open;
    If IsEmpty then
    begin
      ShowMessage('Login ou Senha errados');
      exit;
    end;
    FrmMain.Show;
    Hide;
  end;
end;

end.
