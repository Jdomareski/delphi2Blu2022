program Aluno_Disc;

uses
  Vcl.Forms,
  Aluno_Disciplina in 'Aluno_Disciplina.pas' {Form2},
  Disciplina in 'Disciplina.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
