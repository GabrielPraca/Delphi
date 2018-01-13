unit U_Velha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmVelha = class(TForm)
    EdtJogador1: TEdit;
    LblNomeJogador1: TLabel;
    LblNomeJogador2: TLabel;
    EdtJogador2: TEdit;
    BtnComecar: TButton;
    LblP00: TLabel;
    ShpFundo: TShape;
    LblP10: TLabel;
    LblP20: TLabel;
    LblP01: TLabel;
    LblP11: TLabel;
    LblP21: TLabel;
    LblP02: TLabel;
    LblP12: TLabel;
    LblP22: TLabel;
    ShpC1: TShape;
    ShpC2: TShape;
    ShpL1: TShape;
    ShpL2: TShape;
    procedure BtnComecarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LblP00Click(Sender: TObject);
    procedure VerificaJogada(JogadorID: Char);
    procedure PararJogo;
    procedure LblP10Click(Sender: TObject);
    procedure LblP20Click(Sender: TObject);
    procedure LblP01Click(Sender: TObject);
    procedure LblP11Click(Sender: TObject);
    procedure LblP21Click(Sender: TObject);
    procedure LblP02Click(Sender: TObject);
    procedure LblP12Click(Sender: TObject);
    procedure LblP22Click(Sender: TObject);
    procedure LblP00MouseEnter(Sender: TObject);
    procedure LblP10MouseEnter(Sender: TObject);
    procedure LblP20MouseEnter(Sender: TObject);
    procedure LblP01MouseEnter(Sender: TObject);
    procedure LblP11MouseEnter(Sender: TObject);
    procedure LblP21MouseEnter(Sender: TObject);
    procedure LblP02MouseEnter(Sender: TObject);
    procedure LblP12MouseEnter(Sender: TObject);
    procedure LblP22MouseEnter(Sender: TObject);
    procedure LblP00MouseLeave(Sender: TObject);
    procedure LblP10MouseLeave(Sender: TObject);
    procedure LblP20MouseLeave(Sender: TObject);
    procedure LblP01MouseLeave(Sender: TObject);
    procedure LblP11MouseLeave(Sender: TObject);
    procedure LblP21MouseLeave(Sender: TObject);
    procedure LblP02MouseLeave(Sender: TObject);
    procedure LblP12MouseLeave(Sender: TObject);
    procedure LblP22MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVelha: TFrmVelha;
  campo: array[0..2, 0..2] of Char;
  comecou, jogada: Boolean;

implementation

uses Math;

{$R *.dfm}

procedure TFrmVelha.BtnComecarClick(Sender: TObject);
var rdn: integer;
begin
  if not(comecou) then
  Begin
    EdtJogador1.Text:= Trim(EdtJogador1.Text);
    EdtJogador2.Text:= Trim(EdtJogador2.Text);
    if(EdtJogador1.Text = '') then
    Begin
      ShowMessage('Digite o nome do jogador 1');
      EdtJogador1.SetFocus();
    End
    else if(EdtJogador2.Text = '') then
    Begin
      ShowMessage('Digite o nome do jogador 2');
      EdtJogador2.SetFocus();
    End
    else
    Begin
      Randomize;
      rdn:= Random(2);
      if(rdn = 1) then
        jogada:= true
      else
        jogada:= false;
      comecou:= true;
      BtnComecar.Caption:= '&Parar';
      ShpFundo.SendToBack();
      ShpFundo.Brush.Color:= clWhite;
      EdtJogador1.Enabled:= false;
      EdtJogador2.Enabled:= false;
    End;
  End
  else
  Begin
    PararJogo();
  End;
end;

procedure TFrmVelha.FormCreate(Sender: TObject);
var x, y: integer;
begin
  comecou:= false;
  for x:=0 to 2 do
    for y:=0 to 2 do
      campo[x, y]:= 'v';
end;

procedure TFrmVelha.PararJogo;
var x, y: integer;
Begin
    comecou:= false;
    ShpFundo.BringToFront();
    ShpFundo.Brush.Color:= clAppWorkSpace;
    EdtJogador1.Enabled:= true;
    EdtJogador2.Enabled:= true;   
    LblP00.Caption:= '';
    LblP10.Caption:= '';
    LblP20.Caption:= '';
    LblP01.Caption:= '';
    LblP11.Caption:= '';
    LblP21.Caption:= '';
    LblP02.Caption:= '';
    LblP12.Caption:= '';
    LblP22.Caption:= '';
    
    LblP00.Color:= clWhite;
    LblP10.Color:= clWhite;
    LblP20.Color:= clWhite;
    LblP01.Color:= clWhite;
    LblP11.Color:= clWhite;
    LblP21.Color:= clWhite;
    LblP02.Color:= clWhite;
    LblP12.Color:= clWhite;
    LblP22.Color:= clWhite;
    BtnComecar.Caption:= '&Começar';
    for x:=0 to 2 do
      for y:=0 to 2 do
        campo[x, y]:= 'v';
