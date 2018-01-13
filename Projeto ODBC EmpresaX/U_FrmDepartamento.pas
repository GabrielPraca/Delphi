unit U_FrmDepartamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  TFrmDepartamento = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDepartamento: TFrmDepartamento;

implementation

uses U_FrmMain, U_DM;

{$R *.dfm}

procedure TFrmDepartamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMain.Show;
end;

end.
