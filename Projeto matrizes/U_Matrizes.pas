unit U_Matrizes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmMatrizes = class(TForm)
    LblNome: TLabel;
    LblIdade: TLabel;
    LblECivil: TLabel;
    LblFilhos: TLabel;
    EdtNome: TEdit;
    EdtIdade: TEdit;
    EdtECivil: TEdit;
    EdtFilhos: TEdit;
    BtnCadastrar: TButton;
    BtnMostrar: TButton;
    LstNomes: TListBox;
    procedure BtnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnMostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMatrizes: TFrmMatrizes;
  pessoa: array[0..4, 0..3] of string;
  indice: integer;

implementation

{$R *.dfm}

procedure TFrmMatrizes.BtnCadastrarClick(Sender: TObject);
begin
  if(indice < 5) then
  Begin
    pessoa[indice, 0]:= EdtNome.Text;
    pessoa[indice, 1]:= EdtIdade.Text;
    pessoa[indice, 2]:= EdtECivil.Text;
    pessoa[indice, 3]:= EdtFilhos.Text;
    EdtNome.Clear();
    EdtIdade.Clear();
    EdtECivil.Clear();
    EdtFilhos.Clear();
    EdtNome.SetFocus();
    Inc(indice);
  End
  Else
    ShowMessage('Matriz cheia.');
end;

procedure TFrmMatrizes.FormCreate(Sender: TObject);
begin
  indice:= 0;
end;

procedure TFrmMatrizes.BtnMostrarClick(Sender: TObject);
var i: integer;
begin
  LstNomes.Clear();
  for i:=0 to indice-1 do
    LstNomes.Items.Add('Nome('+pessoa[i, 0]+') Idade('+pessoa[i, 1]+') E.C.('+pessoa[i, 2]+') Filhos('+pessoa[i, 3]+')');
end;

end.
