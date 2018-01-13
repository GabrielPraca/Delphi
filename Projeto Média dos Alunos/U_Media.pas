unit U_Media;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TFrmMedia = class(TForm)
    LblNome: TLabel;
    EdtNome: TEdit;
    LblNota1: TLabel;
    EdtNota1: TEdit;
    LblNota2: TLabel;
    EdtNota2: TEdit;
    LblNota3: TLabel;
    EdtNota3: TEdit;
    LblNota4: TLabel;
    EdtNota4: TEdit;
    LblNota5: TLabel;
    EdtNota5: TEdit;
    BtnEnviar: TButton;
    LstMedias: TListBox;
    BtnMostra: TButton;
    procedure BtnEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnMostraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMedia: TFrmMedia;
  verificacoes: integer;
  n1, n2, n3, n4, n5, media, nome: array[0..$FF] of string;

implementation

{$R *.dfm}

procedure TFrmMedia.BtnEnviarClick(Sender: TObject);
begin
  EdtNome.Text:= Trim(EdtNome.Text);
  EdtNota1.Text:= Trim(EdtNota1.Text);
  EdtNota2.Text:= Trim(EdtNota2.Text);
  EdtNota3.Text:= Trim(EdtNota3.Text);
  EdtNota4.Text:= Trim(EdtNota4.Text);
  EdtNota5.Text:= Trim(EdtNota5.Text);
  if EdtNome.Text = '' then
  Begin
    EdtNome.SetFocus();
    Application.MessageBox('Campo nome não preechido.', 'Aviso');
  End
  else if EdtNota1.Text = '' then
  Begin
    EdtNota1.SetFocus();
    Application.MessageBox('Campo 1ª Nota não preechido.', 'Aviso');
  End
  else if EdtNota2.Text = '' then
  Begin     
    EdtNota2.SetFocus();
    Application.MessageBox('Campo 2ª Nota não preechido.', 'Aviso');
  End
  else if EdtNota3.Text = '' then
  Begin
    EdtNota3.SetFocus();
    Application.MessageBox('Campo 3ª Nota não preechido.', 'Aviso');
  End
  else if EdtNota4.Text = '' then
  Begin
    EdtNota4.SetFocus();
    Application.MessageBox('Campo 4ª Nota não preechido.', 'Aviso');
  End
  else if EdtNota5.Text = '' then
  Begin
    EdtNota5.SetFocus();
    Application.MessageBox('Campo 5ª Nota não preechido.', 'Aviso');
  End
  else
  Begin
    if verificacoes < 256 then
      Inc(verificacoes);
    nome[verificacoes]:= EdtNome.Text;
    n1[verificacoes]:= EdtNota1.Text;
    n2[verificacoes]:= EdtNota2.Text;
    n3[verificacoes]:= EdtNota3.Text;
    n4[verificacoes]:= EdtNota4.Text;
    n5[verificacoes]:= EdtNota5.Text;
    media[verificacoes]:= IntToStr((StrToInt(EdtNota1.Text)+StrToInt(EdtNota2.Text)+StrToInt(EdtNota3.Text)+StrToInt(EdtNota4.Text)+StrToInt(EdtNota5.Text)) div 5);
    EdtNome.Clear;
    EdtNota1.Clear;
    EdtNota2.Clear;
    EdtNota3.Clear;
    EdtNota4.Clear;
    EdtNota5.Clear;
    EdtNome.SetFocus;
  End;
end;

procedure TFrmMedia.FormCreate(Sender: TObject);
begin
  verificacoes:= -1;
end;

procedure TFrmMedia.BtnMostraClick(Sender: TObject);
var i: integer;
begin
  LstMedias.Clear();
  For i:=0 to verificacoes do
  LstMedias.Items.Add('Nome('+nome[i]+')  Nota 1('+n1[i]+
                      ')  Nota 2('+n2[i]+')  Nota 3('+n3[i]+
                      ')  Nota 4('+n4[i]+')  Nota 5('+n5[i]+')  Média('+media[i]+')');
end;

end.
