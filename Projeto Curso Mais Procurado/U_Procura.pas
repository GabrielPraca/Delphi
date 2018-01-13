unit U_Procura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmProcura = class(TForm)
    Button1: TButton;
    ShpMaisProcurado: TShape;
    Label1: TLabel;
    LblCursoProcurado: TLabel;
    GpbCurso: TGroupBox;
    RdbInfo: TRadioButton;
    RdbAdm: TRadioButton;
    RdbEM: TRadioButton;
    RdbLog: TRadioButton;
    GpbAno: TGroupBox;
    Rdb1ano: TRadioButton;
    Rdb2ano: TRadioButton;
    Rdb3ano: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProcura: TFrmProcura;
  cursoProcurado: array[0..$FF] of integer; //$FF = 256
  procuras: integer;

implementation

uses Math;

{$R *.dfm}

procedure TFrmProcura.FormCreate(Sender: TObject);
begin
 procuras:= 0;
end;

procedure TFrmProcura.Button1Click(Sender: TObject);
var i, numProcuras1, numProcuras2, numProcuras3, numProcuras4: integer;
begin
  If not(RdbInfo.Checked or RdbAdm.Checked or RdbEM.Checked or RdbLog.Checked) then
    Application.MessageBox('Selecione um curso.', 'Aviso')
  else if not(Rdb1ano.Checked or Rdb2ano.Checked or Rdb3ano.Checked) then
    Application.MessageBox('Selecione o ano.', 'Aviso')
  else if procuras <= 50 then
  Begin
    If RdbInfo.Checked then
    Begin
      if Rdb1ano.Checked then
        Application.MessageBox('Vá para o primeiro andar do prédio 1.', 'Destino');
      if Rdb2ano.Checked then
        Application.MessageBox('Vá para o segundo andar do prédio 1.', 'Destino');
      if Rdb3ano.Checked then
        Application.MessageBox('Vá para o terceiro andar do prédio 1.', 'Destino');
      cursoProcurado[procuras]:= 1;
    End;
    If RdbAdm.Checked then
    Begin
      if Rdb1ano.Checked then
        Application.MessageBox('Vá para o primeiro andar do prédio 2.', 'Destino');
      if Rdb2ano.Checked then
        Application.MessageBox('Vá para o segundo andar do prédio 2.', 'Destino');
      if Rdb3ano.Checked then
        Application.MessageBox('Vá para o terceiro andar do prédio 2.', 'Destino');
      cursoProcurado[procuras]:= 2;
    End;
    If RdbEM.Checked then
    Begin
      if Rdb1ano.Checked then
        Application.MessageBox('Vá para o primeiro andar do prédio 3.', 'Destino');
      if Rdb2ano.Checked then
        Application.MessageBox('Vá para o segundo andar do prédio 3.', 'Destino');
      if Rdb3ano.Checked then
        Application.MessageBox('Vá para o terceiro andar do prédio 3.', 'Destino');
      cursoProcurado[procuras]:= 3;
    End;
    If RdbLog.Checked then
    Begin
      if Rdb1ano.Checked then
        Application.MessageBox('Vá para o primeiro andar do prédio 4.', 'Destino');
      if Rdb2ano.Checked then
        Application.MessageBox('Vá para o segundo andar do prédio 4.', 'Destino');
      if Rdb3ano.Checked then
        Application.MessageBox('Vá para o terceiro andar do prédio 4.', 'Destino');
      cursoProcurado[procuras]:= 4;
    End;

    Inc(procuras);

    numProcuras1:= 0;
    numProcuras2:= 0;
    numProcuras3:= 0;
    numProcuras4:= 0;
    for i:=1 to procuras do
    Begin
      If cursoProcurado[i-1] = 1 then
        Inc(numProcuras1);
      If cursoProcurado[i-1] = 2 then
        Inc(numProcuras2);
      If cursoProcurado[i-1] = 3 then
        Inc(numProcuras3);
      If cursoProcurado[i-1] = 4 then
        Inc(numProcuras4);
    End;

    if((numProcuras1 > numProcuras2) and (numProcuras1 > numProcuras3) and (numProcuras1 > numProcuras4)) then
      LblCursoProcurado.Caption:= 'Curso: Informática'
    else if((numProcuras2 > numProcuras1) and (numProcuras2 > numProcuras3) and (numProcuras2 > numProcuras4)) then
      LblCursoProcurado.Caption:= 'Curso: Administração'
    else if((numProcuras3 > numProcuras1) and (numProcuras3 > numProcuras2) and (numProcuras3 > numProcuras4)) then
      LblCursoProcurado.Caption:= 'Curso: Ensino Médio'
    else if((numProcuras4 > numProcuras1) and (numProcuras4 > numProcuras2) and (numProcuras4 > numProcuras3)) then
      LblCursoProcurado.Caption:= 'Curso: Logística';
  End;
end;

end.
