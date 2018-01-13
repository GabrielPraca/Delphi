unit U_Loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmCadastro = class(TForm)
    LblNomeLoja: TLabel;
    LblCadastro: TLabel;
    LblNome: TLabel;
    LblEnder: TLabel;
    LblBairro: TLabel;
    LblCidade: TLabel;
    LblCep: TLabel;
    LblCpf: TLabel;
    LblCel: TLabel;
    LblEmail: TLabel;
    EdtNome: TEdit;
    EdtEnder: TEdit;
    EdtBairro: TEdit;
    EdtCidade: TEdit;
    EdtCep: TEdit;
    EdtCpf: TEdit;
    EdtCel: TEdit;
    EdtEmail: TEdit;
    LblRg: TLabel;
    LblTel: TLabel;
    EdtRg: TEdit;
    EdtTel: TEdit;
    LblFicha: TLabel;
    BtnCadastra: TButton;
    BtnLimpa: TButton;
    BtnSair: TButton;
    BtnLimpaFicha: TButton;
    procedure BtnCadastraClick(Sender: TObject);
    procedure BtnLimpaClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnLimpaFichaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}

procedure TFrmCadastro.BtnCadastraClick(Sender: TObject);
begin
  if(Trim(EdtNome.Text) = '') then
    ShowMessage('Campo Nome não foi preenchido')
  else if(Trim(EdtEnder.Text) = '') then
      ShowMessage('Campo endereço não foi preenchido')
    else if(Trim(EdtBairro.Text) = '') then
        ShowMessage('Campo Bairro não foi preenchido')
      else if(Trim(EdtCidade.Text) = '') then
          ShowMessage('Campo Cidade não foi preenchido')
        else if(Trim(EdtCep.Text) = '') then
            ShowMessage('Campo CEP não foi preenchido')
          else if(Trim(EdtRg.Text) = '') then
              ShowMessage('Campo RG não foi preenchido')
            else if(Trim(EdtCpf.Text) = '') then
                ShowMessage('Campo CPF não foi preenchido')
              else if(Trim(EdtTel.Text) = '') then
                  ShowMessage('Campo Tel não foi preenchido')
		      	    else if(Trim(EdtCel.Text) = '') then
			      	   	  ShowMessage('Campo Cel não foi preenchido')
		       		    else if(Trim(EdtEmail.Text) = '') then
	        					  ShowMessage('Campo E-Mail não foi preenchido')
					          else
						          LblFicha.Caption := 'Nome: '+Trim(EdtNome.Text)+#13+
						          'Endereço: '+Trim(EdtEnder.Text)+' Bairro: '+Trim(EdtBairro.Text)+#13+
						          'Cidade: '+Trim(EdtCidade.Text)+#13+
						          'CEP: '+Trim(EdtCep.Text)+#13+
						          'RG: '+Trim(EdtRg.Text)+#13+
						          'CPF: '+Trim(EdtCpf.Text)+#13+
						          'Tel: '+Trim(EdtTel.Text)+#13+
						          'Cel: '+Trim(EdtCel.Text)+#13+
                      'E-Mail: '+Trim(EdtEmail.Text)
end;

procedure TFrmCadastro.BtnLimpaClick(Sender: TObject);
begin
  EdtNome.Clear();
  EdtEnder.Clear();
  EdtBairro.Clear();
  EdtCidade.Clear();
  EdtCep.Clear();
  EdtCpf.Clear();
  EdtCel.Clear();
  EdtEmail.Clear();
  EdtRg.Clear();
  EdtTel.Clear();
  EdtNome.Clear();
  EdtNome.Clear();
  EdtNome.Clear();
end;

procedure TFrmCadastro.BtnSairClick(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TFrmCadastro.BtnLimpaFichaClick(Sender: TObject);
begin
  LblFicha.Caption := '';
end;

end.
