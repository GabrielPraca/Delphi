unit U_Modelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmModelo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LblRes: TLabel;
    EdtV1: TEdit;
    Edtv2: TEdit;
    BtnCalcular: TButton;
    BtnLimpar: TButton;
    procedure Limpar;
    procedure BtnLimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModelo: TFrmModelo;

implementation

{$R *.dfm}

procedure TFrmModelo.Limpar;
Begin
  EdtV1.Clear;
  EdtV2.Clear;
  LblRes.Caption := '';
  EdtV1.SetFocus;
End;

procedure TFrmModelo.BtnLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TFrmModelo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    SelectNext(ActiveControl, True, True);
end;

end.
