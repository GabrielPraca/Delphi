{Desenvolvido por André Yuri Pereira Simeão(Yuri_Sim)
 Concluído em 23/07/2012}
unit U_Tela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MPlayer, StdCtrls;

type
  TFrmTela = class(TForm)
    AudioCanal1: TMediaPlayer;
    TimRender: TTimer;
    procedure TimRenderTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);    
    procedure lerArquivoDyn(ponto: cardinal; tipo: byte; var destino);
    procedure gravarArquivoDyn(ponto: cardinal; tipo: byte; var conteudo);
    function Deslocar(Dist, Ang: real; indice: char): real;
    procedure CarregaRecurso(Nome, caminho: string; Transparente: boolean);
    procedure LiberaRecursos;
    procedure DesenhaRecurso(Nome: string; x, y: integer); overload;
    procedure DesenhaAndares;
    function CalculaQueda(Avanco: real): boolean;
    function HaPrediosPorPerto(X, Y, tipo: byte): boolean;
    procedure TextOutBorda(Texto: string; x, y, TamBorda: integer; Canvas: TCanvas; corBorda: TColor);
    procedure AudioCanal1Notify(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    procedure DesenhaRecurso(Nome: string; x, y, tamX, tamY: integer); overload;
  end;    
  Andar = record
    x, y, veloQueda: integer;
    tipo: byte; //0 - Azul | 1 - Vermelho | 2 - Verde | 3 - Amarelo / +10 Telhado
    caindo, direcQueda: boolean;
  end;
  Guindaste = record
    altura: integer;
    angBalanco: real;
    direc: boolean;
    anexo: ^Andar;
  end;
  ImgRecurso = record
    descri: string[128];
    img: TBitmap;
  end;
  Lote = record
    tipo: byte;
    moradores: Word;
  end;
  Pixel32 = record
    B, G, R, A: byte;
  end;
  BufLinha = array[0..2559] of Pixel32;

var
  BufferPixels: ^BufLinha;
  ImgBuffer: TBitmap;
  FrmTela: TFrmTela;
  MenuAtivado, MTitulo, MJogo, SomM, JComecou, PConcluido, PVistaSubindo, FPS: boolean;
  ImgRec: array of ^ImgRecurso;
  Andares: array[0..$FF] of ^Andar;
  MenuOpcSelec, MJogoSelec, ConstruAndar, Chances: byte;
  JSituac: string[64];
  Trapaca: array[0..6] of Char;
  StrPontMens: string[6];
  PosPontMens, bytetmp: byte;
  Guind, GuindP: Guindaste;
  Tick, TickPontMens, TickFade, TickUltimoFPS: Cardinal;
  tituloTam, PVistaOffset, UsoAndares, PnoPredio, populacao: integer;
  Lotes: array[0..3, 0..3] of Lote;
  LoteEspera: Lote;
  PosLoteEspera: TPoint;
  SaveArq: file of byte;
  MFPS: array[0..10] of Word;
  Fade: real;
  JogoVeloc, MediaFPS: word;

implementation

uses Math;

{$R *.dfm}

procedure TFrmTela.lerArquivoDyn(ponto: cardinal; tipo: byte; var destino);
begin
	seek(SaveArq, ponto);
	case tipo of
		0://byte
          blockRead(SaveArq, destino, sizeof(byte));
		1://word
          blockRead(SaveArq, destino, sizeof(word));
     end;
end;

procedure TFrmTela.gravarArquivoDyn(ponto: cardinal; tipo: byte; var conteudo);
begin
	seek(SaveArq, ponto);
	case tipo of
		0://byte
			blockWrite(SaveArq, conteudo, sizeof(byte));
		1://word
			blockWrite(SaveArq, conteudo, sizeof(word));
     end;
end;

function TFrmTela.Deslocar(Dist, Ang: real; indice: char): real;
const rad = 3.14159265 / 180;
begin
  if indice = 'X'  then
    Result:= Dist * -Sin(Ang * rad)
  else
    Result:= Dist * Cos(Ang * rad);
end;

procedure TFrmTela.CarregaRecurso(Nome, caminho: string; Transparente: boolean);
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

procedure TFrmTela.LiberaRecursos;//Criei mas acabei não utilizando
var i: integer;
begin
  for i := 0 to High(ImgRec) do
    if ImgRec[i] <> nil then
    begin
      ImgRec[i]^.img.Free;
      Dispose(ImgRec[i]);
    end;
  SetLength(ImgRec, 0);
end;

procedure TFrmTela.DesenhaRecurso(Nome: string; x, y: integer);
var i: integer;
begin
  for i := 0 to High(ImgRec) do
    if ImgRec[i]^.descri = Nome then
    begin
      ImgBuffer.Canvas.Draw(x, y, ImgRec[i]^.img);
      Break;
    end;
end;

procedure TFrmTela.DesenhaRecurso(Nome: string; x, y, tamX, TamY: integer);
var i: integer;
begin      
  for i := 0 to High(ImgRec) do
    if ImgRec[i] <> nil then
      if ImgRec[i]^.descri = Nome then
      begin
        ImgBuffer.Canvas.StretchDraw(Rect(x, y, x + tamX, y + tamY), ImgRec[i]^.img);
        Break;
      end;
end;

procedure TFrmTela.DesenhaAndares;
var i: integer;
    tipoRec: string[40];
begin
  for i := 1 to High(Andares) do
    if Andares[i] <> nil then
    begin
      if Andares[i]^.tipo = 0 then
        tipoRec := 'AAzul'
      else if Andares[i]^.tipo = 1 then
        tipoRec := 'AVermelho'
      else if Andares[i]^.tipo = 2 then
        tipoRec := 'AVerde'
      else if Andares[i]^.tipo = 3 then
      begin
        if GetTickCount mod 150 < 75 then
          tipoRec := 'AAmarelo0'
        else
          tipoRec := 'AAmarelo1';
      end
      else if Andares[i]^.tipo = 10 then
        tipoRec := 'TAzul'
      else if Andares[i]^.tipo = 11 then
      begin
        if GetTickCount mod 500 < 250 then
          tipoRec := 'TVermelho0'
        else        
          tipoRec := 'TVermelho1';
      end
      else if Andares[i]^.tipo = 12 then
        tipoRec := 'TVerde'
      else if Andares[i]^.tipo = 13 then
      begin
        if GetTickCount mod 2000 < 1000 then
          tipoRec := 'TAmarelo0'
        else
          tipoRec := 'TAmarelo1';
      end;
      DesenhaRecurso(tipoRec, Andares[i]^.x, Andares[i]^.y + PVistaOffset);
    end;
end;

procedure TFrmTela.TextOutBorda(Texto: string; x, y, TamBorda: integer; Canvas: TCanvas; corBorda: TColor);
var cor: TColor;
begin
  with Canvas do
  begin
    cor := Font.Color;
    if TamBorda > 0 then
    begin
      Font.Color := corBorda;
      TextOut(x + TamBorda, y + TamBorda, Texto);
      TextOut(x - TamBorda, y - TamBorda, Texto);
      TextOut(x + TamBorda, y - TamBorda, Texto);
      TextOut(x - TamBorda, y + TamBorda, Texto);
    end;
    Font.Color := cor;
    TextOut(x, y, Texto);
  end;
end;      

function TFrmTela.CalculaQueda(Avanco: real): boolean;
var i: integer;
    OffsetX, OffsetY: real;
    caindo: boolean;
begin
  caindo := false;
  for i := 1 to High(Andares) do
  begin
    if Andares[i] <> nil then
      if Andares[i]^.caindo then
      begin
        caindo := true;
        Andares[i]^.veloQueda := Andares[i]^.veloQueda + Round(2000 * Avanco);
        if Andares[i]^.direcQueda then
        begin
          OffsetX := Deslocar(500 * Avanco, 35, 'X');
          OffsetY := Deslocar(Andares[i]^.veloQueda * Avanco, 35, 'Y');
        end
        else
        begin
          OffsetX := Deslocar(500 * Avanco, -35, 'X');
          OffsetY := Deslocar(Andares[i]^.veloQueda * Avanco, -35, 'Y');
        end;
        Andares[i]^.x := Andares[i]^.x + Round(OffsetX);
        Andares[i]^.y := Andares[i]^.y + Round(OffsetY);
        if UsoAndares = 0 then
        begin
          if ((Andares[i]^.x + 64 >= Width div 2 - 256) and (Andares[i]^.x + 64 <= Width div 2 + 256)) then
            if (Andares[i]^.y + 128 > Height - 10) then
            begin
              Andares[i]^.y := Height - 138;
              Andares[i]^.caindo := false;
              PnoPredio := PnoPredio + 15;
              TickPontMens := GetTickCount;
              StrPontMens := '+15';
              PosPontMens := i;
              Inc(UsoAndares);
            end;
        end
        else if ((Andares[i]^.x + 128 >= Andares[UsoAndares]^.x + 64) and (Andares[i]^.x <= Andares[UsoAndares]^.x + 64)) then
          if (Andares[i]^.y + 128 > Andares[UsoAndares]^.y) and (Andares[i]^.y + 128 < Andares[UsoAndares]^.y + Abs(Round(OffsetY)) + 1) then
          begin
            Andares[i]^.y := Andares[UsoAndares]^.y - 128;
            Andares[i]^.caindo := false;
            if Andares[i]^.tipo >= 10 then
            begin
              PnoPredio := PnoPredio + (15 - Round(15 * Abs(Andares[UsoAndares]^.x - Andares[i]^.x) / 64)) * 2;
              StrPontMens := '+' + IntToStr(15 - Round(15 * Abs(Andares[UsoAndares]^.x - Andares[i]^.x) / 64)) + ' X2';
            end
            else
            begin
              PnoPredio := PnoPredio + 15 - Round(15 * Abs(Andares[UsoAndares]^.x - Andares[i]^.x) / 64);
              StrPontMens := '+' + IntToStr(15 - Round(15 * Abs(Andares[UsoAndares]^.x - Andares[i]^.x) / 64));
            end;
            TickPontMens := GetTickCount;
            PosPontMens := i;
            Inc(UsoAndares);
          end;  
        if Andares[i]^.y > Height - PVistaOffset then
        begin
          Dispose(Andares[i]);
          Andares[i] := nil;
          Dec(Chances);
          if Chances = 0 then
            PConcluido := true;
        end
      end;
  end;
  Result := caindo;
end;   

function TFrmTela.HaPrediosPorPerto(X, Y, tipo: byte): boolean;
begin
  Result := false;
  if Lotes[X, Y].tipo = tipo then
    Result := true
  else if ((Lotes[X - 1, Y].tipo = tipo) and (X - 1 >= 0)) then
    Result := true
  else if ((Lotes[X + 1, Y].tipo = tipo) and (X + 1 < 4)) then
    Result := true
  else if ((Lotes[X, Y - 1].tipo = tipo) and (Y - 1 >= 0)) then
    Result := true
  else if ((Lotes[X, Y + 1].tipo = tipo) and (Y + 1 < 4)) then
    Result := true;
end;

procedure TFrmTela.TimRenderTimer(Sender: TObject);
var TxtX, TxtY, x, y, tempCor: integer;
    offsetX, offsetY: real;
    strTemp: string;
    Avanco: real;
begin
  Avanco := (GetTickCount - Tick) / JogoVeloc;//calcula a porcentagem do tempo decorrido para que os movimentos sejam constantes tanto em um computador rápido quando num lento.
  Tick := GetTickCount;
  with ImgBuffer.Canvas do
  begin
    if MJogo then
    begin
      if JSituac = 'Tutorial' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := $FFAA00;
        FillRect(Rect(0, 0, Width, Height)); 
        Brush.Style := bsClear;
        Font.Size := 36;
        Font.Color := clWhite;
        strTemp := 'Bem Vindo';
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, 0, 1, ImgBuffer.Canvas, clBlack);

        Font.Size := 12;
        strTemp := 'Blocos é um jogo de construção de prédios. Uma cidade terá alguns pequenos lotes de terra, e';
        TxtX := TextWidth(strTemp) div 2;
        TxtY := TextHeight(strTemp);
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TxtY div 2 - TxtY * 2, 1, ImgBuffer.Canvas, clBlack);
        strTemp := 'terão de ser preenchidos com prédios que serão construídos por você. Preenchendo os lotes você irá';
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TxtY div 2 - TxtY, 1, ImgBuffer.Canvas, clBlack);
        strTemp := 'aumentar o número de habitantes nesta cidade e isto é o que importa aqui. Inicialmente você só';
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TxtY div 2, 1, ImgBuffer.Canvas, clBlack);
        strTemp := 'poderá contruir prédios azuis, para desbloquear o edifício vermelho consiga 300 ou mais';
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 + TxtY div 2, 1, ImgBuffer.Canvas, clBlack);
        strTemp := 'habitantes, para o verde consiga 1000 ou mais, e para o amarelo consiga 3500 ou mais habitantes.';
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 + TxtY div 2 + TxtY, 1, ImgBuffer.Canvas, clBlack);

        Font.Size := 10;
        Font.Color := $2020FF;
        strTemp := 'Pressione Enter para continuar';
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 4 * 3, 1, ImgBuffer.Canvas, clBlack);
      end
      else if JSituac = 'Cidade' then
      begin
        Brush.Style := bsSolid;
        Brush.Color := $FFAA00;
        FillRect(Rect(0, 0, Width, Height));
        Brush.Color := $606060;
        FillRect(Rect(Width div 2 - 256, Height div 2 - 256, Width div 2 + 256, Height div 2 + 256));
        Brush.Color := $808080;
        FillRect(Rect(Width div 2 - 262, Height div 2 - 262, Width div 2 + 250, Height div 2 + 250));
        Brush.Color := $AAAAAA;
        for x := 0 to 3 do
          for y := 0 to 3 do
            FillRect(Rect(Width div 2 - 262 + (x + 1) * 15 + x * 109,
                          Height div 2 - 262 + (y + 1) * 15 + y * 109,
                          Width div 2 - 262 + (x + 1) * 15 + x * 109 + 109,
                          Height div 2 - 262 + (y + 1) * 15 + y * 109 + 109));
        Pen.Width := 5;         
        x := Abs($FF - Round(GetTickCount * 0.3) mod 511);
        case MJogoSelec of
          0: Pen.Color := x shl 16 + Round(x * 0.5) shl 8;
          1: Pen.Color := x;
          2: Pen.Color := x shl 8;
          3: Pen.Color := x shl 8 + x;
          else Pen.Color := $AAAAAA;
        end;
        populacao := 0;
        for x := 0 to 3 do
          for y := 0 to 3 do
          begin
            tempCor := Pen.Color;
            if LoteEspera.tipo > 3 then
            begin
              if MJogoSelec <> 0 then
                if (not(HaPrediosPorPerto(x, y, MJogoSelec - 1)) and
                       (Lotes[x, y].tipo <> MJogoSelec)) then
                  Pen.Color := $AAAAAA;
            end
            else
              if LoteEspera.tipo <> 0 then
                if (not(HaPrediosPorPerto(x, y, LoteEspera.tipo - 1)) and
                       (Lotes[x, y].tipo <> LoteEspera.tipo)) then
                  Pen.Color := $AAAAAA;
            Rectangle(Rect(Width div 2 - 262 + (x + 1) * 15 + x * 109,
                          Height div 2 - 262 + (y + 1) * 15 + y * 109,
                          Width div 2 - 262 + (x + 1) * 15 + x * 109 + 109,
                          Height div 2 - 262 + (y + 1) * 15 + y * 109 + 109));
            Pen.Color := tempCor;
            populacao := populacao + Lotes[x, y].moradores;
            strTemp := '';
            case Lotes[x, y].tipo of
              0: strTemp := 'MPAzul';
              1: strTemp := 'MPVermelho';
              2: strTemp := 'MPVerde';
              3: strTemp := 'MPAmarelo';
            end;
            if strTemp <> '' then
              DesenhaRecurso(strTemp,
                             Width div 2 - 262 + (x + 1) * 15 + x * 109,
                             Height div 2 - 274 + (y + 1) * 15 + y * 109);
          end;
        strTemp := '';
        case LoteEspera.tipo of
          0: strTemp := 'MPAzul';
          1: strTemp := 'MPVermelho';
          2: strTemp := 'MPVerde';
          3: strTemp := 'MPAmarelo';
        end;
        if strTemp <> '' then
          if PosLoteEspera.X <> 4 then
          begin
            offsetX := 5 - Abs(Round(5 - 10 * (GetTickCount mod 1001 / 1000)));
            DesenhaRecurso(strTemp,
                         Width div 2 - 262 + (PosLoteEspera.X + 1) * 15 + PosLoteEspera.X * 109 + Round(offsetX),
                         Height div 2 - 274 + (PosLoteEspera.Y + 1) * 15 + PosLoteEspera.Y * 109 - Round(offsetX));
            Brush.Style := bsClear;
            Font.Size := 18;
            if (LoteEspera.moradores - Lotes[PosLoteEspera.X, PosLoteEspera.Y].moradores) < 0 then
            Begin
              Font.Color := clRed;
              strTemp := IntToStr(LoteEspera.moradores - Lotes[PosLoteEspera.X, PosLoteEspera.Y].moradores);
            end
            else
            Begin
              Font.Color := clWhite;
              strTemp := '+' + IntToStr(LoteEspera.moradores - Lotes[PosLoteEspera.X, PosLoteEspera.Y].moradores);
            end;
            TxtX := TextWidth(strTemp) div 2;
            TxtY := TextHeight(strTemp) div 2;
            TextOutBorda(strTemp,
                         Width div 2 - 262 + (PosLoteEspera.X + 1) * 15 + PosLoteEspera.X * 109 + Round(offsetX) + 60 - TxtX,
                         Height div 2 - 274 + (PosLoteEspera.Y + 1) * 15 + PosLoteEspera.Y * 109 - Round(offsetX) + 60 - TxtY, 1, ImgBuffer.Canvas, clBlack);
          end
          else
            DesenhaRecurso(strTemp, Width - Width div 8 - 64, Height div 2 - 64);
        Brush.Style := bsSolid;
        x := $FF - Abs($FF - Round(GetTickCount * 0.7) mod 511);
        if LoteEspera.tipo > 3 then
        begin
          if MJogoSelec = 0 then
          begin
            Brush.Color := $FFFFFF - (x + (Round(x * 0.5) shl 8));
            FillRect(Rect(Width div 8 - 64, Height div 2 - 256, Width div 8 + 64, Height div 2 - 128));
          end
          else if MJogoSelec = 1 then
          begin
            Brush.Color := $FFFFFF - (x shl 16 + x shl 8);
            FillRect(Rect(Width div 8 - 64, Height div 2 - 128, Width div 8 + 64, Height div 2));
          end
          else if MJogoSelec = 2 then
          begin
            Brush.Color := $FFFFFF - (x + x shl 16);
            FillRect(Rect(Width div 8 - 64, Height div 2, Width div 8 + 64, Height div 2 + 128));
          end
          else if MJogoSelec = 3 then
          begin
            Brush.Color := $FFFFFF - x shl 16;
            FillRect(Rect(Width div 8 - 64, Height div 2 + 128, Width div 8 + 64, Height div 2 + 256));
          end;
          DesenhaRecurso('PAzul', Width div 8 - 32, Height div 2 - 256); 
          if populacao >= 300 then
            DesenhaRecurso('PVermelho', Width div 8 - 32, Height div 2 - 128);
          if populacao >= 1000 then
            DesenhaRecurso('PVerde', Width div 8 - 32, Height div 2);
          if populacao >= 3500 then
            DesenhaRecurso('PAmarelo', Width div 8 - 32, Height div 2 + 128);
        end;
        DesenhaRecurso('PopIco', Width - 180, 3);
        DesenhaRecurso('Marreta', Width - Width div 8 - 64, Height div 2 - 62);
        Brush.Style := bsClear;
        Font.Size := 26;
        Font.Color := clWhite;
        strTemp := IntToStr(populacao);//População
        TextOutBorda(strTemp, Width - 140, -4, 1, ImgBuffer.Canvas, clBlack);
        Font.Size := 36;
        strTemp := 'Vista da cidade';
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, 0, 1, ImgBuffer.Canvas, clBlack);
      end
      else if JSituac = 'Construindo' then
      begin
        if not(PConcluido) then
        begin
          if PVistaOffset > (UsoAndares - 2) * 128 then
          begin
            PVistaOffset := PVistaOffset - Round(300 * Avanco);
            if PVistaOffset < (UsoAndares - 2) * 128 then
              PVistaOffset := (UsoAndares - 2) * 128;
          end
          else if PVistaOffset < (UsoAndares - 1) * 128 then
          begin
            PVistaOffset := PVistaOffset + Round(300 * Avanco);
            if PVistaOffset > (UsoAndares - 2) * 128 then
              PVistaOffset := (UsoAndares - 2) * 128
          end;
        end
        else
        begin
          if PVistaSubindo then
            PVistaOffset := PVistaOffset + Round(300 * Avanco)
          else
            PVistaOffset := PVistaOffset - Round(300 * Avanco);
          if PVistaOffset > (UsoAndares - 4) * 128 then
            PVistaSubindo := false
          else if PVistaOffset < 0 then
            PVistaSubindo := true;
        end;
        if PVistaOffset < 0 then
          PVistaOffset := 0;
        Brush.Style := bsSolid;
        //PVistaOffset := Height * 8 - (Mouse.CursorPos.Y + 1) * 8;//Controla o ponto de vista pelo mouse, usei para testar as estrelas
        x := Round(PVistaOffset * 0.1);
        if x > $FF then
          x := $FF;
        Brush.Color := $FFEEAA - Round($EE * (x / $FF)) shl 16 - Round($E9 * (x / $FF)) shl 8 - Round($AA * (x / $FF));
        FillRect(Rect(0, 0, Width, Height));
        //-----Estrelas-----
        Brush.Color := clWhite;
        if PVistaOffset > 800 then
          for x := 0 to 50 do
            for y := 0 to 15 do
            begin
              offsetX := Deslocar(y * 200, 360 * (x / 50) + GetTickCount * 1e-3, 'X');
              offsetY := Deslocar(y * 200, 360 * (x / 50) + GetTickCount * 1e-3, 'Y');
              FillRect(Rect(Round(offsetX) - 500, Round(offsetY) - 500, Round(offsetX + x mod 2 + 1) - 500, Round(offsetY + x mod 2 + 1) - 500));
              FillRect(Rect(Width + Round(offsetX) + 500, Height - Round(offsetY) + 450, Width + Round(offsetX + x mod 2 + 1) + 500, Height - Round(offsetY + x mod 2 + 1) + 450));
            end;
        //-----Cenário-----
        DesenhaRecurso('CidadeFundo', Width div 2 - 365, Height - 646 + Round(PVistaOffset * 0.5));
        for x:= 0 to (Width div 87) do
          DesenhaRecurso('Cerca', x * 87, Height - 80 + PVistaOffset);
        DesenhaRecurso('Árvore', Width div 2 + 300, Height - 146 + PVistaOffset);
        DesenhaRecurso('Árvore', Width div 2 - 550, Height - 146 + PVistaOffset);
        x := GetTickCount * 2 mod 2000;
        if x <= 143 then
          strTemp := 'Caminhão0'
        else if x <= 286 then
          strTemp := 'Caminhão1'
        else if x <= 429 then
          strTemp := 'Caminhão2'
        else if x <= 571 then
          strTemp := 'Caminhão3'
        else if x <= 714 then
          strTemp := 'Caminhão4'
        else if x <= 857 then
          strTemp := 'Caminhão5'
        else if x <= 1000 then
          strTemp := 'Caminhão6'
        else if x <= 2000 then
          strTemp := 'Caminhão7';
        DesenhaRecurso(strTemp, Width div 2 - 450, Height - 122 + PVistaOffset); // Caminhão
        Brush.Color := $004080;
        FillRect(Rect(0, Height - 5 + PVistaOffset, Width, Height + PVistaOffset));//Terra
        Brush.Color := $606060;
        FillRect(Rect(Width div 2 - 258, Height - 12 + PVistaOffset, Width div 2 + 258, Height + PVistaOffset));//Borda cimento
        Brush.Color := $808080;
        FillRect(Rect(Width div 2 - 256, Height - 10 + PVistaOffset, Width div 2 + 256, Height + PVistaOffset));//Cimento

        if not(PConcluido) then
        begin
          //-----Guindaste-----
          if GuindP.direc then
          begin
            GuindP.angBalanco := GuindP.angBalanco + (30 - (Abs(GuindP.angBalanco) * 1.5)) * Avanco;
            if GuindP.angBalanco > 18 then
            begin
              GuindP.direc := false;
              GuindP.angBalanco := 18 - (Round(GuindP.angBalanco) mod 18);
            end;
          end
          else
          begin
            GuindP.angBalanco := GuindP.angBalanco - (30 - (Abs(GuindP.angBalanco) * 1.5)) * Avanco;
            if GuindP.angBalanco < -18 then
            begin
              GuindP.direc := true;
              GuindP.angBalanco := -18 + (Abs(Round(GuindP.angBalanco)) mod 18);
            end;
          end;
          Pen.Width := 3;
          Pen.Color := clBlack;
          offsetX := Deslocar(1000 + Height - GuindP.altura, GuindP.angBalanco, 'X');
          offsetY := Deslocar(1000 + Height - GuindP.altura, GuindP.angBalanco, 'Y');
          if GuindP.anexo <> nil then
          begin
            GuindP.anexo^.x := Width div 2 + Round(offsetX) - 64;
            GuindP.anexo^.y := -1000 + Round(offsetY) - PVistaOffset;
          end
          else
          if not(CalculaQueda(Avanco)) then
          begin
            for x := 1 to High(Andares) do
              if Andares[x] = nil then
              begin
                case ConstruAndar of
                  0: y := 5;
                  1: y := 15;
                  2: y := 30;
                  3: y := 50;
                end;
                if UsoAndares < y then
                begin
                  New(Andares[x]);
                  if UsoAndares = y - 1 then
                    Andares[x]^.tipo := ConstruAndar + 10
                  else
                    Andares[x]^.tipo := ConstruAndar;
                  GuindP.anexo := @Andares[x]^;
                  GuindP.anexo^.veloQueda := 0;
                  GuindP.anexo^.x := Width div 2 + Round(offsetX) - 64;
                  GuindP.anexo^.y := -1000 + Round(offsetY) - PVistaOffset;
                end
                else
                  PConcluido := true;
                break;
              end;
          end;
        end;
        DesenhaAndares;
        if not(PConcluido) then
        begin
          MoveTo(Width div 2, -1000);
          LineTo(Width div 2 + Round(offsetX), -1000 + Round(offsetY));
          case ConstruAndar of
            0: Brush.Color := $700000;
            1: Brush.Color := $70;
            2: Brush.Color := $7000;
            3: Brush.Color := $606060;
          end;
          FillRect(Rect(5, Height div 4 * 3 - 100, 35, Height div 4 * 3 + 100));
          case ConstruAndar of
            0: begin
              Brush.Color := $FF8000;
              OffsetY := UsoAndares / 5;
            end;
            1: begin
              Brush.Color := $2020FF;
              OffsetY := UsoAndares / 15;
            end;
            2: begin
              Brush.Color := $20DD20;
              OffsetY := UsoAndares / 30;
            end;
            3: begin
              Brush.Color := clWhite;
              OffsetY := UsoAndares / 50;
            end;
          end;
          FillRect(Rect(7, Height div 4 * 3 + 98 - Round(196 * OffsetY), 33, Height div 4 * 3 + 98));
          DesenhaRecurso('PopIco', Width - 180, 3);
          Brush.Style := bsClear;
          Font.Size := 26;
          Font.Color := clWhite;
          strTemp := '+' + IntToStr(PnoPredio);
          TextOutBorda(strTemp, Width - 140, -4, 1, ImgBuffer.Canvas, clBlack);
          Font.Size := 12;
          case ConstruAndar of
            0: strTemp := '5';
            1: strTemp := '15';
            2: strTemp := '30';
            3: strTemp := '50';
          end;
          TxtX := TextWidth(strTemp) div 2;
          TextOutBorda(strTemp, 19 - TxtX, Height div 4 * 3 - 125, 1, ImgBuffer.Canvas, clBlack);
        end;
        Brush.Style := bsClear;
        Font.Color := clWhite;
        if ((GetTickCount - TickPontMens > 0) and (GetTickCount - TickPontMens <= 2000)) then
        begin
          offsetX := Deslocar(40 * ((GetTickCount - TickPontMens) / 2000), 225, 'X');
          offsetY := Deslocar(40 * ((GetTickCount - TickPontMens) / 2000), 225, 'Y');
          Font.Size := 20;
          if (StrPontMens <> '+15') and (StrPontMens <> '+15 X2') then
            x := clBlack
          else
            x := $00CCFF;
          if Andares[PosPontMens] <> nil then
          begin
            TextOutBorda(StrPontMens, Andares[PosPontMens]^.x + Round(offsetX) + 64, Andares[PosPontMens]^.y + Round(offsetY) + PVistaOffset - 20, 2, ImgBuffer.Canvas, x);
            DesenhaRecurso('PopIco', Andares[PosPontMens]^.x + Round(offsetX) + 24, Andares[PosPontMens]^.y + Round(offsetY) + PVistaOffset - 20);
          end;
        end;
        if PConcluido then
        begin    
          Font.Size := 26;
          if Chances > 0 then
            strTemp := 'Prédio Finalizado!'
          else
            strTemp := 'As chances acabaram!';
          TxtX := TextWidth(strTemp);
          TxtY := TextHeight(strTemp);
          TextOutBorda(strTemp, Width div 2 - TxtX div 2, Height div 2 - TxtY div 2, 1, ImgBuffer.Canvas, clBlack);
          Font.Size := 16;
          strTemp := 'Moradores: ' + IntToStr(PnoPredio);
          TxtX := TextWidth(strTemp);
          TextOutBorda(strTemp, Width div 2 - TxtX div 2, Height div 2 + TxtY div 2, 1, ImgBuffer.Canvas, clBlack);
          if GetTickCount mod 1000 < 500 then
          begin
            Font.Size := 10;
            Font.Color := $2020FF;
            strTemp := 'Pressione Enter para continuar';
            TxtX := TextWidth(strTemp) div 2;
            TextOutBorda(strTemp, Width div 2 - TxtX, Height div 4 * 3, 1, ImgBuffer.Canvas, clBlack);
          end;
        end
        else
        begin
          Pen.Width := 2;
          Pen.Color := clRed;
          for x := 1 to Chances do
          begin         
            MoveTo(5 + (x - 1) * 20, 5);
            LineTo(20 + (x - 1) * 20, 20);
            MoveTo(20 + (x - 1) * 20, 5);
            LineTo(5 + (x - 1) * 20, 20);
          end;
        end;
      end;
    end
    else if MTitulo then
    begin
      Brush.Style := bsDiagCross;
      Brush.Color := $101010;
      FillRect(Rect(0, 0, Width, Height));
      Brush.Style := bsClear;
      if tituloTam < 200 then
      begin    
        if tituloTam > 80 then
          Font.Size := 80
        else
          Font.Size := tituloTam;
        Font.Color := Round((tituloTam - 80) * 2);
        strTemp := '.:Blocos:.';
        TxtY := TextHeight(strTemp) div 2;
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TxtY, 2, ImgBuffer.Canvas, clWhite);
        Font.Size := 10;
        Font.Color := clBlack;
        strTemp := 'Por Yuri_Sim - 23/07/2012 - Delphi 7';
        TxtY := TextHeight(strTemp);
        TxtX := TextWidth(strTemp);
        TextOutBorda(strTemp, Width - Round((Width + TxtX) / 199 * tituloTam) - TxtX div 2, Height - TxtY, 1, ImgBuffer.Canvas, $606060);
      end
      else
      begin
        Font.Size := 36;
        Font.Color := clBlack;
        strTemp := 'Carregando...';
        TxtY := TextHeight(strTemp) div 2;
        TxtX := TextWidth(strTemp) div 2;
        TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TxtY, 2, ImgBuffer.Canvas, clWhite);
      end;
      Inc(tituloTam);
      if GetKeyState(13) < 0 then tituloTam := 201;
      if tituloTam > 201 then
      begin
        MTitulo := false;
        MenuAtivado := true;
        AudioCanal1.FileName:= 'Recursos\Audio\Menu.mp3';
        AudioCanal1.Open;
        CarregaRecurso('FundMenu', 'Recursos\Canvas\FundoMenu.bmp', false);
        CarregaRecurso('AAzul', 'Recursos\Canvas\Andares\AAzul.bmp', false);
        CarregaRecurso('AVermelho', 'Recursos\Canvas\Andares\AVermelho.bmp', false);
        CarregaRecurso('AVerde', 'Recursos\Canvas\Andares\AVerde.bmp', false);
        CarregaRecurso('AAmarelo0', 'Recursos\Canvas\Andares\AAmarelo0.bmp', false);
        CarregaRecurso('AAmarelo1', 'Recursos\Canvas\Andares\AAmarelo1.bmp', false);
        CarregaRecurso('PAzul', 'Recursos\Canvas\PAzul.bmp', true);
        CarregaRecurso('PVermelho', 'Recursos\Canvas\PVermelho.bmp', true);
        CarregaRecurso('PVerde', 'Recursos\Canvas\PVerde.bmp', true);
        CarregaRecurso('PAmarelo', 'Recursos\Canvas\PAmarelo.bmp', true);
        CarregaRecurso('TAzul', 'Recursos\Canvas\Andares\TAzul.bmp', true);
        CarregaRecurso('TVermelho0', 'Recursos\Canvas\Andares\TVermelho0.bmp', true);
        CarregaRecurso('TVermelho1', 'Recursos\Canvas\Andares\TVermelho1.bmp', true);
        CarregaRecurso('TVerde', 'Recursos\Canvas\Andares\TVerde.bmp', true);
        CarregaRecurso('TAmarelo0', 'Recursos\Canvas\Andares\TAmarelo0.bmp', true);
        CarregaRecurso('TAmarelo1', 'Recursos\Canvas\Andares\TAmarelo1.bmp', true);
        CarregaRecurso('MPAzul', 'Recursos\Canvas\MPAzul.bmp', true);
        CarregaRecurso('MPVermelho', 'Recursos\Canvas\MPVermelho.bmp', true);
        CarregaRecurso('MPVerde', 'Recursos\Canvas\MPVerde.bmp', true);
        CarregaRecurso('MPAmarelo', 'Recursos\Canvas\MPAmarelo.bmp', true);
        CarregaRecurso('PopIco', 'Recursos\Canvas\PopIco.bmp', true);
        CarregaRecurso('Marreta', 'Recursos\Canvas\Marreta.bmp', true);
        CarregaRecurso('Cerca', 'Recursos\Canvas\Cerca.bmp', true);
        CarregaRecurso('CidadeFundo', 'Recursos\Canvas\CidadeFundo.bmp', true);
        CarregaRecurso('Árvore', 'Recursos\Canvas\Árvore.bmp', true);
        CarregaRecurso('Caminhão0', 'Recursos\Canvas\Caminhão0.bmp', true);
        CarregaRecurso('Caminhão1', 'Recursos\Canvas\Caminhão1.bmp', true);
        CarregaRecurso('Caminhão2', 'Recursos\Canvas\Caminhão2.bmp', true);
        CarregaRecurso('Caminhão3', 'Recursos\Canvas\Caminhão3.bmp', true);
        CarregaRecurso('Caminhão4', 'Recursos\Canvas\Caminhão4.bmp', true);
        CarregaRecurso('Caminhão5', 'Recursos\Canvas\Caminhão5.bmp', true);
        CarregaRecurso('Caminhão6', 'Recursos\Canvas\Caminhão6.bmp', true);
        CarregaRecurso('Caminhão7', 'Recursos\Canvas\Caminhão7.bmp', true);
        FPS := false;
        if FileExists('Blocos.sav') then
        begin
          JComecou := true;
          JSituac := 'Cidade';
          AssignFile(SaveArq, 'Blocos.sav');
          Reset(SaveArq);
          for y := 0 to 3 do
		        for x := 0 to 3 do
            begin
              lerArquivoDyn(x * 3 + y * 12, 0, Lotes[x, y].tipo);
              lerArquivoDyn(x * 3 + y * 12 + 1, 1, Lotes[x, y].moradores);
            end;
          lerArquivoDyn(16 * 3, 0, bytetmp);
          CloseFile(SaveArq);     
          SomM := Boolean(bytetmp and 1);
          FPS := Boolean(bytetmp shr 1 and 1);
        end;
        if SomM then
          AudioCanal1.Play;
        TickFade := GetTickCount;
        Tick := GetTickCount;
      end;
    end
    else if MenuAtivado then
    begin
      DesenhaRecurso('FundMenu', 0, 0, Screen.Width, Screen.Height);
      //-----Animação do prédio no menu----- 
      if Guind.direc then
      begin
        Guind.angBalanco := Guind.angBalanco + (100 - (Abs(Guind.angBalanco) * 1.3)) * Avanco;
        if Guind.angBalanco > 65 then
        begin
          Guind.direc := false;
          Guind.angBalanco := 65 - (Round(Guind.angBalanco) mod 65);
        end;
      end
      else
      begin
        Guind.angBalanco := Guind.angBalanco - (100 - (Abs(Guind.angBalanco) * 1.3)) * Avanco;
        if Guind.angBalanco < -65 then
        begin
          Guind.direc := true;
          Guind.angBalanco := -65 + (Abs(Round(Guind.angBalanco)) mod 65);
        end;
      end;
      Pen.Width := 3;
      Pen.Color := clBlack;
      MoveTo(Width div 2, -1000 + Guind.altura);
      offsetX := Deslocar(Guind.altura, Guind.angBalanco, 'X');
      offsetY := Deslocar(Guind.altura, Guind.angBalanco, 'Y');
      LineTo(Width div 2 + Round(offsetX), Round(offsetY));
      Guind.anexo^.x := Width div 2 + Round(offsetX) - 64;
      Guind.anexo^.y := Round(offsetY);
      DesenhaRecurso('AVermelho', Andares[0]^.x, Andares[0]^.y);
      //-----Textos do menu principal-----
      Brush.Style := bsClear;
      Font.Size := 47;
      Font.Color := clWhite;
      strTemp := 'Menu';
      TxtX := TextWidth(strTemp) div 2;
      TextOutBorda(strTemp, Width div 2 - TxtX, 0, 2, ImgBuffer.Canvas, $0000FF);

      Font.Size := 16;
        strTemp := 'Continuar';
      TxtY := TextHeight(strTemp);
      if MenuOpcSelec = 0 then
      begin
        Font.Color := $2020FF;
        Font.Size := 21;
      end
      else
        Font.Color := $FFFFFF;
      if not(JComecou) then
        Font.Color := $606060;
      TxtX := TextWidth(strTemp) div 2;
      TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TxtY * 2 - TextHeight(strTemp) div 2, 1, ImgBuffer.Canvas, clBlack);

      Font.Size := 16;
      strTemp := 'Novo Jogo';
      if MenuOpcSelec = 1 then
      begin
        Font.Color := $2020FF;
        Font.Size := 21;
      end
      else
        Font.Color := $FFFFFF;
      TxtX := TextWidth(strTemp) div 2;
      TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TxtY - TextHeight(strTemp) div 2, 1, ImgBuffer.Canvas, clBlack);

      Font.Size := 16;
      if SomM then
        strTemp := 'Música: Ligada'
      else
        strTemp := 'Música: Desligada';
      if MenuOpcSelec = 2 then
      begin
        Font.Color := $2020FF;
        Font.Size := 21;
      end
      else
        Font.Color := $FFFFFF;
      TxtX := TextWidth(strTemp) div 2;
      TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 - TextHeight(strTemp) div 2, 1, ImgBuffer.Canvas, clBlack);

      Font.Size := 16;
      strTemp := 'Sair';
      if MenuOpcSelec = 3 then
      begin
        Font.Color := $2020FF;
        Font.Size := 21;
      end
      else
        Font.Color := $FFFFFF;
      TxtX := TextWidth(strTemp) div 2;
      TextOutBorda(strTemp, Width div 2 - TxtX, Height div 2 + TxtY - TextHeight(strTemp) div 2, 1, ImgBuffer.Canvas, clBlack);
    end;
    //---Efeito Cinza---
    {for y := 0 to Height - 1 do
    begin
      BufferPixels := ImgBuffer.ScanLine[y];
      for x := 0 to Width - 1 do
      begin
        TxtX := (BufferPixels[x].R + BufferPixels[x].G + BufferPixels[x].B) div 3;
        BufferPixels[x].R := TxtX;
        BufferPixels[x].G := TxtX;
        BufferPixels[x].B := TxtX;
      end;
    end;}
    //---Efeito Chuvisco---
    {if (GetTickCount - TickFade) < 150 then
      for y := 0 to Height - 1 do
      begin
        BufferPixels := ImgBuffer.ScanLine[y];
        for x := 0 to (Width div 2) - 1 do
        begin
          BufferPixels[x shl 1].R := RandomRange(0, 2) * $FF;
          BufferPixels[x shl 1].G := BufferPixels[x shl 1].R;
          BufferPixels[x shl 1].B := BufferPixels[x shl 1].R;
          BufferPixels[x shl 1 + 1].R := BufferPixels[x shl 1].R;
          BufferPixels[x shl 1 + 1].G := BufferPixels[x shl 1].R;
          BufferPixels[x shl 1 + 1].B := BufferPixels[x shl 1].R;
        end;
      end;}
    //---Efeito FadeIn---
    if (GetTickCount - TickFade) <= 500 then
    begin
      Fade := (GetTickCount - TickFade) / 500;
      {v1.x := Fade;
      v1.y := Fade;
      v1.z := Fade;}
      for y := 0 to Height - 1 do
      begin
        BufferPixels := ImgBuffer.ScanLine[y];
        for x := 0 to Width - 1 do
        begin
          BufferPixels[x].R := Round(BufferPixels[x].R * Fade);
          BufferPixels[x].G := Round(BufferPixels[x].G * Fade);
          BufferPixels[x].B := Round(BufferPixels[x].B * Fade);
        end;
      end;
    end;
    if FPS then
    begin
      if Avanco > 0 then
      begin
        for y := 0 to High(MFPS) do
          if y <> 0 then
            MFPS[y - 1] := MFPS[y];
        MFPS[High(MFPS)] := Round(1000 / (JogoVeloc * Avanco));
      end;
      if GetTickCount - TickUltimoFPS >= 1000 then
      begin
        MediaFPS := 0;
        for y := 0 to High(MFPS) do
          Inc(MediaFPS, MFPS[y]);
            MediaFPS := MediaFPS div (High(MFPS) + 1);
        TickUltimoFPS := GetTickCount;
      end;                
      Brush.Style := bsClear;
      Font.Size := 18;
      Font.Color := clYellow;
      TextOutBorda('FPS: ' + IntToStr(MediaFPS), 5, 20, 1, ImgBuffer.Canvas, clBlack);
    end;
  end;
  Canvas.Draw(0, 0, ImgBuffer);
