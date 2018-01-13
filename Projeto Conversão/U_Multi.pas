unit U_Multi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmMult = class(TForm)
    LblV1: TLabel;
    LblV2: TLabel;
    LblRes: TLabel;
    LblResult: TLabel;
    EdtV1: TEdit;
    EdtV2: TEdit;
    BtnCalc: TButton;
    BtnLimpa: TButton;
    procedure BtnCalcClick(Sender: TObject);
    procedure BtnLimpaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMult: TFrmMult;

implementation

{$R *.dfm}

procedure TFrmMult.BtnCalcClick(Sender: TObject);
begin
  if (EdtV1.Text = '') then
  Begin
    ShowMessage('Valor 1 está vazio.');
    EdtV1.SetFocus();
  End
  else if (EdtV2.Text = '') then
  Begin
    ShowMessage('Valor 2 está vazio.');
    EdtV2.SetFocus();
  End
  else
    LblResult.Caption:= FloatToStr(StrToFloat(EdtV1.Text)*StrToFloat(EdtV2.Text));
end;

procedure TFrmMult.BtnLimpaClick(Sender: TObject);
begin
  EdtV1.Clear();
  EdtV2.Clear();
  LblResult.Caption:= '';
  EdtV1.SetFocus();
end;

end.
