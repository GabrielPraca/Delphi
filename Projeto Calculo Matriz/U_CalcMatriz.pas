unit U_CalcMatriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmCalcMatriz = class(TForm)
    GpbMatrizA: TGroupBox;
    BtnCalcular: TButton;
    EdtMA00: TEdit;
    EdtMA01: TEdit;
    EdtMA10: TEdit;
    EdtMA11: TEdit;
    ShpRetangulo: TShape;
    GpbTamanho: TGroupBox;
    Rdb3: TRadioButton;
    Rdb5: TRadioButton;
    Rdb2: TRadioButton;
    GpbOperacao: TGroupBox;
    RdbSoma: TRadioButton;
    RdbMult: TRadioButton;
    LblOperacao: TLabel;
    LblResult: TLabel;
    EdtMA20: TEdit;
    EdtMA21: TEdit;
    EdtMA30: TEdit;
    EdtMA40: TEdit;
    EdtMA31: TEdit;
    EdtMA02: TEdit;
    EdtMA12: TEdit;
    EdtMA22: TEdit;
    EdtMA32: TEdit;
    EdtMA42: TEdit;
    EdtMA03: TEdit;
    EdtMA13: TEdit;
    EdtMA23: TEdit;
    EdtMA33: TEdit;
    EdtMA43: TEdit;
    EdtMA04: TEdit;
    EdtMA14: TEdit;
    EdtMA24: TEdit;
    EdtMA34: TEdit;
    EdtMA44: TEdit;
    EdtMA41: TEdit;
    GpbMatrizB: TGroupBox;
    EdtMB00: TEdit;
    EdtMB01: TEdit;
    EdtMB10: TEdit;
    EdtMB11: TEdit;
    EdtMB20: TEdit;
    EdtMB21: TEdit;
    EdtMB30: TEdit;
    EdtMB40: TEdit;
    EdtMB31: TEdit;
    EdtMB02: TEdit;
    EdtMB12: TEdit;
    EdtMB22: TEdit;
    EdtMB32: TEdit;
    EdtMB42: TEdit;
    EdtMB03: TEdit;
    EdtMB13: TEdit;
    EdtMB23: TEdit;
    EdtMB33: TEdit;
    EdtMB43: TEdit;
    EdtMB04: TEdit;
    EdtMB14: TEdit;
    EdtMB24: TEdit;
    EdtMB34: TEdit;
    EdtMB44: TEdit;
    EdtMB41: TEdit;
    GpbMatrizC: TGroupBox;
    EdtMC00: TEdit;
    EdtMC01: TEdit;
    EdtMC10: TEdit;
    EdtMC11: TEdit;
    EdtMC20: TEdit;
    EdtMC21: TEdit;
    EdtMC30: TEdit;
    EdtMC40: TEdit;
    EdtMC31: TEdit;
    EdtMC02: TEdit;
    EdtMC12: TEdit;
    EdtMC22: TEdit;
    EdtMC32: TEdit;
    EdtMC42: TEdit;
    EdtMC03: TEdit;
    EdtMC13: TEdit;
    EdtMC23: TEdit;
    EdtMC33: TEdit;
    EdtMC43: TEdit;
    EdtMC04: TEdit;
    EdtMC14: TEdit;
    EdtMC24: TEdit;
    EdtMC34: TEdit;
    EdtMC44: TEdit;
    EdtMC41: TEdit;
    procedure BtnCalcularClick(Sender: TObject);
    procedure Rdb5Click(Sender: TObject);
    procedure Rdb3Click(Sender: TObject);
    procedure RdbMultClick(Sender: TObject);
    procedure RdbSomaClick(Sender: TObject);
    procedure Rdb2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalcMatriz: TFrmCalcMatriz;
  matrizA, matrizB, matrizC: array[0..4, 0..4] of real;

implementation

uses Math;

{$R *.dfm}

