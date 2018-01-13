unit U_FrmCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFrmCadastro = class(TForm)
    PageControl1: TPageControl;
    TabCliente: TTabSheet;
    TabImovel: TTabSheet;
    TabTipoImo: TTabSheet;
    TabAluguel: TTabSheet;
    Label1: TLabel;
    TxtCNome: TDBEdit;
    Label2: TLabel;
    TxtCRG: TDBEdit;
    Label3: TLabel;
    TxtCCPF: TDBEdit;
    Label4: TLabel;
    TxtCNasc: TDBEdit;
    Label5: TLabel;
    TxtCFone: TDBEdit;
    Label6: TLabel;
    TxtCEstCivil: TDBEdit;
    Label7: TLabel;
    TxtICodTipo: TDBEdit;
    Label8: TLabel;
    TxtIAreaC: TDBEdit;
    Label9: TLabel;
    TxtIComodos: TDBEdit;
    Label10: TLabel;
    TxtIGaragem: TDBEdit;
    Label11: TLabel;
    TxtIFoto: TDBEdit;
    Label12: TLabel;
    TxtIValor: TDBEdit;
    Label13: TLabel;
    TxtTTipo: TDBEdit;
    Label14: TLabel;
    TxtACodImo: TDBEdit;
    Label15: TLabel;
    TxtACodCli: TDBEdit;
    Label16: TLabel;
    TxtADataIni: TDBEdit;
    Label17: TLabel;
    TxtADataFim: TDBEdit;
    BtnCPrimeiro: TBitBtn;
    BtnCAnterior: TBitBtn;
    BtnCProximo: TBitBtn;
    BtnCUltimo: TBitBtn;
    BtnCInserir: TBitBtn;
    BtnCDeletar: TBitBtn;
    BtnCEditar: TBitBtn;
    BtnCGravar: TBitBtn;
    BtnCCancelar: TBitBtn;
    BtnCAtualizar: TBitBtn;
    BtnIPrimeiro: TBitBtn;
    BtnIAnterior: TBitBtn;
    BtnIProximo: TBitBtn;
    BtnIUltimo: TBitBtn;
    BtnIInserir: TBitBtn;
    BtnIDeletar: TBitBtn;
    BtnIEditar: TBitBtn;
    BtnIGravar: TBitBtn;
    BtnICancelar: TBitBtn;
    BtnIAtualizar: TBitBtn;
    BtnTAtualizar: TBitBtn;
    BtnTCancelar: TBitBtn;
    BtnTGravar: TBitBtn;
    BtnTEditar: TBitBtn;
    BtnTDeletar: TBitBtn;
    BtnTInserir: TBitBtn;
    BtnTUltimo: TBitBtn;
    BtnTProximo: TBitBtn;
    BtnTAnterior: TBitBtn;
    BtnTPrimeiro: TBitBtn;
    BtnAAtualizar: TBitBtn;
    BtnACancelar: TBitBtn;
    BtnAGravar: TBitBtn;
    BtnAEditar: TBitBtn;
    BtnADeletar: TBitBtn;
    BtnAInserir: TBitBtn;
    BtnAUltimo: TBitBtn;
    BtnAProximo: TBitBtn;
    BtnAAnterior: TBitBtn;
    BtnAPrimeiro: TBitBtn;     
    procedure CTabelaVazia;
    procedure CAnteriorPrimeiro;
    procedure CProximoUltimo;
    procedure CEdicao;
    procedure CRolagem;
    procedure ITabelaVazia;
    procedure IAnteriorPrimeiro;
    procedure IProximoUltimo;
    procedure IEdicao;
    procedure IRolagem;
    procedure TTabelaVazia;
    procedure TAnteriorPrimeiro;
    procedure TProximoUltimo;
    procedure TEdicao;
    procedure TRolagem;
    procedure ATabelaVazia;
    procedure AAnteriorPrimeiro;
    procedure AProximoUltimo;
    procedure AEdicao;
    procedure ARolagem;
    procedure BtnCPrimeiroClick(Sender: TObject);
    procedure BtnCAnteriorClick(Sender: TObject);
    procedure BtnCProximoClick(Sender: TObject);
    procedure BtnCUltimoClick(Sender: TObject);
    procedure BtnCInserirClick(Sender: TObject);
    procedure BtnCDeletarClick(Sender: TObject);
    procedure BtnCEditarClick(Sender: TObject);
    procedure BtnCGravarClick(Sender: TObject);
    procedure BtnCCancelarClick(Sender: TObject);
    procedure BtnCAtualizarClick(Sender: TObject);
    procedure BtnIPrimeiroClick(Sender: TObject);
    procedure BtnIAnteriorClick(Sender: TObject);
    procedure BtnIProximoClick(Sender: TObject);
    procedure BtnIUltimoClick(Sender: TObject);
    procedure BtnIInserirClick(Sender: TObject);
    procedure BtnIDeletarClick(Sender: TObject);
    procedure BtnIEditarClick(Sender: TObject);
    procedure BtnIGravarClick(Sender: TObject);
    procedure BtnICancelarClick(Sender: TObject);
    procedure BtnIAtualizarClick(Sender: TObject);
    procedure BtnTPrimeiroClick(Sender: TObject);
    procedure BtnTAnteriorClick(Sender: TObject);
    procedure BtnTProximoClick(Sender: TObject);
    procedure BtnTUltimoClick(Sender: TObject);
    procedure BtnTInserirClick(Sender: TObject);
    procedure BtnTDeletarClick(Sender: TObject);
    procedure BtnTEditarClick(Sender: TObject);
    procedure BtnTGravarClick(Sender: TObject);
    procedure BtnTCancelarClick(Sender: TObject);
    procedure BtnTAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

