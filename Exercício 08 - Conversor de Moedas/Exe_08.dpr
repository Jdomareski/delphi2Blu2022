program Exe_08;

uses
  Vcl.Forms,
  Ex_08 in 'Ex_08.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
