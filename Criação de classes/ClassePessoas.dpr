program ClassePessoas;

uses
  Vcl.Forms,
  CClasses_1 in 'CClasses_1.pas' {Form1},
  UPessoas in 'UPessoas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