uses U_DMImobiliaria;

{$R *.dfm}
//Cliente
procedure TFrmCadastro.CRolagem;
begin
  BtnCPrimeiro.Enabled := true;
  BtnCAnterior.Enabled := true;
  BtnCProximo.Enabled := true;
  BtnCUltimo.Enabled := true;
  BtnCAtualizar.Enabled := true;
  BtnCEditar.Enabled := true;
  BtnCInserir.Enabled := true;
  BtnCDeletar.Enabled := true;
  BtnCGravar.Enabled := false;
  BtnCCancelar.Enabled := false;
  TxtCNome.ReadOnly := true;
  TxtCRG.ReadOnly := true;
  TxtCCPF.ReadOnly := true;
  TxtCNasc.ReadOnly := true;
  TxtCFone.ReadOnly := true;
  TxtCEstCivil.ReadOnly := true;
end;

procedure TFrmCadastro.CEdicao;
begin
  BtnCPrimeiro.Enabled := false;
  BtnCAnterior.Enabled := false;
  BtnCProximo.Enabled := false;
  BtnCUltimo.Enabled := false;
  BtnCAtualizar.Enabled := false;
  BtnCEditar.Enabled := false;
  BtnCInserir.Enabled := false;
  BtnCDeletar.Enabled := false;
  BtnCGravar.Enabled := true;
  BtnCCancelar.Enabled := true;
  TxtCNome.ReadOnly := false;
  TxtCRG.ReadOnly := false;
  TxtCCPF.ReadOnly := false;
  TxtCNasc.ReadOnly := false;
  TxtCFone.ReadOnly := false;
  TxtCEstCivil.ReadOnly := false;
  TxtCNome.SetFocus;
end;

procedure TFrmCadastro.CProximoUltimo;
begin
  if(DMImobiliaria.TBCliente.Eof)then
  begin
    BtnCProximo.Enabled:=false;
    BtnCUltimo.Enabled:=false;
  end;
  BtnCPrimeiro.Enabled:=true;
  BtnCAnterior.Enabled:=true;
end;

procedure TFrmCadastro.CTabelaVazia;
begin
  if(DMImobiliaria.TBCliente.RecordCount = 0)then
    begin
      BtnCPrimeiro.Enabled := False;
      BtnCAnterior.Enabled := False;
      BtnCProximo.Enabled := False;
      BtnCUltimo.Enabled := False;
      BtnCDeletar.Enabled := False;
      BtnCEditar.Enabled := False;
    end;
end;             

procedure TFrmCadastro.CAnteriorPrimeiro;
begin
  if (DMImobiliaria.TBCliente.Bof) then
  begin
    BtnCPrimeiro.Enabled := False;
    BtnCAnterior.Enabled := False;
  end;
  BtnCUltimo.Enabled := True;
  BtnCProximo.Enabled := True;
