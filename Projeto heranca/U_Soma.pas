unit U_Soma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Modelo, StdCtrls;

type
  TFrmSoma = class(TFrmModelo)
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSoma: TFrmSoma;

implementation

{$R *.dfm}

procedure TFrmSoma.BtnCalcularClick(Sender: TObject);
begin
  inherited;
  LblRes.Caption := IntToStr(StrToInt(EdtV1.Text) + StrToInt(EdtV2.Text));
end;

end.
