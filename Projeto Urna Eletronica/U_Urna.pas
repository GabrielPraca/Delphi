unit U_Urna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmUrna = class(TForm)
    PnlTela: TPanel;
    ImgFundoDigitos: TImage;
    ImgDig0: TImage;
    ImgDig1: TImage;
    ImgDig2: TImage;
    ImgDig3: TImage;
    ImgDig4: TImage;
    ImgDig5: TImage;
    ImgDig6: TImage;
    ImgDig7: TImage;
    ImgDig8: TImage;
    ImgDig9: TImage;
    ImgBranco: TImage;
    ImgCorrige: TImage;
    ImgComfirma: TImage;
    ImgLogoJustElei: TImage;
    LblCategoriaVoto: TLabel;
    EdtNum1: TEdit;
    EdtNum2: TEdit;
    ImgCandidato: TImage;
    LblSeuVotoPara: TLabel;
    LblNumero: TLabel;
    LblNome: TLabel;
    LblNomeCandidato: TLabel;
    LblPartidoCandidato: TLabel;
    LblPartido: TLabel;
    ShpSeparadorAjuda: TShape;
    LblAjuda: TLabel;
    LblAviso: TLabel;
    PnlBrancoSobreposto: TPanel;
    LblVotoNulo: TLabel;
    LblNumErrado: TLabel;
    ShpMolduraTela: TShape;
    TimAlinhaOutroForm: TTimer;
    procedure ImgCorrigeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgCorrigeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgBrancoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgBrancoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgComfirmaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgComfirmaMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig0MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig0MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgDig1Click(Sender: TObject);
    procedure ImgDig2Click(Sender: TObject);
    procedure ImgDig3Click(Sender: TObject);
    procedure ImgDig4Click(Sender: TObject);
    procedure ImgDig5Click(Sender: TObject);
    procedure ImgDig6Click(Sender: TObject);
    procedure ImgDig7Click(Sender: TObject);
    procedure ImgDig8Click(Sender: TObject);
    procedure ImgDig9Click(Sender: TObject);
    procedure ImgDig0Click(Sender: TObject);
    procedure ImgCorrigeClick(Sender: TObject);
    procedure EdtNum2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImgBrancoClick(Sender: TObject);
    procedure ImgComfirmaClick(Sender: TObject);
    procedure encerraVotos(numCand: string);
    procedure segundoTurno(numCand1, numCand2: string);
    procedure TimAlinhaOutroFormTimer(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  FrmUrna: TFrmUrna;
  mutexTeclado, estaEmSegundoTurno, encerrado: boolean;
  SegundoCand1, SegundoCand2: string[2];

implementation

uses Math, U_Votos;

{$R *.dfm}

procedure TFrmUrna.FormCreate(Sender: TObject);
var caminho: string;
begin
  encerrado:= false;
  estaEmSegundoTurno:= false;
  mutexTeclado:= true;
  LblAjuda.Caption:= 'Aperte a Tecla:'+#13+
                     '         VERDE para COMFIRMAR este voto'+#13+
                     '       LARANJA para REINICIAR este voto';
  caminho:= ExtractFilePath(ParamStr(0));
  if not(DirectoryExists(caminho+'\Recursos')) then
    CreateDir(caminho+'\Recursos');
  if not(DirectoryExists(caminho+'\Recursos\Candidatos')) then
    CreateDir(caminho+'\Recursos\Candidatos');
end;

//----------------------Animação de botão em imagens--------------------
procedure TFrmUrna.ImgCorrigeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImgCorrige.Top := ImgCorrige.Top+1;
  ImgCorrige.Left := ImgCorrige.Left+1;
end;

procedure TFrmUrna.ImgCorrigeMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgCorrige.Top := ImgCorrige.Top-1;
  ImgCorrige.Left := ImgCorrige.Left-1;
end;

procedure TFrmUrna.ImgBrancoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImgBranco.Top := ImgBranco.Top+1;
  ImgBranco.Left := ImgBranco.Left+1;
end;

procedure TFrmUrna.ImgBrancoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgBranco.Top := ImgBranco.Top-1;
  ImgBranco.Left := ImgBranco.Left-1;
end;

procedure TFrmUrna.ImgComfirmaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImgComfirma.Top := ImgComfirma.Top+1;
  ImgComfirma.Left := ImgComfirma.Left+1;
end;

procedure TFrmUrna.ImgComfirmaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImgComfirma.Top := ImgComfirma.Top-1;
  ImgComfirma.Left := ImgComfirma.Left-1;
end;

procedure TFrmUrna.ImgDig1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig1.Top := ImgDig1.Top+1;
  ImgDig1.Left := ImgDig1.Left+1;
end;

procedure TFrmUrna.ImgDig1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig1.Top := ImgDig1.Top-1;
  ImgDig1.Left := ImgDig1.Left-1;
end;

procedure TFrmUrna.ImgDig2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig2.Top := ImgDig2.Top+1;
  ImgDig2.Left := ImgDig2.Left+1;
end;

procedure TFrmUrna.ImgDig2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig2.Top := ImgDig2.Top-1;
  ImgDig2.Left := ImgDig2.Left-1;
end;

procedure TFrmUrna.ImgDig3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig3.Top := ImgDig3.Top+1;
  ImgDig3.Left := ImgDig3.Left+1;
end;

procedure TFrmUrna.ImgDig3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig3.Top := ImgDig3.Top-1;
  ImgDig3.Left := ImgDig3.Left-1;
end;

procedure TFrmUrna.ImgDig4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig4.Top := ImgDig4.Top+1;
  ImgDig4.Left := ImgDig4.Left+1;
end;

procedure TFrmUrna.ImgDig4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig4.Top := ImgDig4.Top-1;
  ImgDig4.Left := ImgDig4.Left-1;
end;

procedure TFrmUrna.ImgDig5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig5.Top := ImgDig5.Top+1;
  ImgDig5.Left := ImgDig5.Left+1;
end;

procedure TFrmUrna.ImgDig5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig5.Top := ImgDig5.Top-1;
  ImgDig5.Left := ImgDig5.Left-1;
end;

procedure TFrmUrna.ImgDig6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig6.Top := ImgDig6.Top+1;
  ImgDig6.Left := ImgDig6.Left+1;
end;

procedure TFrmUrna.ImgDig6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig6.Top := ImgDig6.Top-1;
  ImgDig6.Left := ImgDig6.Left-1;
end;

procedure TFrmUrna.ImgDig7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig7.Top := ImgDig7.Top+1;
  ImgDig7.Left := ImgDig7.Left+1;
end;

procedure TFrmUrna.ImgDig7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig7.Top := ImgDig7.Top-1;
  ImgDig7.Left := ImgDig7.Left-1;
end;

procedure TFrmUrna.ImgDig8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig8.Top := ImgDig8.Top+1;
  ImgDig8.Left := ImgDig8.Left+1;
end;

procedure TFrmUrna.ImgDig8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig8.Top := ImgDig8.Top-1;
  ImgDig8.Left := ImgDig8.Left-1;
end;

procedure TFrmUrna.ImgDig9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig9.Top := ImgDig9.Top+1;
  ImgDig9.Left := ImgDig9.Left+1;
end;

procedure TFrmUrna.ImgDig9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig9.Top := ImgDig9.Top-1;
  ImgDig9.Left := ImgDig9.Left-1;
end;

procedure TFrmUrna.ImgDig0MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig0.Top := ImgDig0.Top+1;
  ImgDig0.Left := ImgDig0.Left+1;
end;

procedure TFrmUrna.ImgDig0MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImgDig0.Top := ImgDig0.Top-1;
  ImgDig0.Left := ImgDig0.Left-1;
end;
//----------------------Animação de botão em imagens--------------------

//-----------------------------Ação Botões------------------------------
procedure TFrmUrna.ImgDig1Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '1'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '1';
end;

procedure TFrmUrna.ImgDig2Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '2'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '2';
end;

procedure TFrmUrna.ImgDig3Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '3'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '3';
end;

procedure TFrmUrna.ImgDig4Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '4'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '4';
end;

procedure TFrmUrna.ImgDig5Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '5'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '5';
end;

procedure TFrmUrna.ImgDig6Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '6'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '6';
end;

procedure TFrmUrna.ImgDig7Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '7'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '7';
end;

procedure TFrmUrna.ImgDig8Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '8'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '8';
end;

procedure TFrmUrna.ImgDig9Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '9'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '9';
end;

procedure TFrmUrna.ImgDig0Click(Sender: TObject);
begin
  if(EdtNum1.Text = '') and mutexTeclado then
    EdtNum1.Text := '0'
  else if(EdtNum2.Text = '') and mutexTeclado then
    EdtNum2.Text := '0';
end;

procedure TFrmUrna.ImgCorrigeClick(Sender: TObject);
begin         
  if not(encerrado) then
  Begin
    mutexTeclado:= true;
    EdtNum1.Clear();
    EdtNum2.Clear();
    EdtNum1.Visible:= true;
    EdtNum2.Visible:= true;
    LblCategoriaVoto.Visible:= true;
    LblAviso.Visible:= false;
    LblSeuVotoPara.Visible:= false;
    LblNumero.Visible:= false;
    LblNome.Visible:= false;
    LblNomeCandidato.Visible:= false;
    LblPartido.Visible:= false;
    LblPartidoCandidato.Visible:= false;
    ShpSeparadorAjuda.Visible:= false;
    LblAjuda.Visible:= false;
    ImgCandidato.Picture:= nil;
    PnlBrancoSobreposto.Visible:= false;
    LblNumErrado.Visible:= false;
    LblVotoNulo.Visible:= false;
  End;
end;

procedure TFrmUrna.EdtNum2Change(Sender: TObject);
var caminho: string;
    arqDados: file of char;
    Buffer: char;
    nome, partido: string;
begin
  If (estaEmSegundoTurno and not((EdtNum1.Text+EdtNum2.Text = SegundoCand1) or (EdtNum1.Text+EdtNum2.Text = SegundoCand2)) and (EdtNum1.Text <> '') and (EdtNum2.Text <> '') and (EdtNum1.Text <> '#') and (EdtNum2.Text <> '#')) then
  Begin
    LblNumErrado.Left:= 7;
    LblNumErrado.Visible:= true;
    LblVotoNulo.Visible:= true;
    LblSeuVotoPara.Visible:= true;
    ShpSeparadorAjuda.Visible:= true;
    LblAjuda.Visible:= true;
  End
  else if not(encerrado) then
  Begin
    caminho:= ExtractFilePath(ParamStr(0))+'Recursos\Candidatos\';
    if (FileExists(caminho+EdtNum1.Text+EdtNum2.Text+'.bmp') and FileExists(caminho+EdtNum1.Text+EdtNum2.Text+' Info\Dados.txt')) then
    Begin
      AssignFile(arqDados, caminho+EdtNum1.Text+EdtNum2.Text+' Info\Dados.txt');
      {$I-}
      Reset(arqDados);
      {$I+}
      if IOResult = 0 then
      Begin
      while(true) do
        Begin
          Read(arqDados, Buffer);
          if Buffer <> '~' then
            nome:= nome+Buffer
          else
            Break;
        End;
        while(true) do
        Begin
          {$I-}
          Read(arqDados, Buffer);
          {$I+}
          if IOResult = 0 then
            partido:= partido+Buffer
          else
            Break;
        End;
      End;
      CloseFile(arqDados);
      LblNomeCandidato.Caption:= nome;
      LblPartidoCandidato.Caption:= partido;
      LblSeuVotoPara.Visible:= true;
      LblNumero.Visible:= true;
      LblNome.Visible:= true;
      LblNomeCandidato.Visible:= true;
      LblPartido.Visible:= true;
      LblPartidoCandidato.Visible:= true;
      ShpSeparadorAjuda.Visible:= true;
      LblAjuda.Visible:= true;
      mutexTeclado:= false;
      ImgCandidato.Picture.LoadFromFile(caminho+EdtNum1.Text+EdtNum2.Text+'.bmp');
    End
    else if(EdtNum1.Text <> '') and (EdtNum2.Text <> '') and (EdtNum1.Text <> '#') and (EdtNum2.Text <> '#') then
    Begin
      LblNumErrado.Left:= 7;
      LblNumErrado.Visible:= true;
      LblVotoNulo.Visible:= true;
      LblSeuVotoPara.Visible:= true;
      ShpSeparadorAjuda.Visible:= true;
      LblAjuda.Visible:= true;
    End;
  End;
end;

procedure TFrmUrna.ImgBrancoClick(Sender: TObject);
begin
  if not(encerrado) then
  Begin
    if PnlBrancoSobreposto.Visible then
      ImgCorrigeClick(nil)
    else
    Begin
      EdtNum1.Text:= '#';
      EdtNum2.Text:= '#';
      mutexTeclado:= false;
      LblAviso.Caption:= 'Voto em Branco';
      LblAviso.Left:= 64;
      LblAviso.top:= 104;
      LblAviso.Visible:= true;
      LblAjuda.Visible:= true;
      ImgCandidato.Picture:= nil;
      EdtNum1.Visible:= false;
      EdtNum2.Visible:= false;
      LblCategoriaVoto.Visible:= false;
      LblSeuVotoPara.Visible:= false;
      LblNumero.Visible:= false;
      LblNome.Visible:= false;
      LblNomeCandidato.Visible:= false;
      LblPartido.Visible:= false;
      LblPartidoCandidato.Visible:= false;
      ShpSeparadorAjuda.Visible:= true;
      LblAjuda.Visible:= true;
    End;
  End;
end;

procedure TFrmUrna.ImgComfirmaClick(Sender: TObject);
var caminho: string;
begin
  if not(encerrado) then
  Begin
    caminho:= ExtractFilePath(ParamStr(0))+'Recursos\Candidatos\';
    If(EdtNum1.Text <> '') and (EdtNum2.Text <> '') then
    Begin
      PnlBrancoSobreposto.Caption:= 'FIM';
      PnlBrancoSobreposto.Top:= 0;
      PnlBrancoSobreposto.Left:= 0;
      PnlBrancoSobreposto.Width:= PnlTela.Width;
      PnlBrancoSobreposto.Height:= PnlTela.Height;
      PnlBrancoSobreposto.Font.Name:= 'Arial Black';
      PnlBrancoSobreposto.Font.Size:= 36;
      PnlBrancoSobreposto.Visible:= true;
      mutexTeclado:= false;
      if (FileExists(caminho+EdtNum1.Text+EdtNum2.Text+'.bmp') and FileExists(caminho+EdtNum1.Text+EdtNum2.Text+' Info\Dados.txt') or (EdtNum1.Text+EdtNum2.Text = '##')) then
        FrmVotos.atualizarVotos(EdtNum1.Text+EdtNum2.Text);
      EdtNum1.Clear();
      EdtNum2.Clear();
    End
    else if not(mutexTeclado) then
      ImgCorrigeClick(nil);
  End;
end;

procedure TFrmUrna.encerraVotos(numCand: string);
var caminho: string;
    arqDados: file of char;
    Buffer: char;
    nome, partido: string;
begin
  caminho:= ExtractFilePath(ParamStr(0))+'Recursos\Candidatos\';
  ImgCorrigeClick(nil);
  encerrado:= true;
  EdtNum1.Visible:= false;
  EdtNum2.Visible:= false;
  LblCategoriaVoto.Visible:= false;
  PnlBrancoSobreposto.Visible:= false;
  PnlTela.Caption:= 'VENCEDOR(A)';
  PnlTela.Font.Name:= 'Arial Black';
  PnlTela.Font.Size:= 20;
  PnlTela.Visible:= true;
  if (FileExists(caminho+numCand+'.bmp') and FileExists(caminho+numCand+' Info\Dados.txt')) then
  Begin
    AssignFile(arqDados, caminho+numCand+' Info\Dados.txt');
    {$I-}
    Reset(arqDados);
    {$I+}
    if IOResult = 0 then
    Begin
    while(true) do
      Begin
        Read(arqDados, Buffer);
        if Buffer <> '~' then
          nome:= nome+Buffer
        else
          Break;
      End;
      while(true) do
      Begin
        {$I-}
        Read(arqDados, Buffer);
        {$I+}
        if IOResult = 0 then
          partido:= partido+Buffer
        else
          Break;
      End;
    End;
    CloseFile(arqDados);
    LblNomeCandidato.Caption:= nome;
    LblNome.Visible:= true;
    LblNomeCandidato.Visible:= true;
    LblPartidoCandidato.Caption:= partido;
    LblPartido.Visible:= true;
    LblPartidoCandidato.Visible:= true;
    mutexTeclado:= false;
    ImgCandidato.Picture.LoadFromFile(caminho+numCand+'.bmp');
  End;
End;

procedure TFrmUrna.segundoTurno(numCand1, numCand2: string);
begin
  SegundoCand1:= numCand1;
  SegundoCand2:= numCand2;
  ImgCorrigeClick(nil);
  estaEmSegundoTurno:= true;
  PnlBrancoSobreposto.Caption:= 'Segundo Turno';
  PnlBrancoSobreposto.Top:= 0;
  PnlBrancoSobreposto.Left:= 0;
  PnlBrancoSobreposto.Width:= PnlTela.Width;
  PnlBrancoSobreposto.Height:= PnlTela.Height;
  PnlBrancoSobreposto.Font.Name:= 'Arial Black';
  PnlBrancoSobreposto.Font.Size:= 20;
  PnlBrancoSobreposto.Visible:= true;
  mutexTeclado:= false;
End;

procedure TFrmUrna.TimAlinhaOutroFormTimer(Sender: TObject);
begin
  FrmVotos.Top := Top + Height;
  FrmVotos.Left := Left + Width div 2 - FrmVotos.Width div 2;
end;

end.
