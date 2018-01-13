unit U_Primeiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmPrimeiro = class(TForm)
    BtnAzul: TButton;
    BtnAmarelo: TButton;
    BtnVerde: TButton;
    BtnVermelho: TButton;
    procedure BtnAzulClick(Sender: TObject);
    procedure BtnAmareloClick(Sender: TObject);
    procedure BtnVerdeClick(Sender: TObject);
    procedure BtnVermelhoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrimeiro: TFrmPrimeiro;

implementation

{$R *.dfm}

procedure TFrmPrimeiro.BtnAzulClick(Sender: TObject);
begin
  FrmPrimeiro.Color:= clBlue;
  FrmPrimeiro.Caption:= 'Primeira Tela - Você Clicou no botão azul';
end;

procedure TFrmPrimeiro.BtnAmareloClick(Sender: TObject);
begin
  FrmPrimeiro.Color:= clYellow;
  FrmPrimeiro.Caption:= 'Primeira Tela - Você Clicou no botão amarelo';
end;

procedure TFrmPrimeiro.BtnVerdeClick(Sender: TObject);
begin
  FrmPrimeiro.Color:= clGreen;
  FrmPrimeiro.Caption:= 'Primeira Tela - Você Clicou no botão verde';
end;

procedure TFrmPrimeiro.BtnVermelhoClick(Sender: TObject);
begin
  FrmPrimeiro.Color:= clRed;
  FrmPrimeiro.Caption:= 'Primeira Tela - Você Clicou no botão Vermelho';
end;

end.
