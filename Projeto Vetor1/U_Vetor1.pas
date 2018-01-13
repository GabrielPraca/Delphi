unit U_Vetor1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmVetor1 = class(TForm)
    LblLista: TLabel;
    LstNomes: TListBox;
    BtnMostra: TButton;
    procedure BtnMostraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVetor1: TFrmVetor1;
  vnomes: array[0..4] of string;
  linha: integer;

implementation

{$R *.dfm}

procedure TFrmVetor1.BtnMostraClick(Sender: TObject);
begin
  vnomes[0]:= 'Pafuncio';
  vnomes[1]:= 'Tenistocles';
  vnomes[2]:= 'Evandicrésia';
  vnomes[3]:= 'Lauricreide';
  vnomes[4]:= 'Claudicrei';
  LstNomes.Clear();
  for linha:=0 to 4 do
    LstNomes.Items.Add(vnomes[linha]);
end;

end.
