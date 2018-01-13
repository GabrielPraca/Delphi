unit U_nome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmNome = class(TForm)
    LblNome: TLabel;
    LblSobre: TLabel;
    EdtNome: TEdit;
    EdtSobre: TEdit;
    LblRes: TLabel;
    BtnOk: TButton;
    BtnLimpa: TButton;
    procedure BtnOkClick(Sender: TObject);
    procedure BtnLimpaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNome: TFrmNome;

implementation

{$R *.dfm}

procedure TFrmNome.BtnOkClick(Sender: TObject);
begin
  if((Trim(EdtNome.Text) = '')) then
    ShowMessage('Campo "Nome" está vazio, verifique-o')
  else if((Trim(EdtSobre.Text) = '')) then
         ShowMessage('Campo "Sobrenome" está vazio, verifique-o')
    else
      LblRes.Caption := Trim(EdtNome.Text)+' '+Trim(EdtSobre.Text);
end;

procedure TFrmNome.BtnLimpaClick(Sender: TObject);
begin
  LblRes.Caption := '';
  EdtNome.Clear;
  EdtSobre.Clear;
  EdtNome.SetFocus;
end;

end.
