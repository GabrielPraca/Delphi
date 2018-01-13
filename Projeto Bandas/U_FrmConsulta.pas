unit U_FrmConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmConsBanda = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    EdtNome: TEdit;
    EdtCod: TEdit;
    Label1: TLabel;
    BtnDinNovaConsulta: TBitBtn;
    BtnDinConsultar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    TxtCampConsulta: TEdit;
    CmbCampEm: TComboBox;
    BtnCampNConsulta: TBitBtn;
    BtnCampConsultar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtNomeChange(Sender: TObject);
    procedure BtnDinConsultarClick(Sender: TObject);
    procedure BtnDinNovaConsultaClick(Sender: TObject);
    procedure BtnCampNConsultaClick(Sender: TObject);
    procedure BtnCampConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsBanda: TFrmConsBanda;

implementation

uses U_FrmPrincipal, U_DM_Bands, DB, DBTables;

{$R *.dfm}

procedure TFrmConsBanda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMain.Show;
end;

procedure TFrmConsBanda.EdtNomeChange(Sender: TObject);
begin
  with DM_Bandas.QryBanda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from dbo.TB_Bandas');
    SQL.Add('where nome Like '+ QuotedStr('%'+EdtNome.Text+'%'));
    Open;
  end;
end;

procedure TFrmConsBanda.BtnDinConsultarClick(Sender: TObject);
begin
  with DM_Bandas.QryBanda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from dbo.TB_Bandas');
    SQL.Add('where CodBandas = '+ QuotedStr(EdtCod.Text));
    Open;
  end;
  BtnDinConsultar.Enabled:= false;
  BtnDinNovaConsulta.Enabled:= true;
end;

procedure TFrmConsBanda.BtnDinNovaConsultaClick(Sender: TObject);
begin
  with DM_Bandas.QryBanda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from dbo.TB_Bandas');
    Open;
  end;
  BtnDinConsultar.Enabled:= true;
  BtnDinNovaConsulta.Enabled:= false;
  EdtNome.Clear;
  EdtCod.Clear;
end;

procedure TFrmConsBanda.BtnCampNConsultaClick(Sender: TObject);
begin
  with DM_Bandas.QryBanda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from dbo.TB_Bandas');
    Open;
  end;
  BtnCampNConsulta.Enabled:= false;
  BtnCampConsultar.Enabled:= true;
  TxtCampConsulta.Clear;
end;

procedure TFrmConsBanda.BtnCampConsultarClick(Sender: TObject);
var escolha, busca: string;
begin
  with DM_Bandas.QryBanda do
  begin
    escolha := CmbCampEm.Text;
    busca := TxtCampConsulta.Text;
    if  escolha = 'Código' then
      escolha := 'Codbandas'
    else if  escolha = 'Nome' then
      escolha := 'Nome'
    else if  escolha = 'Vocalista' then
      escolha := 'Vocalista'
    else if  escolha = 'Site' then
      escolha := 'Site'
    else if  escolha = 'País' then
      escolha := 'Pais';
    Close;
    SQL.Clear;
    SQL.Add('select * from TB_Bandas where ' + escolha + ' like ' + QuotedStr('%' + busca + '%'));
    Open;
  end;
end;

end.
