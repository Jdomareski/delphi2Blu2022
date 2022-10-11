program Ex_10;

uses
  Vcl.Forms,
  Exe_10 in 'Exe_10.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
