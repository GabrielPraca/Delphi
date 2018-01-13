unit U_Locacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFrmMLocacao = class(TForm)
    PgcLoca: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    LblCodCli: TLabel;
    LblNomeCli: TLabel;
    LblFoneCli: TLabel;
    LblNascCli: TLabel;
    LblCPFCli: TLabel;
    EdtCodCli: TEdit;
    EdtFoneCli: TEdit;
    EdtNascCli: TEdit;
    EdtCPFCli: TEdit;
    BtnCadastrarCli: TButton;
    EdtNomeCli: TEdit;
    EdtCodImo: TEdit;
    LblCodImo: TLabel;
    LblDescImo: TLabel;
    EdtDescImo: TEdit;
    BtnCadastrarImo: TButton;
    LblTipo: TLabel;
    EdtTipoImo: TEdit;
    EdtValAlugImo: TEdit;
    LblValAlugImo: TLabel;
    LblCodImovel: TLabel;
    LblCodCliente: TLabel;
    LblIniContrato: TLabel;
    LblDuracao: TLabel;
    EdtCodImovel: TEdit;
    EdtCodCliente: TEdit;
    EdtIniContrato: TEdit;
    EdtDuracao: TEdit;
    LstDetalhes: TListBox;
    BtnCadastrarLoca: TButton;
    BtnDetalhesLoca: TButton;
    procedure BtnCadastrarImoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCadastrarCliClick(Sender: TObject);
    procedure BtnCadastrarLocaClick(Sender: TObject);
    procedure BtnDetalhesLocaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMLocacao: TFrmMLocacao;
  CadCliCount, CadImoCount, CadLocCount: integer;
  CadCli: array[0..9, 0..4] of string;
  CadImo: array[0..9, 0..3] of string;
  CadLoc: array[0..9, 0..4] of string;

implementation

{$R *.dfm}

procedure TFrmMLocacao.BtnCadastrarImoClick(Sender: TObject);
var i: integer;
    encontrado: Boolean;
begin
  EdtCodImo.Text := Trim(EdtCodImo.Text);
  EdtTipoImo.Text := Trim(EdtTipoImo.Text);
  EdtDescImo.Text := Trim(EdtDescImo.Text);
  EdtValAlugImo.Text := Trim(EdtValAlugImo.Text);
  if(EdtCodImo.Text = '') then
  Begin
    ShowMessage('Campo Código vazio.');
    EdtCodImo.SetFocus();
  End
  else if(EdtTipoImo.Text = '') then
  Begin
    ShowMessage('Campo Tipo vazio.');
    EdtTipoImo.SetFocus();
  End
  else if(EdtDescImo.Text = '') then
  Begin
    ShowMessage('Campo Descrição vazio.');
    EdtDescImo.SetFocus();
  End
  else if(EdtValAlugImo.Text = '') then
  Begin
    ShowMessage('Campo Valor Aluguel vazio.');
    EdtValAlugImo.SetFocus();
  End
  else
  Begin
    if(CadImoCount < 9) then
    Begin
      encontrado:= false;
      for i:=0 to CadImoCount-1 do
        if(CadImo[i, 0] = EdtCodImo.Text) then
        Begin
          encontrado:= true;
          ShowMessage('Este código ja foi cadastrado');
          EdtCodImo.SetFocus();
        End;
      if not(encontrado) then
      Begin
        CadImo[CadImoCount, 0] := EdtCodImo.Text;
        CadImo[CadImoCount, 1] := EdtTipoImo.Text;
        CadImo[CadImoCount, 2] := EdtDescImo.Text;
        CadImo[CadImoCount, 3] := EdtValAlugImo.Text;
        Inc(CadImoCount);
        EdtCodImo.Clear();
        EdtTipoImo.Clear();
        EdtDescImo.Clear();
        EdtValAlugImo.Clear();
      End;
    End
    else
      ShowMessage('Memória Cheia.');
  End;
end;

procedure TFrmMLocacao.FormCreate(Sender: TObject);
Begin
  CadCliCount:= 0;
  CadImoCount:= 0;
  CadLocCount:= 0;
end;

procedure TFrmMLocacao.BtnCadastrarCliClick(Sender: TObject);
var i: integer;
    encontrado: Boolean;
begin
  EdtCodCli.Text:= Trim(EdtCodCli.Text);
  EdtNomeCli.Text:= Trim(EdtNomeCli.Text);
  EdtFoneCli.Text:= Trim(EdtFoneCli.Text);
  EdtNascCli.Text:= Trim(EdtNascCli.Text);
  EdtCPFCli.Text:= Trim(EdtCPFCli.Text);
  if(EdtCodCli.Text = '') then
  Begin
    ShowMessage('Campo Código vazio.');
    EdtCodCli.SetFocus();
  End
  else if(EdtNomeCli.Text = '') then
  Begin
    ShowMessage('Campo Nome vazio.');
    EdtNomeCli.SetFocus();
  End
  else if(EdtFoneCli.Text = '') then
  Begin
    ShowMessage('Campo Fone vazio.');
    EdtFoneCli.SetFocus();
  End
  else if(EdtNascCli.Text = '') then
  Begin
    ShowMessage('Campo Nascimento vazio.');
    EdtNascCli.SetFocus();
  End
  else if(EdtNomeCli.Text = '') then
  Begin
    ShowMessage('Campo CPF vazio.');
    EdtCPFCli.SetFocus();
  End
  else
  Begin
    if(CadCliCount < 9) then
    Begin
      encontrado:= false;
      for i:=0 to CadCliCount-1 do
        if(CadCli[i, 0] = EdtCodCli.Text) then
        Begin
          encontrado:= true;
          ShowMessage('Este código ja foi cadastrado');
          EdtCodCli.SetFocus();
        End;
      if not(encontrado) then
      Begin
        CadCli[CadCliCount, 0]:= EdtCodCli.Text;
        CadCli[CadCliCount, 1]:= EdtNomeCli.Text;
        CadCli[CadCliCount, 2]:= EdtFoneCli.Text;
        CadCli[CadCliCount, 3]:= EdtNascCli.Text;
        CadCli[CadCliCount, 4]:= EdtCPFCli.Text;
        Inc(CadCliCount);
        EdtCodCli.Clear();
        EdtNomeCli.Clear();
        EdtFoneCli.Clear();
        EdtNascCli.Clear();
        EdtCPFCli.Clear();
      End;
    End
    else
      ShowMessage('Memória Cheia');
  End;
