unit U_Imagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFrmImagem = class(TForm)
    BtnImg1: TButton;
    BtnImg2: TButton;
    BtnImg3: TButton;
    Img1: TImage;
    Img2: TImage;
    Img3: TImage;
    LstLog: TListBox;
    procedure BtnImg1Click(Sender: TObject);
    procedure BtnImg2Click(Sender: TObject);
    procedure BtnImg3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImagem: TFrmImagem;
  logbotao: array[0..19] of string;
  contlog: integer;

implementation

{$R *.dfm}

procedure TFrmImagem.BtnImg1Click(Sender: TObject);
var linha: integer;
begin
  if(contlog < 20) then
  Begin
    logbotao[contlog]:= 'Img1';
    contlog:= contlog+1;      
    Img1.Visible:= true;
    Img2.Visible:= false;
    Img3.Visible:= false;
    BtnImg1.Enabled:= false;
    BtnImg2.Enabled:= true;
    BtnImg3.Enabled:= true;
  End
  else
  Begin
    BtnImg1.Enabled:= false;
    BtnImg2.Enabled:= false;
    BtnImg3.Enabled:= false;
    LstLog.Clear();
    For linha:=0 to 19 do
      LstLog.Items.Add(logbotao[linha])
  End;
end;

procedure TFrmImagem.BtnImg2Click(Sender: TObject);
var linha: integer;
begin
  if(contlog < 20) then  
  Begin
    logbotao[contlog]:= 'Img2';
    contlog:= contlog+1;
    Img1.Visible:= false;
    Img2.Visible:= true;
    Img3.Visible:= false;
    BtnImg1.Enabled:= true;
    BtnImg2.Enabled:= false;
    BtnImg3.Enabled:= true;
  End
  else
  Begin          
    BtnImg1.Enabled:= false;
    BtnImg2.Enabled:= false;
    BtnImg3.Enabled:= false;
    LstLog.Clear();
    For linha:=0 to 19 do
      LstLog.Items.Add(logbotao[linha])
  End;
end;

procedure TFrmImagem.BtnImg3Click(Sender: TObject);
var linha: integer;
begin
  if(contlog < 20) then 
  Begin
    logbotao[contlog]:= 'Img3';
    contlog:= contlog+1;
    Img1.Visible:= false;
    Img2.Visible:= false;
    Img3.Visible:= true;
    BtnImg1.Enabled:= true;
    BtnImg2.Enabled:= true;
    BtnImg3.Enabled:= false;
  End
  else
  Begin
    BtnImg1.Enabled:= false;
    BtnImg2.Enabled:= false;
    BtnImg3.Enabled:= false;
    LstLog.Clear();
    For linha:=0 to 19 do
      LstLog.Items.Add(logbotao[linha])
  End;
end;

procedure TFrmImagem.FormShow(Sender: TObject);
begin
  contlog:= 0;
end;

end.
