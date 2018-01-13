unit U_Div;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Modelo, StdCtrls;

type
  TFrmDiv = class(TFrmModelo)
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDiv: TFrmDiv;

implementation

{$R *.dfm}

procedure TFrmDiv.BtnCalcularClick(Sender: TObject);
begin
  inherited;
  LblRes.Caption := IntToStr(StrToInt(EdtV1.Text) div StrToInt(EdtV2.Text));
end;

end.
