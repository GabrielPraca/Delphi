unit u_dados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFrmDados = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    BtnGeral: TButton;
    BtnFiltro: TButton;
    procedure BtnGeralClick(Sender: TObject);
    procedure BtnFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDados: TFrmDados;

implementation

uses u_dm, u_relatorio, DB, DBTables;

{$R *.dfm}

procedure TFrmDados.BtnGeralClick(Sender: TObject);
begin
  with DMRelatorio.QryRelat do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from TBDados');
    Open;
  end;
  FrmRelatorio.QrpRelat.Preview;
end;

procedure TFrmDados.BtnFiltroClick(Sender: TObject);
begin
  with DMRelatorio.QryRelat do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from TBDados where Cidade = ' + QuotedStr(DBEdit2.Text));
    Open;
  end;
  FrmRelatorio.QrpRelat.Preview;
end;

end.
