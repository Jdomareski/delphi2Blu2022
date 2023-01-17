program Project22;

uses
  Vcl.Forms,
  Teste2 in 'Teste2.pas' {Form3},
  Teste in 'Teste.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
