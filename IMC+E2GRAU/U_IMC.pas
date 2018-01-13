unit U_IMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TFrmIMC = class(TForm)
    LblPeso: TLabel;
    LblAltura: TLabel;
    EdtPeso: TEdit;
    EdtAltura: TEdit;
    LblRes: TLabel;
    LblResult: TLabel;
    BtnCalcular: TButton;
    BtnLimpa: TButton;
    procedure BtnCalcularClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLimpaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIMC: TFrmIMC;

implementation

uses U_Principal;

{$R *.dfm}

procedure TFrmIMC.BtnCalcularClick(Sender: TObject);
begin
  if(EdtPeso.Text = '') then
  Begin
    EdtPeso.SetFocus();
    Application.MessageBox('Campo Peso n�o preenchido.', 'Aviso', 0);
  End
  else if(EdtAltura.Text = '') then
  Begin
    EdtAltura.SetFocus();
    Application.MessageBox('Campo Altura n�o preenchido.', 'Aviso', 0);
  End
  else
  Begin
    LblResult.Caption:= FormatFloat('00.00', StrToFloat(EdtPeso.Text)/power(StrToFloat(EdtAltura.Text), 2));
    if(StrToFloat(LblResult.Caption) < 18.5) then
      Application.MessageBox('Voc� est� abaixo do peso ideal.', 'Situa��o', 0)
    else if((StrToFloat(LblResult.Caption) >= 18.5) and (StrToFloat(LblResult.Caption) < 25)) then
      Application.MessageBox('Seu peso � normal.', 'Situa��o', 0)
    else if((StrToFloat(LblResult.Caption) >= 25) and (StrToFloat(LblResult.Caption) < 30)) then
      Application.MessageBox('Voc� esta acima do peso.', 'Situa��o', 0)
    else if((StrToFloat(LblResult.Caption) >= 30) and (StrToFloat(LblResult.Caption) < 35)) then
      Application.MessageBox('Obesidade grau I.', 'Situa��o', 0)
    else if((StrToFloat(LblResult.Caption) >= 35) and (StrToFloat(LblResult.Caption) < 40)) then
      Application.MessageBox('Obesidade grau II.', 'Situa��o', 0)
    else
      Application.MessageBox('Obesidade grau III.', 'Situa��o', 0);
  End;
end;

procedure TFrmIMC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrincipal.Show();
  EdtPeso.Clear();
  EdtAltura.Clear();
  LblResult.Caption:= '';
  EdtPeso.SetFocus();
end;

procedure TFrmIMC.BtnLimpaClick(Sender: TObject);
begin
  EdtPeso.Clear();
  EdtAltura.Clear();
  LblResult.Caption:= '';
  EdtPeso.SetFocus();
end;

procedure TFrmIMC.FormShow(Sender: TObject);
begin
  FrmIMC.Position:= poScreenCenter;
end;

end.
