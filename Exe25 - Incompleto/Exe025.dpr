program Exe025;

uses
  Vcl.Forms,
  Exe25 in 'Exe25.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
