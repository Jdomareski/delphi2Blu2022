program Calc_Tri;

uses
  Vcl.Forms,
  Calc_Tria in 'Calc_Tria.pas' {Form1},
  UTriangulo in 'UTriangulo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
