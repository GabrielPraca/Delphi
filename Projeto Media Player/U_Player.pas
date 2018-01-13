unit U_Player;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, ComCtrls, ExtCtrls;

type
  TFrmPlayer = class(TForm)
    MediaPlayer1: TMediaPlayer;
    MediaPlayer2: TMediaPlayer;
    BtnSom1: TButton;
    BtnSom2: TButton;
    PgbStatus: TProgressBar;
    TmrRelogio: TTimer;
    BtnComeca: TButton;
    LblStatus: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSom1Click(Sender: TObject);
    procedure BtnSom2Click(Sender: TObject);
    procedure BtnComecaClick(Sender: TObject);
    procedure TmrRelogioTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlayer: TFrmPlayer;
  i: integer;

implementation

{$R *.dfm}

procedure TFrmPlayer.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_F2) then
  begin
    MediaPlayer2.Close;
    MediaPlayer1.Open;
    MediaPlayer1.Play;
  end
  else if (Key = VK_F3) then
  begin
    MediaPlayer1.Close;
    MediaPlayer2.Open;
    MediaPlayer2.Play;
  end;
end;

procedure TFrmPlayer.BtnSom1Click(Sender: TObject);
begin
  keybd_event(VK_F2, 0, 0, 0);
end;

procedure TFrmPlayer.BtnSom2Click(Sender: TObject);
begin
  keybd_event(VK_F3, 0, 0, 0);
end;

procedure TFrmPlayer.BtnComecaClick(Sender: TObject);
begin
  i := 0;
  TmrRelogio.Enabled := true;
  PgbStatus.Position := 0;
end;

procedure TFrmPlayer.TmrRelogioTimer(Sender: TObject);
begin
  Inc(i);
  PgbStatus.Position := i;
  if i<25 then
  LblStatus.Caption:='Inicializando Componentes'
  else if i<50 then
  LblStatus.Caption:='Criando Inteface Gráfica'
  else if i<75 then
  LblStatus.Caption:='Criando Jogadores'
  else if i<97 then
  LblStatus.Caption:='Finalizando...Aguarde'
  else if i = 100 then
    TmrRelogio.Enabled := false;
end;

end.
