program Exe_22;

uses
  Vcl.Forms,
  Exe22 in 'Exe22.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