end;
//Imóvel
procedure TFrmCadastro.IRolagem;
begin
  BtnIPrimeiro.Enabled := true;
  BtnIAnterior.Enabled := true;
  BtnIProximo.Enabled := true;
  BtnIUltimo.Enabled := true;
  BtnIAtualizar.Enabled := true;
  BtnIEditar.Enabled := true;
  BtnIInserir.Enabled := true;
  BtnIDeletar.Enabled := true;
  BtnIGravar.Enabled := false;
  BtnICancelar.Enabled := false;
  TxtICodTipo.ReadOnly := true;
  TxtIAreaC.ReadOnly := true;
  TxtIComodos.ReadOnly := true;
  TxtIGaragem.ReadOnly := true;
  TxtIFoto.ReadOnly := true;
  TxtIValor.ReadOnly := true;
end;

procedure TFrmCadastro.IEdicao;
begin
  BtnIPrimeiro.Enabled := false;
  BtnIAnterior.Enabled := false;
  BtnIProximo.Enabled := false;
  BtnIUltimo.Enabled := false;
  BtnIAtualizar.Enabled := false;
  BtnIEditar.Enabled := false;
  BtnIInserir.Enabled := false;
  BtnIDeletar.Enabled := false;
  BtnIGravar.Enabled := true;
  BtnICancelar.Enabled := true;
  TxtICodTipo.ReadOnly := false;
  TxtIAreaC.ReadOnly := false;
  TxtIComodos.ReadOnly := false;
  TxtIGaragem.ReadOnly := false;
  TxtIFoto.ReadOnly := false;
  TxtIValor.ReadOnly := false;
  TxtICodTipo.SetFocus;
end;

procedure TFrmCadastro.IProximoUltimo;
begin
  if(DMImobiliaria.TBImovel.Eof)then
  begin
    BtnIProximo.Enabled:=false;
    BtnIUltimo.Enabled:=false;
  end;
  BtnIPrimeiro.Enabled:=true;
  BtnIAnterior.Enabled:=true;
end;

procedure TFrmCadastro.ITabelaVazia;
begin
  if(DMImobiliaria.TBImovel.RecordCount = 0)then
    begin
      BtnIPrimeiro.Enabled := False;
      BtnIAnterior.Enabled := False;
      BtnIProximo.Enabled := False;
      BtnIUltimo.Enabled := False;
      BtnIDeletar.Enabled := False;
      BtnIEditar.Enabled := False;
    end;
end;             

procedure TFrmCadastro.IAnteriorPrimeiro;
begin
  if (DMImobiliaria.TBImovel.Bof) then
  begin
    BtnIPrimeiro.Enabled := False;
    BtnIAnterior.Enabled := False;
  end;
  BtnIUltimo.Enabled := True;
  BtnIProximo.Enabled := True;
end;
//Tipo Imóvel
procedure TFrmCadastro.TRolagem;
begin
  BtnTPrimeiro.Enabled := true;
  BtnTAnterior.Enabled := true;
  BtnTProximo.Enabled := true;
  BtnTUltimo.Enabled := true;
  BtnTAtualizar.Enabled := true;
  BtnTEditar.Enabled := true;
  BtnTInserir.Enabled := true;
  BtnTDeletar.Enabled := true;
  BtnTGravar.Enabled := false;
  BtnTCancelar.Enabled := false;
  TxtTTipo.ReadOnly := true;
end;

procedure TFrmCadastro.TEdicao;
begin
  BtnTPrimeiro.Enabled := false;
  BtnTAnterior.Enabled := false;
  BtnTProximo.Enabled := false;
  BtnTUltimo.Enabled := false;
  BtnTAtualizar.Enabled := false;
  BtnTEditar.Enabled := false;
  BtnTInserir.Enabled := false;
  BtnTDeletar.Enabled := false;
  BtnTGravar.Enabled := true;
  BtnTCancelar.Enabled := true;
  TxtTTipo.ReadOnly := false;
  TxtTTipo.SetFocus;
end;

procedure TFrmCadastro.TProximoUltimo;
begin
  if(DMImobiliaria.TBTipoImo.Eof)then
  begin
    BtnTProximo.Enabled:=false;
    BtnTUltimo.Enabled:=false;
  end;
  BtnTPrimeiro.Enabled:=true;
  BtnTAnterior.Enabled:=true;
end;

