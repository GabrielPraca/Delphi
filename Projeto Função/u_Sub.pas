unit u_Sub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmSub = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LblTotal: TLabel;
    EdtV1: TEdit;
    EdtV2: TEdit;
    BtnSomar: TButton;
    BtnLimpar: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSomarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Limpar;
    function Subtrair(valor1, valor2: real): real;
  end;

var
  FrmSub: TFrmSub;  
  v1, v2: real;

implementation

uses u_Menu;

{$R *.dfm}

procedure TFrmSub.Limpar;
Begin      
  EdtV1.Clear;
  EdtV2.Clear;
  LblTotal.Caption:= '';
  EdtV1.SetFocus;
End;

function TFrmSub.Subtrair(valor1, valor2: real): real;
Begin
  Result:= valor1 - valor2;
End;

procedure TFrmSub.FormShow(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmSub.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMenu.Show;
end;

procedure TFrmSub.BtnSomarClick(Sender: TObject);
begin
  v1:= StrToFloat(EdtV1.Text);
  v2:= StrToFloat(EdtV2.Text);
  LblTotal.Caption:= FloatToStr(Subtrair(v1, v2));
end;

procedure TFrmSub.BtnLimparClick(Sender: TObject);
begin
  Limpar;
end;

end.
