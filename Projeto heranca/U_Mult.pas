unit U_Mult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Modelo, StdCtrls;

type
  TFrmMult = class(TFrmModelo)
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMult: TFrmMult;

implementation

{$R *.dfm}

procedure TFrmMult.BtnCalcularClick(Sender: TObject);
begin
  inherited;
  LblRes.Caption := IntToStr(StrToInt(EdtV1.Text) * StrToInt(EdtV2.Text));
end;

end.
