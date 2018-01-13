unit U_String;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmStrings = class(TForm)
    LblNome: TLabel;
    EdtNome: TEdit;
    LblMai: TLabel;
    LblMin: TLabel;
    LblMen: TLabel;
    LblSobre: TLabel;
    BtnMai: TButton;
    BtnMin: TButton;
    BtnMen: TButton;
    BtnSobre: TButton;
    BtnPrimai: TButton;
    LblPrimai: TLabel;
    procedure BtnMaiClick(Sender: TObject);
    procedure BtnMinClick(Sender: TObject);
    procedure BtnMenClick(Sender: TObject);
    procedure BtnSobreClick(Sender: TObject);
    procedure BtnPrimaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmStrings: TFrmStrings;
  palavra: string;

implementation

{$R *.dfm}

procedure TFrmStrings.BtnMaiClick(Sender: TObject);
begin
  palavra:= UpperCase(EdtNome.Text);
  LblMai.Caption:= palavra;
end;

procedure TFrmStrings.BtnMinClick(Sender: TObject);
begin
  palavra:= LowerCase(EdtNome.Text);
  LblMin.Caption:= palavra;
end;

procedure TFrmStrings.BtnMenClick(Sender: TObject);
begin
  palavra:= EdtNome.Text;
  Delete(palavra, 1, 3);
  LblMen.Caption:= palavra;
end;

procedure TFrmStrings.BtnSobreClick(Sender: TObject);
begin
  palavra:= EdtNome.Text;
  Insert(' Simeão', palavra, 5);
  LblSobre.Caption:= palavra;
end;

procedure TFrmStrings.BtnPrimaiClick(Sender: TObject);
var letra: string;
begin
  palavra:= EdtNome.Text;
  letra:= palavra;
  delete(letra, 2, 3);
  insert(UpperCase(letra), palavra, 1);
  delete(palavra, 2, 1);
  LblPrimai.Caption:= palavra;
end;

end.