end;

procedure TFrmMLocacao.BtnCadastrarLocaClick(Sender: TObject);
var i: integer;
    encontrado: Boolean;
begin
  EdtCodImovel.Text:= Trim(EdtCodImovel.Text);
  EdtCodCliente.Text:= Trim(EdtCodCliente.Text);
  EdtIniContrato.Text:= Trim(EdtIniContrato.Text);
  EdtDuracao.Text:= Trim(EdtDuracao.Text);
  if(EdtCodImovel.Text = '') then
  Begin
    ShowMessage('Campo Código Imóvel vazio.');
    EdtCodImovel.SetFocus();
  End
  else if(EdtCodCliente.Text = '') then
  Begin
    ShowMessage('Campo Código Cliente vazio.');
    EdtCodCliente.SetFocus();
  End
  else if(EdtIniContrato.Text = '') then
  Begin
    ShowMessage('Campo Início Contrato vazio.');
    EdtIniContrato.SetFocus();
  End
  else if(EdtDuracao.Text = '') then
  Begin
    ShowMessage('Campo Duração vazio.');
    EdtDuracao.SetFocus();
  End
  else
  Begin
    if(CadLocCount < 9) then
    Begin
      encontrado:= false;
      for i:=0 to CadCliCount-1 do
        if(CadCli[i, 0] = EdtCodCliente.Text) then
        Begin
          encontrado:= true;
          Break;
        End;
      if encontrado then
      Begin
        encontrado:= false;
        for i:=0 to CadImoCount-1 do
          if(CadImo[i, 0] = EdtCodImovel.Text) then
          Begin
            encontrado:= true;
            Break;
          End;
        if not(encontrado) then
          ShowMessage('Este imóvel não foi cadastrado.');
      End
      else
        ShowMessage('Este cliente não foi cadastrado.');
      if encontrado then
      Begin
        CadLoc[CadLocCount, 0]:= IntToStr(CadLocCount);
        CadLoc[CadLocCount, 1]:= EdtCodCliente.Text;
        CadLoc[CadLocCount, 2]:= EdtCodImovel.Text;
        CadLoc[CadLocCount, 3]:= EdtIniContrato.Text;
        CadLoc[CadLocCount, 4]:= EdtDuracao.Text;
        Inc(CadLocCount);
        EdtCodCliente.Clear();
        EdtCodImovel.Clear();
        EdtIniContrato.Clear();
        EdtDuracao.Clear();
        LstDetalhes.Clear();
      End;
    End
    else
      ShowMessage('Memória Cheia');
  End;
end;

procedure TFrmMLocacao.BtnDetalhesLocaClick(Sender: TObject);
var i: integer;
    encontrado: Boolean;
begin
  LstDetalhes.Clear();
  EdtCodCliente.Text:= Trim(EdtCodCliente.Text);
  EdtCodImovel.Text:= Trim(EdtCodImovel.Text);
  if (EdtCodImovel.Text <> '') then
  Begin
    encontrado:= false;
    for i:=0 to CadImoCount-1 do
      if(CadImo[i, 0] = EdtCodImovel.Text) then
      Begin
        LstDetalhes.Items.Add('Tipo Imóvel: '+CadImo[i, 1]);
        LstDetalhes.Items.Add('Descrição Imóvel: '+CadImo[i, 2]);
        LstDetalhes.Items.Add('Aluguel Imóvel: '+CadImo[i, 3]);
        LstDetalhes.Items.Add('');
        encontrado:= true;
        Break;
      End;
    if not(encontrado) then
      LstDetalhes.Items.Add('Imóvel Cod. "'+EdtCodImovel.Text+'" não encontrado.');
  End;
  if(EdtCodCliente.Text <> '') then
  Begin
    encontrado:= false;
    for i:=0 to CadCliCount-1 do
      if(CadCli[i, 0] = EdtCodCliente.Text) then
      Begin
        LstDetalhes.Items.Add('Nome Cliente: '+CadCli[i, 1]);
        LstDetalhes.Items.Add('Fone Cliente: '+CadCli[i, 2]);
        LstDetalhes.Items.Add('Nasc. Cliente: '+CadCli[i, 3]);
        LstDetalhes.Items.Add('CPF Cliente: '+CadCli[i, 4]);
        encontrado:= true;
        Break;
      End;
    if not(encontrado) then
      LstDetalhes.Items.Add('Cliente Cod. "'+EdtCodCliente.Text+'" não encontrado.');
  End;
end;

end.


