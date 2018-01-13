unit u_Div;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmDiv = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LblTotal: TLabel;
    EdtV1: TEdit;
    EdtV2: TEdit;
    BtnSomar: TButton;
    BtnLimpar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Limpar;
    function Dividir(valor1, valor2: real): real;
  end;

var
  FrmDiv: TFrmDiv;
  v1, v2: real;

implementation

uses u_Menu;

{$R *.dfm}

procedure TFrmDiv.Limpar;
Begin
  EdtV1.Clear;
  EdtV2.Clear;
  LblTotal.Caption:= '';
  EdtV1.SetFocus;
End;

function TFrmDiv.Dividir(valor1, valor2: real): real;
Begin
  Result:= valor1 / valor2;
End;

procedure TFrmDiv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMenu.Show;
end;

procedure TFrmDiv.FormShow(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmDiv.BtnLimparClick(Sender: TObject);
begin
 Limpar;
end;

procedure TFrmDiv.BtnSomarClick(Sender: TObject);
begin
  v1:= StrToFloat(EdtV1.Text);
  v2:= StrToFloat(EdtV2.Text);
  LblTotal.Caption:= FloatToStr(Dividir(v1, v2));
end;

end.
