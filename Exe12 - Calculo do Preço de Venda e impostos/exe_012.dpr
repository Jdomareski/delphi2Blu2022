program exe_012;

uses
  Vcl.Forms,
  exe_12 in 'exe_12.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
