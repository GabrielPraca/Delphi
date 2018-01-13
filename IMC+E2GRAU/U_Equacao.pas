unit U_Equacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TFrmEqua = class(TForm)
    LblA: TLabel;
    LblB: TLabel;
    LblC: TLabel;
    EdtA: TEdit;
    EdtB: TEdit;
    EdtC: TEdit;
    LblDelt: TLabel;
    LblDelta: TLabel;
    LblX1: TLabel;
    LblX2: TLabel;
    LblValX1: TLabel;
    LblValX2: TLabel;
    BtnCalc: TButton;
    BtnLimpa: TButton;
    procedure BtnCalcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLimpaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEqua: TFrmEqua;

implementation

uses U_Principal;

{$R *.dfm}

procedure TFrmEqua.BtnCalcClick(Sender: TObject);
begin
  if(EdtA.Text = '') then
  Begin
    EdtA.SetFocus();
    Application.MessageBox('Campo A não preenchido.', 'Aviso', 0);
  End
  else if(EdtB.Text = '') then
  Begin
    EdtB.SetFocus();
    Application.MessageBox('Campo B não preenchido.', 'Aviso', 0);
  End
  else if(EdtC.Text = '') then
  Begin
    EdtC.SetFocus();
    Application.MessageBox('Campo C não preenchido.', 'Aviso', 0);
  End
  else
  Begin
    LblDelta.Caption:= FormatFloat('00.00', power(StrToFloat(EdtB.Text), 2)-4*StrToFloat(EdtA.Text)*StrToFloat(EdtC.Text));
    if(not(StrToFloat(LblDelta.Caption) < 0)) then
    Begin
      LblValX1.Caption:= FormatFloat('00.00', (-StrToFloat(EdtB.Text)+sqrt(StrToFloat(LblDelta.Caption)))/2);
      LblValX2.Caption:= FormatFloat('00.00', (-StrToFloat(EdtB.Text)-sqrt(StrToFloat(LblDelta.Caption)))/2);
    End
    else
      Application.MessageBox('Delta Negativo.', 'Aviso', 0);
  End;
end;

procedure TFrmEqua.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrincipal.Show();
  EdtA.Clear();
  EdtB.Clear();
  EdtC.Clear();
  LblDelta.Caption:= '';
  LblValX1.Caption:= '';
  LblValX2.Caption:= '';
  EdtA.SetFocus();
end;

procedure TFrmEqua.BtnLimpaClick(Sender: TObject);
begin
  EdtA.Clear();
  EdtB.Clear();
  EdtC.Clear();
  LblDelta.Caption:= '';
  LblValX1.Caption:= '';
  LblValX2.Caption:= '';
  EdtA.SetFocus();
end;

procedure TFrmEqua.FormShow(Sender: TObject);
begin
  FrmEqua.Position:= poScreenCenter;
end;

end.
