program CadGeral2;

uses
  Vcl.Forms,
  CadGeral in 'CadGeral.pas' {Form1},
  UPessoas in 'UPessoas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
