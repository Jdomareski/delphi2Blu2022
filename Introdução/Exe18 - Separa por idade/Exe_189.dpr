program Exe_189;

uses
  Vcl.Forms,
  exe_18 in 'exe_18.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
