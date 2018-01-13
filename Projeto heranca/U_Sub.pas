unit U_Sub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Modelo, StdCtrls;

type
  TFrmSub = class(TFrmModelo)
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSub: TFrmSub;

implementation

{$R *.dfm}

procedure TFrmSub.BtnCalcularClick(Sender: TObject);
begin
  inherited;
  LblRes.Caption := IntToStr(StrToInt(EdtV1.Text) - StrToInt(EdtV2.Text));
end;

end.
