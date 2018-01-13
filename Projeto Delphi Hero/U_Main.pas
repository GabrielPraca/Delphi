{Projeto Delphi Hero por Yuri_Sim
 Início 10/08/2012}
unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFrmMain = class(TForm)
    TimRender: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TimRenderTimer(Sender: TObject);
    function Deslocar(Dist, Ang: real; indice: char): real;
    procedure CarregaRecurso(Nome, caminho: string; Transparente: boolean);
    procedure DesenhaRecurso(Nome: string; x, y: integer); overload;
    procedure TextOutBorda(x, y, TamBorda: integer; Texto: string; corBorda: TColor);
    procedure BordaGradienteMenu;
    procedure AplicarFade(nivel: real);
  private
    { Private declarations }
  public
    procedure DesenhaRecurso(Nome: string; x, y, tamX, tamY: integer); overload;
  end;        
  ImgRecurso = record
    descri: string[128];
    img: TBitmap;
  end;
  Pixel32 = record
    B, G, R, A: byte;
  end;
  BufferLinha = array[0..5000] of Pixel32;

var
  FrmMain: TFrmMain;
  TBuffer: TBitmap;
  BufferPixels: ^BufferLinha;
  Avanco, AuxR1, AuxR2: real;
  TickRef, Tick, TickDif: Cardinal;
  x, y, TxtX, TxtY, AuxI1, AuxI2, AuxI3, AuxI4, i: integer;
  JSituac, JVeloc, CarrCont: Word; //JSituac: 0-"Introdução", 1-"Menu Principal";
  ImgRec: array of ^ImgRecurso;
  StrTmp: string;

implementation

{$R *.dfm}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  ShowCursor(false);
  TBuffer := TBitmap.Create;
  AddFontResource('Data\Fontes\Nightmare Hero.ttf');
  with TBuffer do
  begin
    Width := Screen.Width;
    Height := Screen.Height;
    PixelFormat := pf32bit;
  end;
  CarregaRecurso('AltoFalante', 'Data\Canvas\Alto Falante.bmp', true);
  CarregaRecurso('Fita', 'Data\Canvas\Fita.bmp', true);
  JVeloc := 1000;
  CarrCont := 0;
  Tick := GetTickCount;     
  TickRef := Tick;
end;

function TFrmMain.Deslocar(Dist, Ang: real; indice: char): real;
const rad = 3.14159265 / 180;
begin
  if indice = 'X'  then
    Result:= Dist * -Sin(Ang * rad)
  else
    Result:= Dist * Cos(Ang * rad);
end;

procedure TFrmMain.CarregaRecurso(Nome, caminho: string; Transparente: boolean);
var i: integer;
begin
  if not(FileExists(caminho)) then
    exit;
  i := Length(ImgRec);
  SetLength(ImgRec, i + 1);
  New(ImgRec[i]);
  ImgRec[i]^.descri := Nome;
  ImgRec[i]^.img := TBitmap.Create();
  ImgRec[i]^.img.LoadFromFile(caminho);
  if Transparente then
  begin
    ImgRec[i]^.img.TransparentColor := $FF00FF;
    ImgRec[i]^.img.Transparent := true;
  end;
end;

procedure TFrmMain.DesenhaRecurso(Nome: string; x, y: integer);
var i: integer;
begin
  for i := 0 to High(ImgRec) do
    if ImgRec[i]^.descri = Nome then
    begin
      TBuffer.Canvas.Draw(x, y, ImgRec[i]^.img);
      Break;
    end;
end;

procedure TFrmMain.DesenhaRecurso(Nome: string; x, y, tamX, TamY: integer);
var i: integer;
begin      
  for i := 0 to High(ImgRec) do
    if ImgRec[i] <> nil then
      if ImgRec[i]^.descri = Nome then
      begin
        TBuffer.Canvas.StretchDraw(Rect(x, y, x + tamX, y + tamY), ImgRec[i]^.img);
        Break;
      end;
end;

