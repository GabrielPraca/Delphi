unit u_Soma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmSoma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtV1: TEdit;
    EdtV2: TEdit;
    LblTotal: TLabel;
    BtnSomar: TButton;
    BtnLimpar: TButton;
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //declaração do procedimento para limpar os valores
    procedure Limpar;
    //declação da função de soma
    function Somar(valor1, valor2: real): real;
end;

var
  FrmSoma: TFrmSoma;
  v1,v2: real;

implementation

uses u_Menu;

{$R *.dfm}

//código do procedimento limpar
procedure TFrmSoma.Limpar;
begin
  EdtV1.Clear;
  EdtV2.Clear;
  LblTotal.Caption:= '';
  EdtV1.SetFocus;
end;

//código da função soma
function TFrmSoma.Somar(valor1, valor2: real): real;
begin
  Somar:= (valor1+valor2);
end;

procedure TFrmSoma.BtnLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmSoma.FormShow(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmSoma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Limpar;
  FrmMenu.Show;
end;

procedure TFrmSoma.BtnSomarClick(Sender: TObject);
begin
  v1:= StrToFloat(EdtV1.Text);
  v2:= StrToFloat(EdtV2.Text);
  LblTotal.Caption:= FloatToStr(Somar(v1, v2));
end;

end.
