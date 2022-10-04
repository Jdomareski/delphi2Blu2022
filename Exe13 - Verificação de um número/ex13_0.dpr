program ex13_0;

uses
  Vcl.Forms,
  Ex_13 in 'Ex_13.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