procedure TFrmMain.TextOutBorda(x, y, TamBorda: integer; Texto: string; corBorda: TColor);
var cor: TColor;
begin
  with TBuffer.Canvas do
  begin
    if TamBorda > 0 then
    begin
      cor := Font.Color;
      Font.Color := corBorda;
      TextOut(x + TamBorda, y + TamBorda, Texto);
      TextOut(x - TamBorda, y - TamBorda, Texto);
      TextOut(x + TamBorda, y - TamBorda, Texto);
      TextOut(x - TamBorda, y + TamBorda, Texto);
      Font.Color := cor;
    end;
    TextOut(x, y, Texto);
  end;
end;

procedure TFrmMain.BordaGradienteMenu;
begin
  with TBuffer.Canvas do
  begin
    DesenhaRecurso('BMenuSE', 0, 0);
    DesenhaRecurso('BMenuSD', Width - 35, 0);
    DesenhaRecurso('BMenuIE', 0, Height - 35);
    DesenhaRecurso('BMenuID', Width - 35, Height - 35);
    DesenhaRecurso('BMenuHS', 35, 0, Width - 70, 35);
    DesenhaRecurso('BMenuHI', 35, Height - 35, Width - 70, 35);
    DesenhaRecurso('BMenuVE', 0, 35, 35, Height - 70);
    DesenhaRecurso('BMenuVD', Width - 35, 35, 35, Height - 70);
  end;
end;     

procedure TFrmMain.AplicarFade(nivel: real);
var x, y: integer;
begin
  for y := 0 to height - 1 do
  begin
    BufferPixels := TBuffer.ScanLine[y];
    for x := 0 to width - 1 do
    begin
      BufferPixels[x].R := Round(BufferPixels[x].R * nivel);
      BufferPixels[x].G := Round(BufferPixels[x].G * nivel);
      BufferPixels[x].B := Round(BufferPixels[x].B * nivel);
    end;
  end;
end;

