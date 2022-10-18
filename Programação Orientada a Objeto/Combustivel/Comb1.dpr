program Comb1;

uses
  Vcl.Forms,
  Combustivel in 'Combustivel.pas' {Form2},
  TobjComb in 'TobjComb.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
