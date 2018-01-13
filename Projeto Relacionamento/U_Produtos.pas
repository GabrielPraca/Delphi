unit U_Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  TFrmProdutos = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBGSetor: TDBGrid;
    DBGrid1: TDBGrid;
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
    procedure DBEdit4Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBGSetorCellClick(Column: TColumn);
    procedure TabelaVazia;
    procedure AnteriorPrimeiro;
    procedure ProximoUltimo;
    procedure Edicao;
    procedure Rolagem;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

uses U_DMDados, DB;

{$R *.dfm}

procedure TFrmCadBanda.Rolagem;
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
  DBEdit2.ReadOnly := true;
  DBEdit3.ReadOnly := true;
  DBEdit4.ReadOnly := true;
  DBEdit2.SetFocus;
end;

procedure TFrmCadBanda.Edicao;
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
  DBEdit2.ReadOnly := false;
  DBEdit3.ReadOnly := false;
  DBEdit4.ReadOnly := false;
  DBEdit2.SetFocus;
end;

procedure TFrmCadBanda.ProximoUltimo;
begin
  if(DM_Bandas.TB_CadBanda.Eof)then
  begin
    BtnProximo.Enabled:=false;
    BtnUltimo.Enabled:=false;
  end;
  BtnPrimeiro.Enabled:=true;
  BtnAnterior.Enabled:=true;
end;

procedure TFrmCadBanda.TabelaVazia;
begin
  if(DM_Bandas.TB_CadBanda.RecordCount = 0)then
    begin
      BtnPrimeiro.Enabled := False;
      BtnAnterior.Enabled := False;
      BtnProximo.Enabled := False;
      BtnUltimo.Enabled := False;
      BtnDeletar.Enabled := False;
      BtnEditar.Enabled := False;
    end;
end;             

procedure TFrmCadBanda.AnteriorPrimeiro;
begin
  if (DM_Bandas.TB_CadBanda.Bof) then
  begin
    BtnPrimeiro.Enabled := False;
    BtnAnterior.Enabled := False;
  end;
  BtnUltimo.Enabled := True;
  BtnProximo.Enabled := True;
end;

procedure TFrmProdutos.DBEdit4Click(Sender: TObject);
begin
  DBGSetor.Visible := true;
end;

procedure TFrmProdutos.DBEdit2Exit(Sender: TObject);
begin
  DBEdit2.Text := UpperCase(DBEdit2.Text);
end;

procedure TFrmProdutos.DBGSetorCellClick(Column: TColumn);
var escolhido: string;
begin
  DBGSetor.Visible := false;
  //escolhido := DBGSetor.SelectedField.AsString;
  escolhido := DBGSetor.Columns.Items[0].Field.Text;
  DBEdit4.Text := escolhido;
end;

procedure TFrmProdutos.BtnPrimeiroClick(Sender: TObject);
begin
  DMDados.TBProduto.First;
  AnteriorPrimeiro;
end;

procedure TFrmProdutos.BtnAnteriorClick(Sender: TObject);
begin
  DMDados.TBProduto.Prior;
  AnteriorPrimeiro;
end;

procedure TFrmProdutos.BtnProximoClick(Sender: TObject);
begin
  DMDados.TBProduto.Next;  
  ProximoUltimo;

end;

procedure TFrmProdutos.BtnUltimoClick(Sender: TObject);
begin
  DMDados.TBProduto.Last;  
  ProximoUltimo;
end;

procedure TFrmProdutos.BtnInserirClick(Sender: TObject);
begin
  DMDados.TBProduto.Insert;
  Edicao;
end;

procedure TFrmProdutos.BtnDeletarClick(Sender: TObject);
begin
  if (DMDados.TBProduto.Bof = false) and (DMDados.TBProduto.Eof = false) then
  begin
    if (MRYes = Application.MessageBox('Certeza?!', 'Remover Registro',
        MB_YESNO + MB_ICONQUESTION)) then
    begin
      DMDados.TBProduto.Delete;
      TabelaVazia;
    end;
  end;
end;

procedure TFrmProdutos.BtnEditarClick(Sender: TObject);
begin
  DMDados.TBProduto.Edit;
  Edicao;
end;

procedure TFrmProdutos.BtnGravarClick(Sender: TObject);
begin
  DMDados.TBProduto.Post; 
  Rolagem;
end;

procedure TFrmProdutos.BtnCancelarClick(Sender: TObject);
begin
  DMDados.TBProduto.Cancel;
  Rolagem;
end;

procedure TFrmProdutos.BtnAtualizarClick(Sender: TObject);
begin
  DMDados.TBProduto.Refresh;
end;

end.
