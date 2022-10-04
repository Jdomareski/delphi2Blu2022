program Exe21_1;

uses
  Vcl.Forms,
  Exe21 in 'Exe21.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
