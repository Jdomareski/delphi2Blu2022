program Exe_12b;

uses
  Vcl.Forms,
  exe12B in 'exe12B.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
