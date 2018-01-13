unit U_FrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmMain = class(TForm)
    BtnCalcular: TButton;
    LblNormal: TLabel;
    LblSSE: TLabel;
    procedure BtnCalcularClick(Sender: TObject);
    procedure PreencherVetores;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  Vet4 = record
    x, y, z, w: Single;
  end;

var
  FrmMain: TFrmMain;
  v1, v2: array[1..1000000] of Vet4;
  vtmp1, vtmp2: Vet4;
  Tick: Cardinal;

implementation

{$R *.dfm}

procedure TFrmMain.PreencherVetores;
var i: integer;
begin
  for i := 1 to Length(v1) do
  begin
       v1[i].x := random(1000);
       v1[i].y := random(1000);
       v1[i].z := random(1000);
       v1[i].w := random(1000);
       
       v2[i].x := random(1000);
       v2[i].y := random(1000);
       v2[i].z := random(1000);
       v2[i].w := random(1000);
  end;
end;

procedure TFrmMain.BtnCalcularClick(Sender: TObject);        
var i: integer;
begin
  PreencherVetores;
  Tick := GetTickCount;
  for i := 1 to Length(v1) do
  begin
    v1[i].x := v1[i].x * v2[i].x;
    v1[i].y := v1[i].y * v2[i].y;
    v1[i].z := v1[i].z * v2[i].z;
    v1[i].w := v1[i].w * v2[i].w;
  end;
  Tick := GetTickCount - Tick;
  LblNormal.Caption := 'Normal: ' + IntToStr(Tick) + 'ms';
  PreencherVetores;
  Tick := GetTickCount;
  for i := 1 to Length(v1) do
  begin
    asm
      movups xmm0, v1[i]
      movups xmm1, v2[i]
      mulps xmm0, xmm1
      movups v1[i], xmm0
    end;
  end;
  Tick := GetTickCount - Tick;
  LblSSE.Caption := 'SSE2: ' + IntToStr(Tick) + 'ms';
end;

end.
