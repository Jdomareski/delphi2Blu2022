program Calculadora1;

uses
  Vcl.Forms,
  UfrmCalculadora in 'UfrmCalculadora.pas' {Form1},
  UCalcl in 'UCalcl.pas' {Form2},
  UCalculadora in 'UCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
