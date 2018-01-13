unit u_Mult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmMult = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LblTotal: TLabel;
    EdtV1: TEdit;
    EdtV2: TEdit;
    BtnSomar: TButton;
    BtnLimpar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSomarClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Limpar;
    function Multiplicar(valor1, valor2: real): real;
  end;

var
  FrmMult: TFrmMult;
  v1, v2: real;

implementation

uses u_Menu;

{$R *.dfm}

function TFrmMult.Multiplicar(valor1, valor2: real): real;
begin
  Result:= valor1 * valor2;
end;

procedure TFrmMult.Limpar;
begin
  EdtV1.Clear;
  EdtV2.Clear;
  LblTotal.Caption:= '';
  EdtV1.SetFocus;
end;

procedure TFrmMult.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMenu.Show;
end;

procedure TFrmMult.BtnSomarClick(Sender: TObject);
begin
  v1:= StrToFloat(EdtV1.Text);
  v2:= StrToFloat(EdtV2.Text);
  LblTotal.Caption:= FloatToStr(Multiplicar(v1, v2));
end;

procedure TFrmMult.BtnLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmMult.FormShow(Sender: TObject);
begin
  Limpar;
end;

end.
