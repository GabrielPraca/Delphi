unit U_adega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrmAdega = class(TForm)
    Label1: TLabel;
    EdtCod: TDBEdit;
    Label2: TLabel;
    EdtPreco: TDBEdit;
    Label3: TLabel;
    EdtMarca: TDBEdit;
    Label4: TLabel;
    EdtAno: TDBEdit;
    Label5: TLabel;
    EdtPorAlc: TDBEdit;
    Label6: TLabel;
    EdtEstoque: TDBEdit;
    BtnPrimeiro: TBitBtn;
    BtnAnterior: TBitBtn;
    BtnProximo: TBitBtn;
    BtnUltimo: TBitBtn;
    BtnInserir: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnEditar: TBitBtn;
    BtnGravar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnAtualizar: TBitBtn;
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure TabelaVazia;
    procedure AnteriorPrimeiro;
    procedure FormShow(Sender: TObject);
    procedure ProximoUltimo;
    procedure Edicao;
    procedure Rolagem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAdega: TFrmAdega;

implementation

uses U_DMAdega;

{$R *.dfm}

procedure TFrmAdega.Rolagem;
begin
  BtnPrimeiro.Enabled := true;
  BtnAnterior.Enabled := true;
  BtnProximo.Enabled := true;
  BtnUltimo.Enabled := true;
  BtnAtualizar.Enabled := true;
  BtnEditar.Enabled := true;
  BtnInserir.Enabled := true;
  BtnDeletar.Enabled := true;
  BtnGravar.Enabled := false;
  BtnCancelar.Enabled := false;
  EdtCod.ReadOnly := true;
  EdtPreco.ReadOnly := true;
  EdtMarca.ReadOnly := true;
  EdtAno.ReadOnly := true;
  EdtPorAlc.ReadOnly := true;
  EdtEstoque.ReadOnly := true;
end;

procedure TFrmAdega.Edicao;
begin
  BtnPrimeiro.Enabled := false;
  BtnAnterior.Enabled := false;
  BtnProximo.Enabled := false;
  BtnUltimo.Enabled := false;
  BtnAtualizar.Enabled := false;
  BtnEditar.Enabled := false;
  BtnInserir.Enabled := false;
  BtnDeletar.Enabled := false;
  BtnGravar.Enabled := true;
  BtnCancelar.Enabled := true;
  EdtCod.ReadOnly := false;
  EdtPreco.ReadOnly := false;
  EdtMarca.ReadOnly := false;
  EdtAno.ReadOnly := false;
  EdtPorAlc.ReadOnly := false;
  EdtEstoque.ReadOnly := false;
  EdtCod.SetFocus;
end;

procedure TFrmAdega.ProximoUltimo;
begin
  if(DM_Adega.TB_Adega.Eof)then
  begin
    BtnProximo.Enabled:=false;
    BtnUltimo.Enabled:=false;
  end;
  BtnPrimeiro.Enabled:=true;
  BtnAnterior.Enabled:=true;
end;

procedure TFrmAdega.TabelaVazia;
begin
  if(DM_Adega.TB_Adega.RecordCount = 0)then
    begin
      BtnPrimeiro.Enabled := False;
      BtnAnterior.Enabled := False;
      BtnProximo.Enabled := False;
      BtnUltimo.Enabled := False;
      BtnDeletar.Enabled := False;
      BtnEditar.Enabled := False;
    end;
end;             

procedure TFrmAdega.AnteriorPrimeiro;
begin
  if (DM_Adega.TB_Adega.Bof) then
  begin
    BtnPrimeiro.Enabled := False;
    BtnAnterior.Enabled := False;
  end;
  BtnUltimo.Enabled := True;
  BtnProximo.Enabled := True;
end;

procedure TFrmAdega.BtnPrimeiroClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.First;
  AnteriorPrimeiro;
end;

procedure TFrmAdega.BtnAnteriorClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Prior;
  AnteriorPrimeiro;
end;

procedure TFrmAdega.BtnProximoClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Next;
  ProximoUltimo;
end;

procedure TFrmAdega.BtnUltimoClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Last;
  ProximoUltimo;
end;

procedure TFrmAdega.BtnInserirClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Insert;
  Edicao;
end;

procedure TFrmAdega.BtnDeletarClick(Sender: TObject);
begin
  if (DM_Adega.TB_Adega.Bof = false) and (DM_Adega.TB_Adega.Eof = false) then
  begin
    if (MRYes = Application.MessageBox('Certeza?!', 'Remover Registro',
        MB_YESNO + MB_ICONQUESTION)) then
    begin
      DM_Adega.TB_Adega.Delete;
      TabelaVazia;
    end;
  end;
end;

procedure TFrmAdega.BtnEditarClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Edit;
  Edicao;
end;

procedure TFrmAdega.BtnGravarClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Post;
  Rolagem;
end;

procedure TFrmAdega.BtnCancelarClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Cancel;
  Rolagem;
end;

procedure TFrmAdega.BtnAtualizarClick(Sender: TObject);
begin
  DM_Adega.TB_Adega.Refresh;
end;

procedure TFrmAdega.FormShow(Sender: TObject);
begin
  DM_Adega.TB_Adega.Open;
  if(DM_Adega.TB_Adega.RecordCount=0)then
  begin
    TabelaVazia;
  end
  else
  begin
    AnteriorPrimeiro;
  end;
end;

procedure TFrmAdega.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM_Adega.TB_Adega.Close;
end;

end.