procedure TFrmCalcMatriz.BtnCalcularClick(Sender: TObject);
var ate, x, y: integer;
begin
  matrizA[0, 0]:= StrToFloat(EdtMA00.text);
  matrizA[0, 1]:= StrToFloat(EdtMA01.text);
  matrizA[1, 0]:= StrToFloat(EdtMA10.text);
  matrizA[1, 1]:= StrToFloat(EdtMA11.text);

  matrizB[0, 0]:= StrToFloat(EdtMB00.text);
  matrizB[0, 1]:= StrToFloat(EdtMB01.text);
  matrizB[1, 0]:= StrToFloat(EdtMB10.text);
  matrizB[1, 1]:= StrToFloat(EdtMB11.text);

  if(Rdb3.Checked or Rdb5.Checked) then
  Begin
    matrizA[0, 2]:= StrToFloat(EdtMA02.text);
    matrizA[1, 2]:= StrToFloat(EdtMA12.text);
    matrizA[2, 0]:= StrToFloat(EdtMA20.text);
    matrizA[2, 1]:= StrToFloat(EdtMA21.text);
    matrizA[2, 2]:= StrToFloat(EdtMA22.text);

    matrizB[0, 2]:= StrToFloat(EdtMB02.text);
    matrizB[1, 2]:= StrToFloat(EdtMB12.text);
    matrizB[2, 0]:= StrToFloat(EdtMB20.text);
    matrizB[2, 1]:= StrToFloat(EdtMB21.text);
    matrizB[2, 2]:= StrToFloat(EdtMB22.text);
  End;

  if(Rdb5.Checked) then
  Begin
    matrizA[0, 3]:= StrToFloat(EdtMA03.text);
    matrizA[0, 4]:= StrToFloat(EdtMA04.text);
    matrizA[1, 3]:= StrToFloat(EdtMA13.text);
    matrizA[1, 4]:= StrToFloat(EdtMA14.text);
    matrizA[2, 3]:= StrToFloat(EdtMA23.text);
    matrizA[2, 4]:= StrToFloat(EdtMA24.text);
    matrizA[3, 0]:= StrToFloat(EdtMA30.text);
    matrizA[3, 1]:= StrToFloat(EdtMA31.text);
    matrizA[3, 2]:= StrToFloat(EdtMA32.text);
    matrizA[3, 3]:= StrToFloat(EdtMA33.text);
    matrizA[3, 4]:= StrToFloat(EdtMA34.text);
    matrizA[4, 0]:= StrToFloat(EdtMA40.text);
    matrizA[4, 1]:= StrToFloat(EdtMA41.text);
    matrizA[4, 2]:= StrToFloat(EdtMA42.text);
    matrizA[4, 3]:= StrToFloat(EdtMA43.text);
    matrizA[4, 4]:= StrToFloat(EdtMA44.text);

    matrizB[0, 3]:= StrToFloat(EdtMB03.text);
    matrizB[0, 4]:= StrToFloat(EdtMB04.text);
    matrizB[1, 3]:= StrToFloat(EdtMB13.text);
    matrizB[1, 4]:= StrToFloat(EdtMB14.text);
    matrizB[2, 3]:= StrToFloat(EdtMB23.text);
    matrizB[2, 4]:= StrToFloat(EdtMB24.text);
    matrizB[3, 0]:= StrToFloat(EdtMB30.text);
    matrizB[3, 1]:= StrToFloat(EdtMB31.text);
    matrizB[3, 2]:= StrToFloat(EdtMB32.text);
    matrizB[3, 3]:= StrToFloat(EdtMB33.text);
    matrizB[3, 4]:= StrToFloat(EdtMB34.text);
    matrizB[4, 0]:= StrToFloat(EdtMB40.text);
    matrizB[4, 1]:= StrToFloat(EdtMB41.text);
    matrizB[4, 2]:= StrToFloat(EdtMB42.text);
    matrizB[4, 3]:= StrToFloat(EdtMB43.text);
    matrizB[4, 4]:= StrToFloat(EdtMB44.text);
  End;

  if(Rdb2.Checked) then
    ate := 1
  else if(Rdb3.Checked) then
    ate := 2
  else
    ate := 4;

  for x:=0 to ate do
    for y:=0 to ate do
      if(RdbSoma.Checked) then
        matrizC[x, y]:= matrizA[x, y]+matrizB[x, y]
      else
        matrizC[x, y]:= matrizA[x, y]*matrizB[y, x];

  EdtMC00.text:= FloatToStr(matrizC[0, 0]);
  EdtMC01.text:= FloatToStr(matrizC[0, 1]);
  EdtMC10.text:= FloatToStr(matrizC[1, 0]);
  EdtMC11.text:= FloatToStr(matrizC[1, 1]);

  if(Rdb3.Checked or Rdb5.Checked) then
  Begin
    EdtMC02.text:= FloatToStr(matrizC[0, 2]);
    EdtMC12.text:= FloatToStr(matrizC[1, 2]);
    EdtMC20.text:= FloatToStr(matrizC[2, 0]);
    EdtMC21.text:= FloatToStr(matrizC[2, 1]);
    EdtMC22.text:= FloatToStr(matrizC[2, 2]);
  End;

  if(Rdb5.Checked) then
  Begin
    EdtMC03.text:= FloatToStr(matrizC[0, 3]);
    EdtMC04.text:= FloatToStr(matrizC[0, 4]);
    EdtMC13.text:= FloatToStr(matrizC[1, 3]);
    EdtMC14.text:= FloatToStr(matrizC[1, 4]);
    EdtMC23.text:= FloatToStr(matrizC[2, 3]);
    EdtMC24.text:= FloatToStr(matrizC[2, 4]);
    EdtMC30.text:= FloatToStr(matrizC[3, 0]);
    EdtMC31.text:= FloatToStr(matrizC[3, 1]);
    EdtMC32.text:= FloatToStr(matrizC[3, 2]);
    EdtMC33.text:= FloatToStr(matrizC[3, 3]);
    EdtMC34.text:= FloatToStr(matrizC[3, 4]);
    EdtMC40.text:= FloatToStr(matrizC[4, 0]);
    EdtMC41.text:= FloatToStr(matrizC[4, 1]);
    EdtMC42.text:= FloatToStr(matrizC[4, 2]);
    EdtMC43.text:= FloatToStr(matrizC[4, 3]);
    EdtMC44.text:= FloatToStr(matrizC[4, 4]);
  End;
