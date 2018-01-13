unit U_Votos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Math, ExtCtrls;

type
  TFrmVotos = class(TForm)
    LblCandidato1: TLabel;
    LblCandidato2: TLabel;
    LblCandidato3: TLabel;
    LblCandidato4: TLabel;
    lblQntVotos: TLabel;
    BarCandidato1: TProgressBar;
    BarCandidato2: TProgressBar;
    BarCandidato3: TProgressBar;
    BarCandidato4: TProgressBar;
    ShpBorda: TShape;
    procedure FormCreate(Sender: TObject);       
    procedure atualizarVotos(votopara: string);
    procedure verificaSegundoTurno(numCand1, numCand2, numCand3, numCand4, nomecand1, nomecand2, nomecand3, nomecand4: string; votosCand1, votosCand2, votosCand3, votosCand4: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVotos: TFrmVotos;
  voto: array[0..27] of string[2];
  votos: integer;
  nomecand1, nomecand2, nomecand3, nomecand4: string;

implementation

uses U_Urna;

{$R *.dfm}
      
procedure TFrmVotos.FormCreate(Sender: TObject);
var num1, num2: integer;
    caminho: string;
    arqDados: file of char;
    Buffer: char;
    nome: string;
begin
  FrmUrna.SetFocus;                
  FrmUrna.Top := Screen.Height div 2 - (FrmUrna.Height + Height) div 2;
  caminho:= ExtractFilePath(ParamStr(0))+'Recursos\Candidatos\';
  votos:= 0;
  Top:= FrmUrna.Top + Height;
  Left:= FrmUrna.Left;
  for num1:=0 to 9 do
    for num2:=0 to 9 do
      if (FileExists(caminho+IntToStr(num1)+IntToStr(num2)+'.bmp') and FileExists(caminho+IntToStr(num1)+IntToStr(num2)+' Info\Dados.txt')) then
      Begin
        AssignFile(arqDados, caminho+IntToStr(num1)+IntToStr(num2)+' Info\Dados.txt');
        {$I-}
        Reset(arqDados);
        {$I+}
        if IOResult = 0 then
        Begin
          nome:= '';
          while(true) do
          Begin
            Read(arqDados, Buffer);
            if Buffer <> '~' then
              nome:= nome+Buffer
            else
              Break;
          End;
        End;
        CloseFile(arqDados);
        if LblCandidato1.Caption = 'Candidato' then
        Begin
          LblCandidato1.Caption:= IntToStr(num1)+IntToStr(num2)+' - '+nome+' (0%)';
          nomecand1:= IntToStr(num1)+IntToStr(num2)+' - '+nome;
        End
        else if LblCandidato2.Caption = 'Candidato' then
        Begin
          LblCandidato2.Caption:= IntToStr(num1)+IntToStr(num2)+' - '+nome+' (0%)'; 
          nomecand2:= IntToStr(num1)+IntToStr(num2)+' - '+nome;
        End
        else if LblCandidato3.Caption = 'Candidato' then
        Begin
          LblCandidato3.Caption:= IntToStr(num1)+IntToStr(num2)+' - '+nome+' (0%)';
          nomecand3:= IntToStr(num1)+IntToStr(num2)+' - '+nome;
        End
        else if LblCandidato4.Caption = 'Candidato' then
        Begin
          LblCandidato4.Caption:= IntToStr(num1)+IntToStr(num2)+' - '+nome+' (0%)';
          nomecand4:= IntToStr(num1)+IntToStr(num2)+' - '+nome;
        End;
      End;
end;

procedure TFrmVotos.verificaSegundoTurno(numCand1, numCand2, numCand3, numCand4, nomecand1, nomecand2, nomecand3, nomecand4: string; votosCand1, votosCand2, votosCand3, votosCand4: integer);
var positmp: integer;
    posstmp: string;
    lblcand1, lblcand2, lblcand3, lblcand4: string[2];
Begin
  if(votosCand2 > votosCand1) then
  Begin
    positmp:= votosCand1;
    votosCand1:= votosCand2;
    votosCand2:= positmp;
    posstmp:= numCand1;
    numCand1:= numCand2;
    numCand2:= posstmp;
  End;

  if(votosCand3 > votosCand2) then
  Begin
    positmp:= votosCand2;
    votosCand2:= votosCand3;
    votosCand3:= positmp;
    posstmp:= numCand2;
    numCand2:= numCand3;
    numCand3:= posstmp;
  End;
  if(votosCand2 > votosCand1) then
  Begin
    positmp:= votosCand1;
    votosCand1:= votosCand2;
    votosCand2:= positmp;
    posstmp:= numCand1;
    numCand1:= numCand2;
    numCand2:= posstmp;
  End;

  if(votosCand4 > votosCand3) then
  Begin
    positmp:= votosCand3;
    votosCand3:= votosCand4;
    votosCand4:= positmp;
    posstmp:= numCand3;
    numCand3:= numCand4;
    numCand4:= posstmp;
  End;
  if(votosCand3 > votosCand2) then
  Begin
    positmp:= votosCand2;
    votosCand2:= votosCand3;
    votosCand3:= positmp;
    posstmp:= numCand2;
    numCand2:= numCand3;
    numCand3:= posstmp;
  End;
  if(votosCand2 > votosCand1) then
  Begin
    positmp:= votosCand1;
    votosCand1:= votosCand2;
    votosCand2:= positmp;
    posstmp:= numCand1;
    numCand1:= numCand2;
    numCand2:= posstmp;
  End;
  if (votosCand1 > 50) then
    FrmUrna.encerraVotos(numCand1)
  else
  Begin
    votos:= 0;
    FrmUrna.segundoTurno(numCand1, numCand2);
    lblcand1:= LblCandidato1.Caption;
    lblcand2:= LblCandidato2.Caption;
    lblcand3:= LblCandidato3.Caption;
    lblcand4:= LblCandidato4.Caption;
    BarCandidato1.Position:= 0;
    BarCandidato2.Position:= 0;
    BarCandidato3.Position:= 0;
    BarCandidato4.Position:= 0;
    LblCandidato1.Caption:= nomecand1+' (0%)';
    LblCandidato2.Caption:= nomecand2+' (0%)';
    LblCandidato3.Caption:= nomecand3+' (0%)';
    LblCandidato4.Caption:= nomecand4+' (0%)';
    lblQntVotos.Caption:= 'Votos (0/28)';
    If(numCand3 = lblcand1) then
    Begin
      LblCandidato1.Visible:= false;
      BarCandidato1.Visible:= false;
    End;
    If(numCand3 = lblcand2) then
    Begin
      LblCandidato2.Visible:= false;
      BarCandidato2.Visible:= false;
    End;
    If(numCand3 = lblcand3) then
    Begin
      LblCandidato3.Visible:= false;
      BarCandidato3.Visible:= false;
    End;
    If(numCand3 = lblcand4) then
    Begin
      LblCandidato4.Visible:= false;
      BarCandidato4.Visible:= false;
    End;

    If(numCand4 = lblcand1) then
    Begin
      LblCandidato1.Visible:= false;
      BarCandidato1.Visible:= false;
    End;
    If(numCand4 = lblcand2) then
    Begin
      LblCandidato2.Visible:= false;
      BarCandidato2.Visible:= false;
    End;
    If(numCand4 = lblcand3) then
    Begin
      LblCandidato3.Visible:= false;
      BarCandidato3.Visible:= false;
    End;
    If(numCand4 = lblcand4) then
    Begin
      LblCandidato4.Visible:= false;
      BarCandidato4.Visible:= false;
    End;
  End;
End;

procedure TFrmVotos.atualizarVotos(votopara: string);
var i, votosCand1, votosCand2, votosCand3, votosCand4, votosBrancos: integer;
    numCand1, numCand2, numCand3, numCand4: string[2];
Begin
  if(votos < 28) then
  Begin
    votosCand1:= 0;
    votosCand2:= 0;
    votosCand3:= 0;
    votosCand4:= 0;
    votosBrancos:= 0;
    voto[votos]:= votopara;
    numCand1:= LblCandidato1.Caption;
    numCand2:= LblCandidato2.Caption;
    numCand3:= LblCandidato3.Caption;
    numCand4:= LblCandidato4.Caption;
    for i:=0 to votos do
    Begin
      if voto[i] = numCand1 then
        votosCand1:= votosCand1+1
      else if voto[i] = numCand2 then
        votosCand2:= votosCand2+1
      else if voto[i] = numCand3 then
        votosCand3:= votosCand3+1
      else if voto[i] = numCand4 then
        votosCand4:= votosCand4+1
      else if voto[i] = '##' then
        votosBrancos:= votosBrancos+1;
    End;
    votos:= votos+1;
    lblQntVotos.Caption:= 'Votos ('+IntToStr(votos)+'/28)';
    if((votosCand1 > votosCand2) and (votosCand1 > votosCand3) and (votosCand1 > votosCand4)) then
      votosCand1:= votosCand1+votosBrancos;
    if((votosCand2 > votosCand1) and (votosCand2 > votosCand3) and (votosCand2 > votosCand4)) then
      votosCand2:= votosCand2+votosBrancos;
    if((votosCand3 > votosCand1) and (votosCand3 > votosCand2) and (votosCand3 > votosCand4)) then
      votosCand3:= votosCand3+votosBrancos;
    if((votosCand4 > votosCand1) and (votosCand4 > votosCand2) and (votosCand4 > votosCand3)) then
      votosCand4:= votosCand4+votosBrancos;
    votosCand1:= StrToInt(Format('%.0f', [(votosCand1*100)/votos]));
    votosCand2:= StrToInt(Format('%.0f', [(votosCand2*100)/votos]));
    votosCand3:= StrToInt(Format('%.0f', [(votosCand3*100)/votos]));
    votosCand4:= StrToInt(Format('%.0f', [(votosCand4*100)/votos]));
    BarCandidato1.Position:= votosCand1;
    BarCandidato2.Position:= votosCand2;
    BarCandidato3.Position:= votosCand3;
    BarCandidato4.Position:= votosCand4;
    LblCandidato1.Caption:= nomecand1+' ('+IntToStr(votosCand1)+'%)';
    LblCandidato2.Caption:= nomecand2+' ('+IntToStr(votosCand2)+'%)';
    LblCandidato3.Caption:= nomecand3+' ('+IntToStr(votosCand3)+'%)';
    LblCandidato4.Caption:= nomecand4+' ('+IntToStr(votosCand4)+'%)';
    if (votos = 28) then
        verificaSegundoTurno(numCand1, numCand2, numCand3, numCand4, nomecand1, nomecand2, nomecand3, nomecand4, votosCand1, votosCand2, votosCand3, votosCand4);
  End;
End;

end.
