program Exercicio_5;

uses
  Vcl.Forms,
  Exe_5 in 'Exe_5.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