End;

procedure TFrmVelha.VerificaJogada(JogadorID: Char);
var ganhou, velha: Boolean;
    x, y: integer;
Begin
  ganhou:= false;
  if((campo[0, 0] = JogadorID) and (campo[1, 0] = JogadorID) and (campo[2, 0] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP00.Color:= clGreen;
    LblP10.Color:= clGreen;
    LblP20.Color:= clGreen;
  End
  else if((campo[0, 1] = JogadorID) and (campo[1, 1] = JogadorID) and (campo[2, 1] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP01.Color:= clGreen;
    LblP11.Color:= clGreen;
    LblP21.Color:= clGreen;
  End
  else if((campo[0, 2] = JogadorID) and (campo[1, 2] = JogadorID) and (campo[2, 2] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP02.Color:= clGreen;
    LblP12.Color:= clGreen;
    LblP22.Color:= clGreen;
  End
  else if((campo[0, 0] = JogadorID) and (campo[0, 1] = JogadorID) and (campo[0, 2] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP00.Color:= clGreen;
    LblP01.Color:= clGreen;
    LblP02.Color:= clGreen;
  End
  else if((campo[1, 0] = JogadorID) and (campo[1, 1] = JogadorID) and (campo[1, 2] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP10.Color:= clGreen;
    LblP11.Color:= clGreen;
    LblP12.Color:= clGreen;
  End
  else if((campo[2, 0] = JogadorID) and (campo[2, 1] = JogadorID) and (campo[2, 2] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP20.Color:= clGreen;
    LblP21.Color:= clGreen;
    LblP22.Color:= clGreen;
  End
  else if((campo[0, 0] = JogadorID) and (campo[1, 1] = JogadorID) and (campo[2, 2] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP00.Color:= clGreen;
    LblP11.Color:= clGreen;
    LblP22.Color:= clGreen;
  End
  else if((campo[2, 0] = JogadorID) and (campo[1, 1] = JogadorID) and (campo[0, 2] = JogadorID)) then
  Begin
    ganhou:= true;
    LblP20.Color:= clGreen;
    LblP11.Color:= clGreen;
    LblP02.Color:= clGreen;
  End;
  if(ganhou) then
  Begin
    if(JogadorID = 'x') then
      ShowMessage(EdtJogador1.Text + ' Ganhou')
    else
      ShowMessage(EdtJogador2.Text + ' Ganhou');
    PararJogo();
  End
  else if(JogadorID = 'o') then
  Begin
    velha:= true;
    for x:=0 to 2 do
      for y:=0 to 2 do
        if(campo[x, y] = 'v') then
          velha:= false;
    if(velha) then
    Begin
      ShowMessage('Fim de jogo.' + #13 + 'Velha!');
      PararJogo();
    End;
  End;
End;

procedure TFrmVelha.LblP00Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[0, 0] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[0, 0]:= 'x';
        LblP00.Caption:= 'X';
        LblP00.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[0, 0]:= 'o';
        LblP00.Caption:= 'O';
        LblP00.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP10Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[1, 0] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[1, 0]:= 'x';
        LblP10.Caption:= 'X';
        LblP10.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[1, 0]:= 'o';
        LblP10.Caption:= 'O';
        LblP10.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP20Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[2, 0] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[2, 0]:= 'x';
        LblP20.Caption:= 'X';
        LblP20.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[2, 0]:= 'o';
        LblP20.Caption:= 'O';
        LblP20.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP01Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[0, 1] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[0, 1]:= 'x';
        LblP01.Caption:= 'X';
        LblP01.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[0, 1]:= 'o';
        LblP01.Caption:= 'O';
        LblP01.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP11Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[1, 1] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[1, 1]:= 'x';
        LblP11.Caption:= 'X';
        LblP11.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[1, 1]:= 'o';
        LblP11.Caption:= 'O';
        LblP11.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP21Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[2, 1] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[2, 1]:= 'x';
        LblP21.Caption:= 'X';
        LblP21.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[2, 1]:= 'o';
        LblP21.Caption:= 'O';
        LblP21.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP02Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[0, 2] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[0, 2]:= 'x';
        LblP02.Caption:= 'X';
        LblP02.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[0, 2]:= 'o';
        LblP02.Caption:= 'O';
        LblP02.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP12Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[1, 2] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[1, 2]:= 'x';
        LblP12.Caption:= 'X';
        LblP12.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[1, 2]:= 'o';
        LblP12.Caption:= 'O';
        LblP12.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP22Click(Sender: TObject);
begin
  if(comecou) then
  Begin
    if(campo[2, 2] = 'v') then
    Begin
      if not(jogada) then
      Begin
        campo[2, 2]:= 'x';
        LblP22.Caption:= 'X';
        LblP22.Font.Color:= clBlue;
        jogada:= true;
      End
      else
      Begin
        campo[2, 2]:= 'o';
        LblP22.Caption:= 'O';
        LblP22.Font.Color:= clRed;
        jogada:= false;
      End;
      VerificaJogada('x');
      VerificaJogada('o');
    End;
  End;
end;

procedure TFrmVelha.LblP00MouseEnter(Sender: TObject);
begin
  If not(comecou) then
    Exit;
  if(campo[0, 0] = 'v') then
    if not(jogada) then
    Begin
      LblP00.Caption:= 'X';
      LblP00.Font.Color:= clBlack;
    End
    else
    Begin
      LblP00.Caption:= 'O';
      LblP00.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP10MouseEnter(Sender: TObject);
begin   
  If not(comecou) then
    Exit;
  if(campo[1, 0] = 'v') then
    if not(jogada) then
    Begin
      LblP10.Caption:= 'X';
      LblP10.Font.Color:= clBlack;
    End
    else
    Begin
      LblP10.Caption:= 'O';
      LblP10.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP20MouseEnter(Sender: TObject);
begin      
  If not(comecou) then
    Exit;
  if(campo[2, 0] = 'v') then
    if not(jogada) then
    Begin
      LblP20.Caption:= 'X';
      LblP20.Font.Color:= clBlack;
    End
    else
    Begin
      LblP20.Caption:= 'O';
      LblP20.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP01MouseEnter(Sender: TObject);
begin     
  If not(comecou) then
    Exit;
  if(campo[0, 1] = 'v') then
    if not(jogada) then
    Begin
      LblP01.Caption:= 'X';
      LblP01.Font.Color:= clBlack;
    End
    else
    Begin
      LblP01.Caption:= 'O';
      LblP01.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP11MouseEnter(Sender: TObject);
begin      
  If not(comecou) then
    Exit;
  if(campo[1, 1] = 'v') then
    if not(jogada) then
    Begin
      LblP11.Caption:= 'X';
      LblP11.Font.Color:= clBlack;
    End
    else
    Begin
      LblP11.Caption:= 'O';
      LblP11.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP21MouseEnter(Sender: TObject);
begin       
  If not(comecou) then
    Exit;
  if(campo[2, 1] = 'v') then
    if not(jogada) then
    Begin
      LblP21.Caption:= 'X';
      LblP21.Font.Color:= clBlack;
    End
    else
    Begin
      LblP21.Caption:= 'O';
      LblP21.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP02MouseEnter(Sender: TObject);
begin        
  If not(comecou) then
    Exit;
  if(campo[0, 2] = 'v') then
    if not(jogada) then
    Begin
      LblP02.Caption:= 'X';
      LblP02.Font.Color:= clBlack;
    End
    else
    Begin
      LblP02.Caption:= 'O';
      LblP02.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP12MouseEnter(Sender: TObject);
begin         
  If not(comecou) then
    Exit;
  if(campo[1, 2] = 'v') then
    if not(jogada) then
    Begin
      LblP12.Caption:= 'X';
      LblP12.Font.Color:= clBlack;
    End
    else
    Begin
      LblP12.Caption:= 'O';
      LblP12.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP22MouseEnter(Sender: TObject);
begin         
  If not(comecou) then
    Exit;
  if(campo[2, 2] = 'v') then
    if not(jogada) then
    Begin
      LblP22.Caption:= 'X';
      LblP22.Font.Color:= clBlack;
    End
    else
    Begin
      LblP22.Caption:= 'O';
      LblP22.Font.Color:= clBlack;
    End;
end;

procedure TFrmVelha.LblP00MouseLeave(Sender: TObject);
begin
  if(campo[0, 0] = 'v') then
    LblP00.Caption:= '';
end;

procedure TFrmVelha.LblP10MouseLeave(Sender: TObject);
begin
  if(campo[1, 0] = 'v') then
    LblP10.Caption:= '';
end;

procedure TFrmVelha.LblP20MouseLeave(Sender: TObject);
begin
  if(campo[2, 0] = 'v') then
    LblP20.Caption:= '';
end;

procedure TFrmVelha.LblP01MouseLeave(Sender: TObject);
begin
  if(campo[0, 1] = 'v') then
    LblP01.Caption:= '';
end;

procedure TFrmVelha.LblP11MouseLeave(Sender: TObject);
begin
  if(campo[1, 1] = 'v') then
    LblP11.Caption:= '';
end;

procedure TFrmVelha.LblP21MouseLeave(Sender: TObject);
begin
  if(campo[2, 1] = 'v') then
    LblP21.Caption:= '';
end;

procedure TFrmVelha.LblP02MouseLeave(Sender: TObject);
begin
  if(campo[0, 2] = 'v') then
    LblP02.Caption:= '';
end;

procedure TFrmVelha.LblP12MouseLeave(Sender: TObject);
begin
  if(campo[1, 2] = 'v') then
    LblP12.Caption:= '';
end;

procedure TFrmVelha.LblP22MouseLeave(Sender: TObject);
begin
  if(campo[2, 2] = 'v') then
    LblP22.Caption:= '';
end;

end.