procedure TFrmMain.TimRenderTimer(Sender: TObject);
begin
  Avanco := (GetTickCount - Tick) / 1000;
  with TBuffer.Canvas do
  begin
    case JSituac of
      0: begin //Introdução
        TickDif := GetTickCount - TickRef;
        if TickDif <= 10000 then
        begin   
          Brush.Style := bsSolid;
          Brush.Color := clBlack;
          FillRect(Rect(0, 0, Width, Height));
          AuxI1 := Width div 2;
          AuxI2 := Height div 2;
          AuxI3 := Abs(Round(60 - 120 * ((TickDif mod 250) / 250)));
          DesenhaRecurso('AltoFalante', AuxI1 - 115 - AuxI3 div 2, AuxI2 - 115 - AuxI3 div 2, 230 + AuxI3, 229 + AuxI3);
          Brush.Style := bsClear;
          for i := 0 to 120 do
          begin
            if ((TickDif >= i * 750) and (TickDif <= i * 750 + 1500)) then
            begin
              AuxR1 := (TickDif - i * 750) / 1500;
              AuxI3 := Round($FF - (AuxR1 * $FF));
              Pen.Color := AuxI3 + AuxI3 shl 8 + AuxI3 shl 16;
              Pen.Width := Round(AuxR1 * 50);
              Chord(Round(AuxI1 - 500 * AuxR1), Round(AuxI2 - 500 * AuxR1),
                    Round(AuxI1 + 500 * AuxR1), Round(AuxI2 + 500 * AuxR1),
                    0, 0, 0, 0);
            end;
          end;
          if TickDif >= 2500 then
          begin
            Font.Name := 'Nightmare Hero';
            Font.Size := 150;
            Font.Color := clWhite;
            StrTmp := 'Delphi Hero';
            TxtX := TextWidth(StrTmp);
            TxtY := TextHeight(StrTmp);
            TextOutBorda(AuxI1 - TxtX div 2, AuxI2 - TxtY div 2, 2, StrTmp, clBlack);
          end;
          if TickDif >= 7000 then
          begin
            Font.Name := 'Arial Black';
            Font.Size := 10;
            Font.Color := clWhite;
            StrTmp := 'Por Yuri_Sim';
            TxtX := TextWidth(StrTmp);
            TextOutBorda(AuxI1 - TxtX div 2, AuxI2 + TxtY div 4, 1, StrTmp, clBlack);
          end;
          if ((TickDif >= 9000) and (TickDif <= 10000)) then
            AplicarFade(1 - (TickDif - 9000) / 1000);
        end
        else
        begin  
          Brush.Style := bsSolid;
          Brush.Color := $d4e7fa;
          FillRect(Rect(0, 0, Width, Height));
          Brush.Style := bsClear;
          StrTmp := 'Carregando';
          Font.Size := 26;
          TxtX := TextWidth(StrTmp);
          TxtY := TextHeight(StrTmp);
          TickDif := GetTickCount mod 1000;
          if TickDif < 250 then
            StrTmp := 'Carregando'
          else if TickDif < 500 then
            StrTmp := 'Carregando.'
          else if TickDif < 750 then
            StrTmp := 'Carregando..'
          else if TickDif < 1000 then
            StrTmp := 'Carregando...';
          Font.Color := clBlack;
          TextOut(Width div 2 - TxtX div 2, Height div 4 * 3 - TxtY div 2, StrTmp);
          DesenhaRecurso('Fita', Width div 2 - 114, Height div 2 - 121);
          BordaGradienteMenu;
          case CarrCont of
           0: CarregaRecurso('BMenuHI', 'Data\Canvas\BordaMenu\BMenuHI.bmp', false);
           1: CarregaRecurso('BMenuHS', 'Data\Canvas\BordaMenu\BMenuHS.bmp', false);
           2: CarregaRecurso('BMenuID', 'Data\Canvas\BordaMenu\BMenuID.bmp', false);
           3: CarregaRecurso('BMenuIE', 'Data\Canvas\BordaMenu\BMenuIE.bmp', false);
           4: CarregaRecurso('BMenuSD', 'Data\Canvas\BordaMenu\BMenuSD.bmp', false);
           5: CarregaRecurso('BMenuSE', 'Data\Canvas\BordaMenu\BMenuSE.bmp', false);
           6: CarregaRecurso('BMenuVD', 'Data\Canvas\BordaMenu\BMenuVD.bmp', false);
           7: CarregaRecurso('BMenuVE', 'Data\Canvas\BordaMenu\BMenuVE.bmp', false);
           8: CarregaRecurso('MenuP', 'Data\Canvas\MenuP.bmp', false);
           else begin
             JSituac := 1;
             TickRef := GetTickCount;
           end;
          end;
          Inc(CarrCont);
        end;
      end;
      1: begin //Menu Principal
          TickDif := GetTickCount - TickRef;
          Brush.Style := bsSolid;
          Brush.Color := $d4e7fa;
          FillRect(Rect(0, 0, Width, Height));
          AuxI1 := (width - 70) div 40;
          AuxI2 := height div 80;
          Brush.Color := $c5d7e8;
          for y := 0 to AuxI2 do
            for x := 0 to AuxI1 - 3 do
            begin
              AuxI3 := x * 45;
              AuxI4 := y * 45;
              FillRect(Rect(35 + AuxI3 - Round(TickDif div 2) mod 45, AuxI4 * 2, AuxI3 + 75 - Round(TickDif div 2) mod 45, AuxI4 * 2 + 40));
              FillRect(Rect(35 + AuxI3 + Round(TickDif div 2) mod 45, AuxI4 * 2 + 45, AuxI3 + 75 + Round(TickDif div 2) mod 45, AuxI4 * 2 + 85));
            end;
          Brush.Style := bsClear;
          BordaGradienteMenu;
          if (TickDif <= 1000) then
            AplicarFade(TickDif / 1000);
          AplicarFade(Cursor.Position / Height);
      end;
    end;
  end;
  Canvas.Draw(0, 0, TBuffer);
end;

end.