procedure TFrmCadastro.TTabelaVazia;
begin
  if(DMImobiliaria.TBTipoImo.RecordCount = 0)then
    begin
      BtnTPrimeiro.Enabled := False;
      BtnTAnterior.Enabled := False;
      BtnTProximo.Enabled := False;
      BtnTUltimo.Enabled := False;
      BtnTDeletar.Enabled := False;
      BtnTEditar.Enabled := False;
    end;
end;             

procedure TFrmCadastro.TAnteriorPrimeiro;
begin
  if (DMImobiliaria.TBTipoImo.Bof) then
  begin
    BtnTPrimeiro.Enabled := False;
    BtnTAnterior.Enabled := False;
  end;
  BtnTUltimo.Enabled := True;
  BtnTProximo.Enabled := True;
end;
//Aluguel
procedure TFrmCadastro.ARolagem;
begin
  BtnAPrimeiro.Enabled := true;
  BtnAAnterior.Enabled := true;
  BtnAProximo.Enabled := true;
  BtnAUltimo.Enabled := true;
  BtnAAtualizar.Enabled := true;
  BtnAEditar.Enabled := true;
  BtnAInserir.Enabled := true;
  BtnADeletar.Enabled := true;
  BtnAGravar.Enabled := false;
  BtnACancelar.Enabled := false;
  TxtACodImo.ReadOnly := true;
  TxtACodCli.ReadOnly := true;
  TxtADataIni.ReadOnly := true;
  TxtADataFim.ReadOnly := true;
end;

procedure TFrmCadastro.AEdicao;
begin
  BtnAPrimeiro.Enabled := false;
  BtnAAnterior.Enabled := false;
  BtnAProximo.Enabled := false;
  BtnAUltimo.Enabled := false;
  BtnAAtualizar.Enabled := false;
  BtnAEditar.Enabled := false;
  BtnAInserir.Enabled := false;
  BtnADeletar.Enabled := false;
  BtnAGravar.Enabled := true;
  BtnACancelar.Enabled := true;
  TxtACodImo.ReadOnly := true;
  TxtACodCli.ReadOnly := true;
  TxtADataIni.ReadOnly := true;
  TxtADataFim.ReadOnly := true;  
  TxtACodImo.SetFocus;
end;

procedure TFrmCadastro.AProximoUltimo;
begin
  if(DMImobiliaria.TBAluguel.Eof)then
  begin
    BtnTProximo.Enabled:=false;
    BtnTUltimo.Enabled:=false;
  end;
  BtnTPrimeiro.Enabled:=true;
  BtnTAnterior.Enabled:=true;
end;

procedure TFrmCadastro.ATabelaVazia;
begin
  if(DMImobiliaria.TBAluguel.RecordCount = 0)then
    begin
      BtnTPrimeiro.Enabled := False;
      BtnTAnterior.Enabled := False;
      BtnTProximo.Enabled := False;
      BtnTUltimo.Enabled := False;
      BtnTDeletar.Enabled := False;
      BtnTEditar.Enabled := False;
    end;
end;             

procedure TFrmCadastro.AAnteriorPrimeiro;
begin
  if (DMImobiliaria.TBAluguel.Bof) then
  begin
    BtnTPrimeiro.Enabled := False;
    BtnTAnterior.Enabled := False;
  end;
  BtnTUltimo.Enabled := True;
  BtnTProximo.Enabled := True;
end;
//Cliente
procedure TFrmCadastro.BtnCPrimeiroClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.First;
  CAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnCAnteriorClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Prior;
  CAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnCProximoClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Next;
  CProximoUltimo;
end;

procedure TFrmCadastro.BtnCUltimoClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Last;
  CProximoUltimo;
end;

procedure TFrmCadastro.BtnCInserirClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Insert;
  CEdicao;
end;

procedure TFrmCadastro.BtnCDeletarClick(Sender: TObject);
begin
  if (DMImobiliaria.TBCliente.Bof = false) and (DMImobiliaria.TBCliente.Eof = false) then
  begin
    if (MRYes = Application.MessageBox('Certeza?!', 'Remover Registro',
        MB_YESNO + MB_ICONQUESTION)) then
    begin
      DMImobiliaria.TBCliente.Delete;
      CTabelaVazia;
    end;
  end;
end;

procedure TFrmCadastro.BtnCEditarClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Edit;
  CEdicao;
end;

procedure TFrmCadastro.BtnCGravarClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Post;  
  CRolagem;
end;

