program Exe_011;

uses
  Vcl.Forms,
  Exe_11 in 'Exe_11.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
