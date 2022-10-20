program Project3_Elevador;

uses
  Vcl.Forms,
  Principa in 'Principa.pas' {Form2},
  Elevador in 'Elevador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
