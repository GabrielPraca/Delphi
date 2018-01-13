program P_String;

uses
  Forms,
  U_String in 'U_String.pas' {FrmStrings};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmStrings, FrmStrings);
  Application.Run;
end.