procedure TFrmCadastro.BtnCCancelarClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Cancel;
  CRolagem;
end;

procedure TFrmCadastro.BtnCAtualizarClick(Sender: TObject);
begin
  DMImobiliaria.TBCliente.Refresh;
end;
//Imóvel
procedure TFrmCadastro.BtnIPrimeiroClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.First;
  IAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnIAnteriorClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Prior;
  IAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnIProximoClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Next;
  IProximoUltimo;
end;

procedure TFrmCadastro.BtnIUltimoClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Last;
  IProximoUltimo;
end;

procedure TFrmCadastro.BtnIInserirClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Insert;
  IEdicao;
end;

procedure TFrmCadastro.BtnIDeletarClick(Sender: TObject);
begin
  if (DMImobiliaria.TBImovel.Bof = false) and (DMImobiliaria.TBImovel.Eof = false) then
  begin
    if (MRYes = Application.MessageBox('Certeza?!', 'Remover Registro',
        MB_YESNO + MB_ICONQUESTION)) then
    begin
      DMImobiliaria.TBImovel.Delete;
      ITabelaVazia;
    end;
  end;
end;

procedure TFrmCadastro.BtnIEditarClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Edit;
  IEdicao;
end;

procedure TFrmCadastro.BtnIGravarClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Post;
  IRolagem;
end;

procedure TFrmCadastro.BtnICancelarClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Cancel;
  IRolagem;
end;

procedure TFrmCadastro.BtnIAtualizarClick(Sender: TObject);
begin
  DMImobiliaria.TBImovel.Refresh;
end;
//Tipo Imóvel
procedure TFrmCadastro.BtnTPrimeiroClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.First;
  IAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnTAnteriorClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Prior;
  IAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnTProximoClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Next;
  IProximoUltimo;
end;

procedure TFrmCadastro.BtnTUltimoClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Last;
  IProximoUltimo;
end;

procedure TFrmCadastro.BtnTInserirClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Insert;
  IEdicao;
end;

procedure TFrmCadastro.BtnTDeletarClick(Sender: TObject);
begin
  if (DMImobiliaria.TBTipoImo.Bof = false) and (DMImobiliaria.TBTipoImo.Eof = false) then
  begin
    if (MRYes = Application.MessageBox('Certeza?!', 'Remover Registro',
        MB_YESNO + MB_ICONQUESTION)) then
    begin
      DMImobiliaria.TBTipoImo.Delete;
      ITabelaVazia;
    end;
  end;
end;

procedure TFrmCadastro.BtnTEditarClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Edit;
  IEdicao;
end;

procedure TFrmCadastro.BtnTGravarClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Post;
  IRolagem;
end;

procedure TFrmCadastro.BtnTCancelarClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Cancel;
  IRolagem;
end;

procedure TFrmCadastro.BtnTAtualizarClick(Sender: TObject);
begin
  DMImobiliaria.TBTipoImo.Refresh;
end;
//Aluguel
procedure TFrmCadastro.BtnAPrimeiroClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.First;
  IAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnAAnteriorClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Prior;
  IAnteriorPrimeiro;
end;

procedure TFrmCadastro.BtnAProximoClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Next;
  IProximoUltimo;
end;

procedure TFrmCadastro.BtnAUltimoClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Last;
  IProximoUltimo;
end;

procedure TFrmCadastro.BtnAInserirClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Insert;
  IEdicao;
end;

procedure TFrmCadastro.BtnADeletarClick(Sender: TObject);
begin
  if (DMImobiliaria.TBAluguel.Bof = false) and (DMImobiliaria.TBAluguel.Eof = false) then
  begin
    if (MRYes = Application.MessageBox('Certeza?!', 'Remover Registro',
        MB_YESNO + MB_ICONQUESTION)) then
    begin
      DMImobiliaria.TBAluguel.Delete;
      ITabelaVazia;
    end;
  end;
end;

procedure TFrmCadastro.BtnAEditarClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Edit;
  IEdicao;
end;

procedure TFrmCadastro.BtnAGravarClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Post;
  IRolagem;
end;

procedure TFrmCadastro.BtnACancelarClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Cancel;
  IRolagem;
end;

procedure TFrmCadastro.BtnAAtualizarClick(Sender: TObject);
begin
  DMImobiliaria.TBAluguel.Refresh;
end;

end.