end;

procedure TFrmCalcMatriz.RdbMultClick(Sender: TObject);
begin
  LblOperacao.Caption := 'x';
end;

procedure TFrmCalcMatriz.RdbSomaClick(Sender: TObject);
begin
  LblOperacao.Caption := '+';
end;

procedure TFrmCalcMatriz.Rdb5Click(Sender: TObject);
begin
  FrmCalcMatriz.Width := 721;
  FrmCalcMatriz.Height := 298;
  FrmCalcMatriz.Top := Screen.Height div 2 - FrmCalcMatriz.Height div 2;
  FrmCalcMatriz.Left := Screen.Width div 2 - FrmCalcMatriz.Width div 2;

  ShpRetangulo.Left := FrmCalcMatriz.Width div 2 - ShpRetangulo.Width div 2;
  GpbTamanho.Left := ShpRetangulo.Left + 11;
  GpbOperacao.Left := ShpRetangulo.Left + 107;

  BtnCalcular.left := FrmCalcMatriz.Width div 2 - BtnCalcular.Width div 2;
  BtnCalcular.Top := FrmCalcMatriz.Height - BtnCalcular.Height - 41;

  GpbMatrizA.Width := 217;
  GpbMatrizA.Height := 129;
  GpbMatrizB.Width := GpbMatrizA.Width;
  GpbMatrizB.Height := GpbMatrizA.Height;
  GpbMatrizC.Width := GpbMatrizB.Width;
  GpbMatrizC.Height := GpbMatrizB.Height;

  GpbMatrizB.Left := GpbMatrizA.Left + GpbMatrizA.Width + 23;
  GpbMatrizC.Left := GpbMatrizB.Left + GpbMatrizB.Width + 23;

  LblOperacao.Top := GpbMatrizA.Top + GpbMatrizA.Height div 2 - LblOperacao.Height div 2;
  LblOperacao.Left := GpbMatrizA.Left + GpbMatrizA.Width + 7;
  LblResult.Top := GpbMatrizB.Top + GpbMatrizB.Height div 2 - LblResult.Height div 2;
  LblResult.Left := GpbMatrizB.Left + GpbMatrizA.Width + 7;

  EdtMA02.Visible := true;
  EdtMA03.Visible := true;
  EdtMA04.Visible := true;
  EdtMA12.Visible := true;
  EdtMA13.Visible := true;
  EdtMA14.Visible := true;
  EdtMA20.Visible := true;
  EdtMA21.Visible := true;
  EdtMA22.Visible := true;
  EdtMA23.Visible := true;
  EdtMA24.Visible := true;
  EdtMA30.Visible := true;
  EdtMA31.Visible := true;
  EdtMA32.Visible := true;
  EdtMA33.Visible := true;
  EdtMA34.Visible := true;
  EdtMA40.Visible := true;
  EdtMA41.Visible := true;
  EdtMA42.Visible := true;
  EdtMA43.Visible := true;
  EdtMA44.Visible := true;

  EdtMB02.Visible := true;
  EdtMB03.Visible := true;
  EdtMB04.Visible := true;
  EdtMB12.Visible := true;
  EdtMB13.Visible := true;
  EdtMB14.Visible := true;
  EdtMB20.Visible := true;
  EdtMB21.Visible := true;
  EdtMB22.Visible := true;
  EdtMB23.Visible := true;
  EdtMB24.Visible := true;
  EdtMB30.Visible := true;
  EdtMB31.Visible := true;
  EdtMB32.Visible := true;
  EdtMB33.Visible := true;
  EdtMB34.Visible := true;
  EdtMB40.Visible := true;
  EdtMB41.Visible := true;
  EdtMB42.Visible := true;
  EdtMB43.Visible := true;
  EdtMB44.Visible := true;

  EdtMC02.Visible := true;
  EdtMC03.Visible := true;
  EdtMC04.Visible := true;
  EdtMC12.Visible := true;
  EdtMC13.Visible := true;
  EdtMC14.Visible := true;
  EdtMC20.Visible := true;
  EdtMC21.Visible := true;
  EdtMC22.Visible := true;
  EdtMC23.Visible := true;
  EdtMC24.Visible := true;
  EdtMC30.Visible := true;
  EdtMC31.Visible := true;
  EdtMC32.Visible := true;
  EdtMC33.Visible := true;
  EdtMC34.Visible := true;
  EdtMC40.Visible := true;
  EdtMC41.Visible := true;
  EdtMC42.Visible := true;
  EdtMC43.Visible := true;
  EdtMC44.Visible := true;
