unit U_Tela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFrmMain = class(TForm)
    TimRender: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TimRenderTimer(Sender: TObject);
    function Vizinhas(x, y: integer): byte;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  LinhaBuf = array[0..2559] of byte;

var
  SW, SH: Word;
  FrmMain: TFrmMain;
  Buffer: ^LinhaBuf;
  Geracao: Boolean;
  Ger0, Ger1: array[0..2559, 0..2559] of boolean;
  Tela: TBitmap;
  PosMouse: TPoint;

implementation

uses Math;

{$R *.dfm}

function TFrmMain.Vizinhas(x, y: integer): byte;
var vizinhas: byte;
begin
  vizinhas := 0;
  if not(Geracao) then
  begin
    if x - 1 >= 0 then
      if Ger0[x - 1, y] then
        Inc(vizinhas);
    if x + 1 < SW then
      if Ger0[x + 1, y] then
        Inc(vizinhas);
    if Y - 1 >= 0 then
      if Ger0[x, y - 1] then
        Inc(vizinhas);
    if Y + 1 < SH then
      if Ger0[x, y + 1] then
        Inc(vizinhas);

    if ((x - 1 >= 0) and (y - 1 >= 0)) then
      if Ger0[x - 1, y - 1] then
        Inc(vizinhas);
    if ((x + 1 < SW) and (y - 1 >= 0)) then
      if Ger0[x + 1, y - 1] then
        Inc(vizinhas);
    if ((x - 1 >= 0) and (y + 1 < SH)) then
      if Ger0[x - 1, y + 1] then
        Inc(vizinhas);
    if ((x + 1 < SW) and (y + 1 < SH)) then
      if Ger0[x + 1, y + 1] then
        Inc(vizinhas);
  end
  else
  begin
    if x - 1 >= 0 then
      if Ger1[x - 1, y] then
        Inc(vizinhas);
    if x + 1 < SW then
      if Ger1[x + 1, y] then
        Inc(vizinhas);
    if Y - 1 >= 0 then
      if Ger1[x, y - 1] then
        Inc(vizinhas);
    if Y + 1 < SH then
      if Ger1[x, y + 1] then
        Inc(vizinhas);

    if ((x - 1 >= 0) and (y - 1 >= 0)) then
      if Ger1[x - 1, y - 1] then
        Inc(vizinhas);
    if ((x + 1 < SW) and (y - 1 >= 0)) then
      if Ger1[x + 1, y - 1] then
        Inc(vizinhas);
    if ((x - 1 >= 0) and (y + 1 < SH)) then
      if Ger1[x - 1, y + 1] then
        Inc(vizinhas);
    if ((x + 1 < SW) and (y + 1 < SH)) then
      if Ger1[x + 1, y + 1] then
        Inc(vizinhas);
  end;
  Result := vizinhas;
end;

procedure TFrmMain.TimRenderTimer(Sender: TObject);
var x, y, i: integer;
begin
  for y := 0 to SH do
    for x := 0 to SW do
    begin
      i := Vizinhas(x, y);
      if not(Geracao) then
      begin
        if Ger0[x, y] then
        begin
          if ((i = 2) or (i = 3)) then
            Ger1[x, y] := true
          else
            Ger1[x, y] := false;
        end
        else
          if i = 3 then
            Ger1[x, y] := true
          else
            Ger1[x, y] := false;
      end
      else
      begin
        if Ger1[x, y] then
        begin
          if ((i = 2) or (i = 3)) then
            Ger0[x, y] := true
          else
            Ger0[x, y] := false;
        end
        else
          if i = 3 then
            Ger0[x, y] := true
          else
            Ger0[x, y] := false;
      end;
    end;
  if Geracao then
  begin
    for y := 0 to SH - 1 do
    begin
      Buffer := Tela.ScanLine[y];
      for x := 0 to SW - 1 do
      begin
        if Ger1[x, y] then
          Buffer[x] := $FF
        else
          Buffer[x] := $0;
      end;
    end;
  end
  else
  begin
    for y := 0 to SH - 1 do
    begin
      Buffer := Tela.ScanLine[y];
      for x := 0 to SW - 1 do
      begin
        if Ger0[x, y] then
          Buffer[x] := $FF
        else
          Buffer[x] := $0;
      end;
    end;
  end;
  Geracao := not(Geracao);
  if GetKeyState(82) < 0 then
  begin
    Geracao := false;
    for y := 0 to SH - 1 do
      for x := 0 to SW - 1 do
        Ger0[x, y] := Boolean(RandomRange(0, 2));
  end;
  if GetKeyState(76) < 0 then
  begin
    Geracao := false;
    for y := 0 to SH - 1 do
      for x := 0 to SW - 1 do
        Ger0[x, y] := false;
  end;
  if GetKeyState(VK_LBUTTON) < 0 then
  begin
    GetCursorPos(PosMouse);
    PosMouse.X := PosMouse.X div 2;
    PosMouse.Y := PosMouse.Y div 2;
    if Geracao then
    begin
      for y := PosMouse.Y - 10 to PosMouse.Y + 10 do
        for x := PosMouse.X - 10 to PosMouse.X + 10 do
          if ((x >= 0) and (x < SW) and (y >= 0) and (y < SH)) then
            Ger1[x, y] := Boolean(RandomRange(0, 2));
    end
    else
    begin
      for y := PosMouse.Y - 10 to PosMouse.Y + 10 do
        for x := PosMouse.X - 10 to PosMouse.X + 10 do
          if ((x >= 0) and (x < SW) and (y >= 0) and (y < SH)) then
            Ger0[x, y] := Boolean(RandomRange(0, 2));
    end;
  end;
  Canvas.StretchDraw(Rect(0, 0, Width, Height), Tela);
end;       

procedure TFrmMain.FormCreate(Sender: TObject);
var x, y: integer;
begin
  SW := Screen.Width div 2;
  SH := Screen.Height div 2;
  Tela := TBitmap.Create;
  Tela.PixelFormat := pf8bit;
  Tela.Width := SW;
  Tela.Height := SH;
end;

procedure TFrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var x, y: integer;
begin
  if Key = 27 then
    Application.Terminate;
end;

end.
