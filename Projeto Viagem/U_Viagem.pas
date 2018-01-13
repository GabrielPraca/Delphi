unit U_Viagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrm_Agencia = class(TForm)
    LblNome: TLabel;
    EdtNome: TEdit;
    GpbEC: TGroupBox;
    RdbSol: TRadioButton;
    RdbCas: TRadioButton;
    LblCon: TLabel;
    EdtCon: TEdit;
    GpbAdultos: TGroupBox;
    LblQA: TLabel;
    RdbNaoA: TRadioButton;
    RdbSimA: TRadioButton;
    EdtA: TEdit;
    GpbCrianca: TGroupBox;
    LblQC: TLabel;
    RdbNaoC: TRadioButton;
    RdbSimC: TRadioButton;
    EdtC: TEdit;
    GpbSaida: TGroupBox;
    RdbFr: TRadioButton;
    RdbCa: TRadioButton;
    RdbMa: TRadioButton;
    RdbFm: TRadioButton;
    CmbLocal: TComboBox;
    GpbDes: TGroupBox;
    RdbJun: TRadioButton;
    RdbCam: TRadioButton;
    RdbSan: TRadioButton;
    RdbPin: TRadioButton;
    RdbPer: TRadioButton;
    BtnCad: TButton;
    LstFicha: TListBox;
    procedure RdbCasClick(Sender: TObject);
    procedure RdbSimAClick(Sender: TObject);
    procedure RdbSimCClick(Sender: TObject);
    procedure RdbSolClick(Sender: TObject);
    procedure RdbNaoAClick(Sender: TObject);
    procedure RdbNaoCClick(Sender: TObject);
    procedure RdbFrClick(Sender: TObject);
    procedure RdbCaClick(Sender: TObject);
    procedure RdbMaClick(Sender: TObject);
    procedure RdbFmClick(Sender: TObject);
    procedure BtnCadClick(Sender: TObject);
    procedure RdbJunClick(Sender: TObject);
    procedure RdbCamClick(Sender: TObject);
    procedure RdbSanClick(Sender: TObject);
    procedure RdbPinClick(Sender: TObject);
    procedure RdbPerClick(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtConExit(Sender: TObject);
    procedure EdtAExit(Sender: TObject);
    procedure EdtCExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Agencia: TFrm_Agencia;
  saida, destino: string;

implementation

{$R *.dfm}

procedure TFrm_Agencia.RdbCasClick(Sender: TObject);
begin
  EdtCon.Enabled:= True;
  EdtCon.SetFocus();
end;

procedure TFrm_Agencia.RdbSimAClick(Sender: TObject);
begin
  EdtA.Enabled:= True;
  EdtA.SetFocus();
end;

procedure TFrm_Agencia.RdbSimCClick(Sender: TObject);
begin
  EdtC.Enabled:= True;
  EdtC.SetFocus();
end;

procedure TFrm_Agencia.RdbSolClick(Sender: TObject);
begin
  EdtCon.Enabled:= False;
  EdtCon.Clear();
end;

procedure TFrm_Agencia.RdbNaoAClick(Sender: TObject);
begin
  EdtA.Enabled:= False;
  EdtA.Clear();
end;

procedure TFrm_Agencia.RdbNaoCClick(Sender: TObject);
begin
  EdtC.Enabled:= False;
  EdtC.Clear();
end;

procedure TFrm_Agencia.RdbFrClick(Sender: TObject);
begin
  CmbLocal.Clear();
  CmbLocal.Items.Add('Centro');
  CmbLocal.Items.Add('Juquery');
  CmbLocal.Items.Add('Palmares');
  saida:= 'Franco da Rocha';
end;

procedure TFrm_Agencia.RdbCaClick(Sender: TObject);
begin
  CmbLocal.Clear();
  CmbLocal.Items.Add('Centro');
  CmbLocal.Items.Add('Laranjeiras');
  CmbLocal.Items.Add('Morro Grande');    
  saida:= 'Caieiras';
end;

procedure TFrm_Agencia.RdbMaClick(Sender: TObject);
begin
  CmbLocal.Clear();
  CmbLocal.Items.Add('Centro');
  CmbLocal.Items.Add('Cemitério');
  CmbLocal.Items.Add('Cinco Lagos');    
  saida:= 'Mairiporã';
end;

procedure TFrm_Agencia.RdbFmClick(Sender: TObject);
begin
  CmbLocal.Clear();
  CmbLocal.Items.Add('Centro');
  CmbLocal.Items.Add('Parque 120');
  CmbLocal.Items.Add('Vera Tereza');
  saida:= 'Francisco Morato';
end;

procedure TFrm_Agencia.RdbJunClick(Sender: TObject);
begin
  destino:= 'Jundiaí';
end;

procedure TFrm_Agencia.RdbCamClick(Sender: TObject);
begin
  destino:= 'Campinas';
end;

procedure TFrm_Agencia.RdbSanClick(Sender: TObject);
begin
  destino:= 'Santos';
end;

procedure TFrm_Agencia.RdbPinClick(Sender: TObject);
begin
  destino:= 'Pindamonhangaba';
end;

procedure TFrm_Agencia.RdbPerClick(Sender: TObject);
begin
  destino:= 'Perus';
end;

procedure TFrm_Agencia.BtnCadClick(Sender: TObject);
begin
  if(EdtNome.Text = '') then //Verifica se o campo Nome foi digitado
  Begin
    Application.MessageBox('Campo Nome não preenchido.', 'Aviso', 0);
    EdtNome.SetFocus();
  End
  else if(not(RdbSol.Checked) and not(RdbCas.Checked)) then //Verifica os radios do grupo Estado Civil
    Application.MessageBox('Selecione seu estado civil', 'Aviso', 0)
  else if(RdbCas.Checked and (EdtCon.Text = '')) then //Caso o radio Casado for macado, verifica se nome do conjugue foi digitado
  Begin
    Application.MessageBox('Campo Nome do conjuge não preenchido.', 'Aviso', 0);
    EdtCon.SetFocus();
  End
  else if(not(RdbNaoA.Checked) and not(RdbSimA.Checked)) then //Verifica os radios do grupo Adultos
    Application.MessageBox('Selecione se há mais adultos.', 'Aviso', 0)
  else if(RdbSimA.Checked and (EdtA.Text = '')) then //Caso o radio Sim for marcado, verifica se a quantidade foi digitada
  Begin
    Application.MessageBox('Especifique quantos adultos vão a mais.', 'Aviso', 0);
    EdtA.SetFocus();
  End
  else if(not(RdbNaoC.Checked) and not(RdbSimC.Checked)) then //Verifica os radios do grupo Crianças
    Application.MessageBox('Selecione se há mais crianças.', 'Aviso', 0)
  else if(RdbSimC.Checked and (EdtC.Text = '')) then //Caso o radio Sim for marcado, verifica se a quantidade foi digitada
  Begin
    Application.MessageBox('Especifique quantas crianças vão a mais.', 'Aviso', 0);
    EdtC.SetFocus();
  End
  else if(not(RdbFr.Checked) and not(RdbCa.Checked) and not(RdbMa.Checked) and not(RdbFm.Checked)) then //Verifica os radios do grupo Saída
    Application.MessageBox('Selecione de onde você quer sair.', 'Aviso', 0)
  else if(CmbLocal.Text = '') then //Verifica se o ComboBox está vazio
  Begin
    Application.MessageBox('Selecione o bairro de onde você quer sair.', 'Aviso', 0);
    CmbLocal.SetFocus();
  End
  else if(not(RdbJun.Checked) and not(RdbCam.Checked) and not(RdbSan.Checked) and not(RdbPin.Checked) and not(RdbPer.Checked)) then //Verifica os radios do grupo Destino
    Application.MessageBox('Selecione seu destino.', 'Aviso', 0)
  else
  Begin
    LstFicha.Clear();
    LstFicha.Items.Add('Resumo do Cadastro');
    LstFicha.Items.Add('');
    LstFicha.Items.Add('Nome: '+EdtNome.Text);
    if(RdbCas.Checked) then
      LstFicha.Items.Add('Nome do Conjuge: '+EdtCon.Text);
    if(RdbSimC.Checked) then
      LstFicha.Items.Add('Crianças: '+EdtC.Text);
    if(RdbSimA.Checked) then
      LstFicha.Items.Add('Adultos: '+EdtA.Text);
    LstFicha.Items.Add('Origem: '+CmbLocal.Text+', '+saida);
    LstFicha.Items.Add('Destino: '+destino);
  End;
end;

procedure TFrm_Agencia.EdtNomeExit(Sender: TObject);
begin
  EdtNome.Text:= Trim(EdtNome.Text);
end;

procedure TFrm_Agencia.EdtConExit(Sender: TObject);
begin
  EdtCon.Text:= Trim(EdtCon.Text);
end;

procedure TFrm_Agencia.EdtAExit(Sender: TObject);
begin
  EdtA.Text:= Trim(EdtA.Text);
end;

procedure TFrm_Agencia.EdtCExit(Sender: TObject);
begin
  EdtC.Text:= Trim(EdtC.Text);
end;

end.