end;

procedure TFrmTela.FormCreate(Sender: TObject);
var x, y: byte;
begin
  ImgBuffer := TBitmap.Create;
  ImgBuffer.PixelFormat := pf32bit;//pf24bit funciona perfeitamente porém notei um pouco menos de desempenho em relação ao formato de 32bits
  ImgBuffer.Width := Screen.Width;
  ImgBuffer.Height := Screen.Height;
  ImgBuffer.Canvas.Font.Name := 'Arial Black';
  Guind.altura := Screen.Height div 2;
  Guind.angBalanco := 0;
  New(Andares[0]);
  TickPontMens := 0;
  Andares[0]^.tipo := 1;
  Guind.anexo := @Andares[0]^;
  for y := 0 to 3 do
    for x := 0 to 3 do
    begin
      Lotes[x, y].tipo := $FF;
      Lotes[x, y].moradores := 0;
    end;
  LoteEspera.tipo := $FF;
  MTitulo := true;
  SomM := true;
  JogoVeloc := 1000;
  tituloTam := 1;
  MenuOpcSelec := 0;
  MJogoSelec := 0;
  JSituac := 'Tutorial';
  ShowCursor(false);
end;

procedure TFrmTela.AudioCanal1Notify(Sender: TObject);
begin
  If SomM then
  begin
    Sleep(10); //Dar um tempo antes de recomeçar o audio evita travamentos. 10ms é o suficiente
    AudioCanal1.Play;
  end;
