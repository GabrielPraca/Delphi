unit U_FrmConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TFrmConsulta = class(TForm)
    PageControl1: TPageControl;
    TabCliente: TTabSheet;
    TabImovel: TTabSheet;
    TabTipoImo: TTabSheet;
    TabAluguel: TTabSheet;
    Label1: TLabel;
    TxtBusca: TEdit;
    CmbCampo: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

end.
