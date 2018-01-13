unit U_Vetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmBusca = class(TForm)
    LblIn: TLabel;
    EdtInsere: TEdit;
    BtnInsere: TButton;
    LblBusca: TLabel;
    EdtBusca: TEdit;
    BtnOk: TButton;
    BtnAleatorio: TButton;
    BtnCrescente: TButton;
    BtnDecrescente: TButton;
    BtnObservar: TButton;
    procedure BtnInsereClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnAleatorioClick(Sender: TObject);
    procedure BtnCrescenteClick(Sender: TObject);
    procedure BtnObservarClick(Sender: TObject);
    procedure BtnDecrescenteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBusca: TFrmBusca;
  v_numero: array[0..99] of integer;
  indice: integer;

implementation

uses Math;

{$R *.dfm}

procedure TFrmBusca.FormCreate(Sender: TObject);
begin
 indice:= -1;
end;

procedure TFrmBusca.BtnInsereClick(Sender: TObject);
begin
  EdtInsere.Text:= Trim(EdtInsere.Text);
  if(EdtInsere.Text = '') then
    Application.MessageBox('Insira um número', 'Aviso')
  else
  Begin
    Inc(indice);
    if indice < 100 then
    Begin
      v_numero[indice]:= StrToInt(EdtInsere.Text);
      EdtInsere.SetFocus();
      EdtInsere.Clear();
    End
    else
    Begin
      EdtInsere.Clear();
      EdtBusca.SetFocus();
      BtnInsere.Enabled:= false;
      EdtInsere.Enabled:= false;
      Application.MessageBox('Memória cheia', 'Aviso');
    End;
  End;
end;

procedure TFrmBusca.BtnOkClick(Sender: TObject);
var i: integer;
    encontrado: boolean;
begin
  EdtBusca.Text:= Trim(EdtBusca.Text);
  if(EdtBusca.Text = '') then
    Application.MessageBox('Insira um número no campo de busca', 'Aviso')
  else
  Begin
    encontrado:= false;
    for i:=0 to indice do
    Begin
      if StrToInt(EdtBusca.Text) = v_numero[i] then
      Begin
        ShowMessage('Este número foi armazenado no vetor na posição '+IntToStr(i)+'.');
        encontrado:= true;
      End;
    End;
    if not(encontrado) then
      Application.MessageBox('Este número não foi armazenado no vetor.', 'Não Encontrado');
  end;
end;

procedure TFrmBusca.BtnAleatorioClick(Sender: TObject);
var i: integer;
begin
  indice:= 100;
  BtnInsere.Enabled:= false;
  EdtInsere.Enabled:= false;
  Randomize;
  for i:=0 to 99 do
    v_numero[i]:= RandomRange(0, 101);
end;

procedure TFrmBusca.BtnCrescenteClick(Sender: TObject);
var i, ii, numTmp: integer;
begin
  for ii:=0 to indice-1 do
    for i:=0 to indice-1 do
      if(i < indice) then
        if(v_numero[i] > v_numero[i+1]) then
        Begin
          numTmp:= v_numero[i+1];
          v_numero[i+1]:= v_numero[i];
          v_numero[i]:= numTmp;
        End;
end;

procedure TFrmBusca.BtnObservarClick(Sender: TObject);    
var i: integer;
    verifica: string;
begin
  for i:=0 to 98 do
    verifica:= verifica+IntToStr(v_numero[i])+', ';
    verifica:= verifica+IntToStr(v_numero[99]);
  ShowMessage(verifica);
end;

procedure TFrmBusca.BtnDecrescenteClick(Sender: TObject);
var i, ii, numTmp: integer;
begin
  for ii:=0 to indice-1 do
    for i:=0 to indice-1 do
      if(i < indice-1) then
        if(v_numero[i] < v_numero[i+1]) then
        Begin
          numTmp:= v_numero[i+1];
          v_numero[i+1]:= v_numero[i];
          v_numero[i]:= numTmp;
        End;
end;

end.