end;

procedure TFrmCalcMatriz.Rdb3Click(Sender: TObject);
begin
  FrmCalcMatriz.Width := 481;
  FrmCalcMatriz.Height := 258;
  FrmCalcMatriz.Top := Screen.Height div 2 - FrmCalcMatriz.Height div 2;
  FrmCalcMatriz.Left := Screen.Width div 2 - FrmCalcMatriz.Width div 2;

  ShpRetangulo.Left := FrmCalcMatriz.Width div 2 - ShpRetangulo.Width div 2;
  GpbTamanho.Left := ShpRetangulo.Left + 11;
  GpbOperacao.Left := ShpRetangulo.Left + 107;

  BtnCalcular.left := FrmCalcMatriz.Width div 2 - BtnCalcular.Width div 2;
  BtnCalcular.Top := FrmCalcMatriz.Height - BtnCalcular.Height - 41;

  GpbMatrizA.Width := 137;
  GpbMatrizA.Height := 89;
  GpbMatrizB.Width := GpbMatrizA.Width;
  GpbMatrizB.Height := GpbMatrizA.Height;
  GpbMatrizC.Width := GpbMatrizB.Width;
  GpbMatrizC.Height := GpbMatrizB.Height;

  GpbMatrizB.Left := GpbMatrizA.Left + GpbMatrizA.Width + 23;
  GpbMatrizC.Left := GpbMatrizB.Left + GpbMatrizB.Width + 23;

  LblOperacao.Top := GpbMatrizA.Top + GpbMatrizA.Height div 2 - LblOperacao.Height div 2;
  LblOperacao.Left := GpbMatrizA.Left + GpbMatrizA.Width + 7;
  LblResult.Top := GpbMatrizB.Top + GpbMatrizB.Height div 2 - LblResult.Height div 2;
  LblResult.Left := GpbMatrizB.Left + GpbMatrizA.Width + 7;

  EdtMA03.Visible := false;
  EdtMA04.Visible := false;
  EdtMA13.Visible := false;
  EdtMA14.Visible := false;
  EdtMA23.Visible := false;
  EdtMA24.Visible := false;
  EdtMA30.Visible := false;
  EdtMA31.Visible := false;
  EdtMA32.Visible := false;
  EdtMA33.Visible := false;
  EdtMA34.Visible := false;
  EdtMA40.Visible := false;
  EdtMA41.Visible := false;
  EdtMA42.Visible := false;
  EdtMA43.Visible := false;
  EdtMA44.Visible := false;

  EdtMB03.Visible := false;
  EdtMB04.Visible := false;
  EdtMB13.Visible := false;
  EdtMB14.Visible := false;
  EdtMB23.Visible := false;
  EdtMB24.Visible := false;
  EdtMB30.Visible := false;
  EdtMB31.Visible := false;
  EdtMB32.Visible := false;
  EdtMB33.Visible := false;
  EdtMB34.Visible := false;
  EdtMB40.Visible := false;
  EdtMB41.Visible := false;
  EdtMB42.Visible := false;
  EdtMB43.Visible := false;
  EdtMB44.Visible := false;

  EdtMC03.Visible := false;
  EdtMC04.Visible := false;
  EdtMC13.Visible := false;
  EdtMC14.Visible := false;
  EdtMC23.Visible := false;
  EdtMC24.Visible := false;
  EdtMC30.Visible := false;
  EdtMC31.Visible := false;
  EdtMC32.Visible := false;
  EdtMC33.Visible := false;
  EdtMC34.Visible := false;
  EdtMC40.Visible := false;
  EdtMC41.Visible := false;
  EdtMC42.Visible := false;
  EdtMC43.Visible := false;
  EdtMC44.Visible := false;

  EdtMA02.Visible := true;
  EdtMA12.Visible := true;
  EdtMA20.Visible := true;
  EdtMA21.Visible := true;
  EdtMA22.Visible := true;

  EdtMB02.Visible := true;
  EdtMB12.Visible := true;
  EdtMB20.Visible := true;
  EdtMB21.Visible := true;
  EdtMB22.Visible := true;

  EdtMC02.Visible := true;
  EdtMC12.Visible := true;
  EdtMC20.Visible := true;
  EdtMC21.Visible := true;
  EdtMC22.Visible := true;
