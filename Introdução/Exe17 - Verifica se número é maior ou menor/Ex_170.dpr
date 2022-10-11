program Ex_170;

uses
  Vcl.Forms,
  ex_17 in 'ex_17.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
