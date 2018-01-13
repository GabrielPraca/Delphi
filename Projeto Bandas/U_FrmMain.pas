unit U_FrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, XPMan, ShellAPI;

type
  TFrmCadBanda = class(TForm)
    Label2: TLabel;
    TxtNome: TDBEdit;
    Label3: TLabel;
    TxtFormacao: TDBEdit;
    Label4: TLabel;
    TxtVocalista: TDBEdit;
    Label5: TLabel;
    TxtSite: TDBEdit;
    Label6: TLabel;
    TxtPais: TDBEdit;
    Label7: TLabel;
    TxtFoto: TDBEdit;
    Label8: TLabel;
    TxtUltAlbum: TDBEdit;
    Label9: TLabel;
    TxtPreco: TDBEdit;
    Label10: TLabel;
    TxtEstilo: TDBEdit;
    ImgFoto: TImage;
    BtnFoto: TBitBtn;
    ODFoto: TOpenDialog;
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
    procedure BtnFotoClick(Sender: TObject);
    procedure TxtFotoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);       
    procedure TabelaVazia;
    procedure AnteriorPrimeiro;
    procedure ProximoUltimo;
    procedure Edicao;
    procedure Rolagem;
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
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
  FrmCadBanda: TFrmCadBanda;
  Foto: string;

implementation

uses U_DM_Bands, U_FrmPrincipal;

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
  TxtNome.ReadOnly := true;
  TxtFormacao.ReadOnly := true;
  TxtVocalista.ReadOnly := true;
  TxtSite.ReadOnly := true;
  TxtPais.ReadOnly := true;
  TxtUltAlbum.ReadOnly := true;
  TxtPreco.ReadOnly := true;
  TxtEstilo.ReadOnly := true;
  TxtNome.SetFocus;
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
  TxtNome.ReadOnly := false;
  TxtFormacao.ReadOnly := false;
  TxtVocalista.ReadOnly := false;
  TxtSite.ReadOnly := false;
  TxtPais.ReadOnly := false;
  TxtUltAlbum.ReadOnly := false;
  TxtPreco.ReadOnly := false;
  TxtEstilo.ReadOnly := false;
  TxtNome.SetFocus;
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

procedure TFrmCadBanda.BtnFotoClick(Sender: TObject);
begin
  beep;
  if MessageBox(Handle, 'Deseja abri uma imagem', 'Imagem',
                MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    ODFoto.Execute;
    TxtFoto.Text := ODFoto.FileName;
  end;
end;

procedure TFrmCadBanda.TxtFotoChange(Sender: TObject);
begin
  Foto := TxtFoto.Text;
  if Foto = '' then
    Foto := 'Data\Canvas\Padrão.bmp';
  ImgFoto.Picture.LoadFromFile(Foto);
end;

procedure TFrmCadBanda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMain.Show;
  DM_Bandas.TB_CadBanda.Close;
end;

procedure TFrmCadBanda.BtnPrimeiroClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.First;
  AnteriorPrimeiro;
end;

procedure TFrmCadBanda.BtnAnteriorClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Prior;
  AnteriorPrimeiro;
end;

procedure TFrmCadBanda.BtnProximoClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Next;
  ProximoUltimo;
end;

procedure TFrmCadBanda.BtnUltimoClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Last;   
  ProximoUltimo;
end;            

procedure TFrmCadBanda.BtnInserirClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Insert;
  Edicao;
end;

procedure TFrmCadBanda.BtnDeletarClick(Sender: TObject);
begin
  if (DM_Bandas.TB_CadBanda.Bof = false) and (DM_Bandas.TB_CadBanda.Eof = false) then
  begin
    if (MRYes = Application.MessageBox('Certeza?!', 'Remover Registro',
        MB_YESNO + MB_ICONQUESTION)) then
    begin
      DM_Bandas.TB_CadBanda.Delete;
      TabelaVazia;
    end;
  end;
end;

procedure TFrmCadBanda.BtnEditarClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Edit;
  Edicao;
end;

procedure TFrmCadBanda.BtnGravarClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Post;  
  Rolagem;
end;

procedure TFrmCadBanda.BtnCancelarClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Cancel;    
  Rolagem;
end;

procedure TFrmCadBanda.BtnAtualizarClick(Sender: TObject);
begin
  DM_Bandas.TB_CadBanda.Refresh;
end;

end.
