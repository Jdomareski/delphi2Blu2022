program ContaCorr;

uses
  Vcl.Forms,
  ContaCorrente in 'ContaCorrente.pas' {Form1},
  UConta in 'UConta.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