end;

procedure TFrmTela.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i, x, y: integer;
begin
  if Key = 13 then //Enter
  begin
    if MenuAtivado then
    begin
      if MenuOpcSelec = 0 then
      begin
        if JComecou then
        begin
          TickFade := GetTickCount;
          MenuAtivado := false;
          MJogo := true;
        end;
      end
      else if MenuOpcSelec = 1 then
      begin
        for y := 0 to 3 do
          for x := 0 to 3 do
          begin
            Lotes[x, y].tipo := $FF;
            Lotes[x, y].moradores := 0;
          end;
        for i := 1 to High(Andares) do
          if Andares[i] <> nil then
          begin
            Dispose(Andares[i]);
            Andares[i] := nil;
          end;
        LoteEspera.tipo := $FF;
        tituloTam := 1;
        MJogoSelec := 0;
        JSituac := 'Tutorial';
        MJogo := true;
        MenuAtivado := false;
        MenuOpcSelec := 0;
        JComecou := true;
        DeleteFile('Blocos.sav');
        TickFade := GetTickCount;
      end
      else if MenuOpcSelec = 2 then
      begin
        SomM := not(SomM);
        if FileExists('Blocos.sav') then
        begin
          AssignFile(SaveArq, 'Blocos.sav');
          Reset(SaveArq);
          bytetmp := Byte(FPS) shl 1 + Byte(SomM);
          gravarArquivoDyn(16 * 3, 0, bytetmp);
          CloseFile(SaveArq);
        end;
        if SomM then
          AudioCanal1.Play
        else
          AudioCanal1.Stop;
      end
      else if MenuOpcSelec = 3 then
        Application.Terminate;
    end
    else if Mjogo then
      if JSituac = 'Tutorial' then
      begin
        JSituac := 'Cidade';
        TickFade := GetTickCount;
      end
      else if JSituac = 'Cidade' then
      begin
        if LoteEspera.tipo > 4 then
        begin
          JSituac := 'Construindo';
          PVistaOffset := 1000;
          PnoPredio := 0;
          UsoAndares := 0;
          Chances := 3;
          PConcluido := false;
          ConstruAndar := MJogoSelec;
          GuindP.altura := (Height div 4) * 3;
          GuindP.anexo := nil;
          TickFade := GetTickCount;
        end
        else
        begin
          if PosLoteEspera.X <> 4 then
          begin            
            if LoteEspera.tipo <> 0 then
              if (not(HaPrediosPorPerto(PosLoteEspera.X, PosLoteEspera.Y, LoteEspera.tipo - 1)) and
                     (Lotes[PosLoteEspera.X, PosLoteEspera.Y].tipo <> LoteEspera.tipo)) then
                Exit;
            Lotes[PosLoteEspera.X, PosLoteEspera.Y].tipo := LoteEspera.tipo;
            Lotes[PosLoteEspera.X, PosLoteEspera.Y].moradores := LoteEspera.moradores;
          end;
          LoteEspera.tipo := $FF;
          AssignFile(SaveArq, 'Blocos.sav');
          JComecou := true;
          if not(FileExists('Blocos.sav')) then
            Rewrite(SaveArq)
          else
            Reset(SaveArq);
          for y := 0 to 3 do
            for x := 0 to 3 do
            begin
              gravarArquivoDyn(x * 3 + y * 12, 0, Lotes[x, y].tipo);
              gravarArquivoDyn(x * 3 + y * 12 + 1, 1, Lotes[x, y].moradores);
            end;   
          bytetmp := Byte(FPS) shl 1 or Byte(SomM);
          gravarArquivoDyn(16 * 3, 0, bytetmp);
          CloseFile(SaveArq);
        end
      end
      else if JSituac = 'Construindo' then
      begin
        if PConcluido then
        begin
          JSituac := 'Cidade';
          if PnoPredio > 0 then
          begin
            LoteEspera.tipo := ConstruAndar;
            LoteEspera.moradores := PnoPredio;
            PosLoteEspera.X := 4;
            PosLoteEspera.Y := 1;
          end;
          for i := 1 to High(Andares) do
            if Andares[i] <> nil then
            begin
              Dispose(Andares[i]);
              Andares[i] := nil;
            end;
          TickFade := GetTickCount;
        end
        else if GuindP.anexo <> nil then
        begin
          GuindP.anexo^.caindo := true;
          GuindP.anexo^.direcQueda := GuindP.direc;
          GuindP.anexo := nil;
        end;
      end;
  end
  else if Key = 27 then //ESC
  begin
    if MJogo then
    begin
      TickFade := GetTickCount;
      MJogo := false;
      MenuAtivado := true;
    end;
  end
  else if Key = 38 then
  begin
    if MenuAtivado then
    begin
      if MenuOpcSelec > 0 then //Seta Cima
        Dec(MenuOpcSelec)
      else
        MenuOpcSelec := 3;
    end
    else if (MJogo and (JSituac = 'Cidade')) then
      if LoteEspera.tipo < 4 then
      begin
        if PosLoteEspera.Y > 0 then
          Dec(PosLoteEspera.Y);
      end
      else if MJogoSelec > 0 then
        Dec(MJogoSelec);
  end
  else if Key = 40 then //Seta Baixo
  begin
    if MenuAtivado then
    begin
      if MenuOpcSelec < 3 then
        Inc(MenuOpcSelec)
      else
        MenuOpcSelec := 0;
    end
    else if (MJogo and (JSituac = 'Cidade')) then
    begin
      if LoteEspera.tipo < 4 then
      begin
        if PosLoteEspera.Y < 3 then
          Inc(PosLoteEspera.Y);
      end
      else
      begin
        if (MJogoSelec < 3) then
          Inc(MJogoSelec);
        if ((populacao < 300) and (MJogoSelec > 0)) then
          MJogoSelec := 0;
        if ((populacao < 1000) and (MJogoSelec > 1)) then
          MJogoSelec := 1;
        if ((populacao < 3500) and (MJogoSelec > 2)) then
          MJogoSelec := 2;
      end;
    end;
  end
  else if Key = 39 then //Seta DIR
  begin
    if (MJogo and (JSituac = 'Cidade')) then
      if LoteEspera.tipo < 4 then
        if PosLoteEspera.X < 4 then
          Inc(PosLoteEspera.X);
  end
  else if Key = 37 then //Seta ESQ
  begin
    if (MJogo and (JSituac = 'Cidade')) then
      if LoteEspera.tipo < 4 then
        if PosLoteEspera.X > 0 then
          Dec(PosLoteEspera.X);
  end;

  for i := 0 to High(Trapaca) do
    if i <> 0 then
      Trapaca[i - 1] := Trapaca[i];
  Trapaca[High(Trapaca)] := Char(Key);//A variável trapaca guarda as últimas teclas pressionadas

  if Trapaca = 'DELPHI7' then//Trapaça para criar um prédio perfeito. Pode ser usado à qualquer momento da construção de um prédio
  begin
    if MJogo then
      if JSituac = 'Construindo' then
        if not(PConcluido) then
        begin
          PConcluido := true;
          GuindP.anexo := nil;
          for i := 1 to High(Andares) do
          if Andares[i] <> nil then
          begin
            Dispose(Andares[i]);
            Andares[i] := nil;
          end;
          case ConstruAndar of
            0: UsoAndares := 5;
            1: UsoAndares := 15;
            2: UsoAndares := 30;
            3: UsoAndares := 50;
          end;
          for i := 1 to UsoAndares do
          begin
            New(Andares[i]);
            if i = UsoAndares then
              Andares[i]^.tipo := ConstruAndar + 10
            else
              Andares[i]^.tipo := ConstruAndar;
            Andares[i]^.x := Width div 2 - 64;
            Andares[i]^.y := Height - 10 - (i * 128);
            Andares[i]^.caindo := false;
          end;
          PnoPredio := 15 * UsoAndares + 15;
        end;
  end
  else if Trapaca[4] + Trapaca[5] + Trapaca[6] = 'FPS' then
  begin
    FPS := not(FPS);
    if (FileExists('Blocos.sav') and (JSituac <> 'Tutorial')) then
    begin
      AssignFile(SaveArq, 'Blocos.sav');
      Reset(SaveArq);
      bytetmp := Byte(FPS) shl 1 or Byte(SomM);
      gravarArquivoDyn(16 * 3, 0, bytetmp);
      CloseFile(SaveArq);
    end;
  end
  else if Trapaca = 'VELOCD1' then//Deixa o jogo em velocidade lenta
    JogoVeloc := 3000
  else if Trapaca = 'VELOCD2' then//Deixa o jogo em velocidade normal 
    JogoVeloc := 1000
  else if Trapaca = 'VELOCD3' then//Deixa o jogo em velocidade rápida
    JogoVeloc := 250;
end;

end.