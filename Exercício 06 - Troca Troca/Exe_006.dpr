program Exe_006;

uses
  Vcl.Forms,
  Exe_06 in 'Exe_06.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
