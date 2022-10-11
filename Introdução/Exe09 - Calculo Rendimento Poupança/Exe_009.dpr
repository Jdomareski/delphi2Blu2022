program Exe_009;

uses
  Vcl.Forms,
  Exe_09 in 'Exe_09.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
