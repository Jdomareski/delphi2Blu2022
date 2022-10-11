program ContaCorrV2;

uses
  Vcl.Forms,
  ContaV2 in 'ContaV2.pas' {Form1},
  CCor in 'CCor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
