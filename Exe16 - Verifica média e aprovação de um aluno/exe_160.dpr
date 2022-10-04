program exe_160;

uses
  Vcl.Forms,
  Exe_16 in 'Exe_16.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
