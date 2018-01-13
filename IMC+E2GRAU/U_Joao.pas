unit U_Joao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmJoao = class(TForm)
    LblNome: TLabel;
    EdtNome: TEdit;
    LblQtdPesca: TLabel;
    EdtQtdPesca: TEdit;
    LblQtdExede: TLabel;
    LblExedente: TLabel;
    LblMulta: TLabel;
    LblVlMulta: TLabel;
    LblPaga: TLabel;
    LblPagar: TLabel;
    BtnCalc: TButton;
    BtnLimpa: TButton;
    MemRegistros: TMemo;
    BtnMostrar: TButton;
    procedure BtnCalcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLimpaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnMostrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmJoao: TFrmJoao;
  registros: integer;
  regNome: array[0..9] of string;
  regPesca: array[0..9] of string;
  regExede: array[0..9] of string;
  regMulta: array[0..9] of string;
  regPagar: array[0..9] of string;

implementation

uses U_Principal;

{$R *.dfm}

procedure TFrmJoao.BtnCalcClick(Sender: TObject);
begin
  EdtNome.Text:= Trim(EdtNome.Text);
  EdtQtdPesca.Text:= Trim(EdtQtdPesca.Text);
  if(EdtNome.Text = '') then
  Begin
    EdtNome.SetFocus();
    Application.MessageBox('Campo Nome não preenchido.', 'Aviso', 0);
  End
  else if(EdtQtdPesca.Text = '') then
  Begin
    EdtQtdPesca.SetFocus();
    Application.MessageBox('Campo Quantidade pescada não preenchido.', 'Aviso', 0);
  End
  else
  Begin
    if registros < 10 then
      Inc(registros);
    if(StrToFloat(EdtQtdPesca.Text) <= 40) then
    Begin      
      LblPagar.Caption:= '30.00';
      regNome[registros]:= EdtNome.Text;
      regPesca[registros]:= EdtQtdPesca.Text;
      regExede[registros]:= '0';
      regMulta[registros]:= '0';
      regPagar[registros]:= '0';
    End
    else
    Begin
      LblExedente.Caption:= FormatFloat('00.00', StrToFloat(EdtQtdPesca.Text)-40);
      LblVlMulta.Caption:= FormatFloat('00.00', (StrToFloat(EdtQtdPesca.Text)-40)*5);
      LblPagar.Caption:= FormatFloat('00.00', 30+(StrToFloat(EdtQtdPesca.Text)-40)*5);
      regNome[registros]:= EdtNome.Text;
      regPesca[registros]:= EdtQtdPesca.Text;
      regExede[registros]:= LblExedente.Caption;
      regMulta[registros]:= LblVlMulta.Caption;
      regPagar[registros]:= LblPagar.Caption;
    End;
  End;
end;

procedure TFrmJoao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrincipal.Show();
  EdtNome.Clear();
  EdtQtdPesca.Clear();
  LblExedente.Caption:= '';
  LblVlMulta.Caption:= '';
  LblPagar.Caption:= '';
  EdtNome.SetFocus();
end;

procedure TFrmJoao.BtnLimpaClick(Sender: TObject);
begin
  EdtNome.Clear();
  EdtQtdPesca.Clear();
  LblExedente.Caption:= '';
  LblVlMulta.Caption:= '';
  LblPagar.Caption:= '';
  EdtNome.SetFocus();
end;

procedure TFrmJoao.FormShow(Sender: TObject);
begin
  FrmJoao.Position:= poScreenCenter;
end;

procedure TFrmJoao.BtnMostrarClick(Sender: TObject);
var i: integer;
begin
  MemRegistros.Clear();
  for i:=0 to registros do
    MemRegistros.Lines.Add('Nome('+regNome[i]+') Qtd Pescada('+regPesca[i]+') Exedeu('+regExede[i]+')  Multa('+regMulta[i]+') Pagou('+regPagar[i]+')');
end;

procedure TFrmJoao.FormCreate(Sender: TObject);
begin
  registros:= -1;
end;

end.
