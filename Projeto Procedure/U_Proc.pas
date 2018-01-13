unit U_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmProc = class(TForm)
    EdtVal1: TEdit;
    LblVal1: TLabel;
    LblVal2: TLabel;
    LblResult: TLabel;
    EdtVal2: TEdit;
    BtnSoma: TButton;
    BtnSub: TButton;
    BtnMult: TButton;
    BtnDiv: TButton;
    BtnLimpa: TButton;
    procedure BtnLimpaClick(Sender: TObject);
    procedure Limpar;
    function Somar(v1, v2: real): Real;
    function Subtrair(v1, v2: real): Real;
    function Multiplicar(v1, v2: real): Real;
    function Dividir(v1, v2: real): Real;
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnSubClick(Sender: TObject);
    procedure BtnMultClick(Sender: TObject);
    procedure BtnDivClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProc: TFrmProc;

implementation

{$R *.dfm}

procedure TFrmProc.Limpar;
Begin
  EdtVal1.Clear();
  EdtVal2.Clear();
  LblResult.Caption:= '';
End;

function TFrmProc.Somar(v1, v2: real): Real;
Begin
  Result:= v1 + v2;
End;

function TFrmProc.Subtrair(v1, v2: real): Real;
Begin
  Result:= v1 - v2;
End;

function TFrmProc.Multiplicar(v1, v2: real): Real;
Begin
  Result:= v1 * v2;
End;

function TFrmProc.Dividir(v1, v2: real): Real;
Begin
  Result:= v1 / v2;
End;

procedure TFrmProc.BtnLimpaClick(Sender: TObject);
begin
  Limpar();
end;

procedure TFrmProc.BtnSomaClick(Sender: TObject);
begin
  LblResult.Caption:= FloatToStr(Somar(StrToFloat(EdtVal1.Text), StrToFloat(EdtVal2.Text)));
end;

procedure TFrmProc.BtnSubClick(Sender: TObject);
begin
  LblResult.Caption:= FloatToStr(Subtrair(StrToFloat(EdtVal1.Text), StrToFloat(EdtVal2.Text)));
end;

procedure TFrmProc.BtnMultClick(Sender: TObject);
begin
  LblResult.Caption:= FloatToStr(Multiplicar(StrToFloat(EdtVal1.Text), StrToFloat(EdtVal2.Text)));
end;

procedure TFrmProc.BtnDivClick(Sender: TObject);
begin
  LblResult.Caption:= FloatToStr(Dividir(StrToFloat(EdtVal1.Text), StrToFloat(EdtVal2.Text)));
end;

end.
