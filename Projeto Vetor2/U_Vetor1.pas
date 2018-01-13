unit U_Vetor1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmVetor1 = class(TForm)
    LblLista: TLabel;
    LstNomes: TListBox;
    BtnMostra: TButton;
    LblNome: TLabel;
    EdtNome: TEdit;
    BtnCadastra: TButton;
    procedure BtnMostraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCadastraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVetor1: TFrmVetor1;
  vnomes: array[0..4] of string;
  contar: integer;

implementation

{$R *.dfm}

procedure TFrmVetor1.BtnMostraClick(Sender: TObject);
var linha: integer;
begin
  LstNomes.Clear();
  for linha:=0 to 4 do
    LstNomes.Items.Add(vnomes[linha]);
  EdtNome.SetFocus();
end;

procedure TFrmVetor1.FormShow(Sender: TObject);
begin
  contar:= 0;
end;

procedure TFrmVetor1.BtnCadastraClick(Sender: TObject);
begin
  EdtNome.Text:= Trim(EdtNome.Text);
  if(EdtNome.Text = '') then
  Begin
    EdtNome.SetFocus();
    Application.MessageBox('Escreva um nome.', 'Aviso');
  End
  else if(contar <= 4) then
  Begin
    vnomes[contar]:= EdtNome.Text;
    BtnMostra.Enabled:= true;
    EdtNome.Clear();
    BtnMostra.SetFocus();
    contar:= contar+1;
  End
  else
  Begin
    BtnCadastra.Enabled:= false;
    Application.MessageBox('Não foi possível cadastrar este nome pois o limite de nomes foi atingido', 'Aviso');
  End;
end;

end.
