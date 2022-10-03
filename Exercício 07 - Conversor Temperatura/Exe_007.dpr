program Exe_007;

uses
  Vcl.Forms,
  Exe_07 in 'Exe_07.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
