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
    procedure BtnImg1Click(Sender: TObject);
    procedure BtnImg2Click(Sender: TObject);
    procedure BtnImg3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImagem: TFrmImagem;

implementation

{$R *.dfm}

procedure TFrmImagem.BtnImg1Click(Sender: TObject);
begin
  Img1.Visible:= true;
  Img2.Visible:= false;
  Img3.Visible:= false;
  BtnImg1.Enabled:= false;
  BtnImg2.Enabled:= true;
  BtnImg3.Enabled:= true;
end;

procedure TFrmImagem.BtnImg2Click(Sender: TObject);
begin
  Img1.Visible:= false;
  Img2.Visible:= true;
  Img3.Visible:= false;
  BtnImg1.Enabled:= true;
  BtnImg2.Enabled:= false;
  BtnImg3.Enabled:= true;
end;

procedure TFrmImagem.BtnImg3Click(Sender: TObject);
begin
  Img1.Visible:= false;
  Img2.Visible:= false;
  Img3.Visible:= true;
  BtnImg1.Enabled:= true;
  BtnImg2.Enabled:= true;
  BtnImg3.Enabled:= false;
end;

end.
