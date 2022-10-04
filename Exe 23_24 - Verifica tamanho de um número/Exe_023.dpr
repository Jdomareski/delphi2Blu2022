program Exe_023;

uses
  Vcl.Forms,
  Exe_23 in 'Exe_23.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