end;

procedure TFrmCalcMatriz.Rdb2Click(Sender: TObject);
begin
  FrmCalcMatriz.Width := 361;
  FrmCalcMatriz.Height := 234;
  FrmCalcMatriz.Top := Screen.Height div 2 - FrmCalcMatriz.Height div 2;
  FrmCalcMatriz.Left := Screen.Width div 2 - FrmCalcMatriz.Width div 2;

  ShpRetangulo.Left := FrmCalcMatriz.Width div 2 - ShpRetangulo.Width div 2;
  GpbTamanho.Left := ShpRetangulo.Left + 11;
  GpbOperacao.Left := ShpRetangulo.Left + 107;

  BtnCalcular.left := FrmCalcMatriz.Width div 2 - BtnCalcular.Width div 2;
  BtnCalcular.Top := FrmCalcMatriz.Height - BtnCalcular.Height - 41;

  GpbMatrizA.Width := 96;
  GpbMatrizA.Height := 65;
  GpbMatrizB.Width := GpbMatrizA.Width;
  GpbMatrizB.Height := GpbMatrizA.Height;
  GpbMatrizC.Width := GpbMatrizB.Width;
  GpbMatrizC.Height := GpbMatrizB.Height;

  GpbMatrizB.Left := GpbMatrizA.Left + GpbMatrizA.Width + 23;
  GpbMatrizC.Left := GpbMatrizB.Left + GpbMatrizB.Width + 23;

  LblOperacao.Top := GpbMatrizA.Top + GpbMatrizA.Height div 2 - LblOperacao.Height div 2;
  LblOperacao.Left := GpbMatrizA.Left + GpbMatrizA.Width + 7;
  LblResult.Top := GpbMatrizB.Top + GpbMatrizB.Height div 2 - LblResult.Height div 2;
  LblResult.Left := GpbMatrizB.Left + GpbMatrizA.Width + 7;

  EdtMA02.Visible := false;
  EdtMA03.Visible := false;
  EdtMA04.Visible := false;
  EdtMA12.Visible := false;
  EdtMA13.Visible := false;
  EdtMA14.Visible := false;
  EdtMA20.Visible := false;
  EdtMA21.Visible := false;
  EdtMA22.Visible := false;
  EdtMA23.Visible := false;
  EdtMA24.Visible := false;
  EdtMA30.Visible := false;
  EdtMA31.Visible := false;
  EdtMA32.Visible := false;
  EdtMA33.Visible := false;
  EdtMA34.Visible := false;
  EdtMA40.Visible := false;
  EdtMA41.Visible := false;
  EdtMA42.Visible := false;
  EdtMA43.Visible := false;
  EdtMA44.Visible := false;

  EdtMB02.Visible := false;
  EdtMB03.Visible := false;
  EdtMB04.Visible := false;
  EdtMB12.Visible := false;
  EdtMB13.Visible := false;
  EdtMB14.Visible := false;
  EdtMB20.Visible := false;
  EdtMB21.Visible := false;
  EdtMB22.Visible := false;
  EdtMB23.Visible := false;
  EdtMB24.Visible := false;
  EdtMB30.Visible := false;
  EdtMB31.Visible := false;
  EdtMB32.Visible := false;
  EdtMB33.Visible := false;
  EdtMB34.Visible := false;
  EdtMB40.Visible := false;
  EdtMB41.Visible := false;
  EdtMB42.Visible := false;
  EdtMB43.Visible := false;
  EdtMB44.Visible := false;

  EdtMC02.Visible := false;
  EdtMC03.Visible := false;
  EdtMC04.Visible := false;
  EdtMC12.Visible := false;
  EdtMC13.Visible := false;
  EdtMC14.Visible := false;
  EdtMC20.Visible := false;
  EdtMC21.Visible := false;
  EdtMC22.Visible := false;
  EdtMC23.Visible := false;
  EdtMC24.Visible := false;
  EdtMC30.Visible := false;
  EdtMC31.Visible := false;
  EdtMC32.Visible := false;
  EdtMC33.Visible := false;
  EdtMC34.Visible := false;
  EdtMC40.Visible := false;
  EdtMC41.Visible := false;
  EdtMC42.Visible := false;
  EdtMC43.Visible := false;
  EdtMC44.Visible := false;
end;

end.
