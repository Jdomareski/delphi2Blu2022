program Coffee2;

uses
  System.StartUpCopy,
  FMX.Forms,
  Coffee in 'Coffee.pas' {Formulario1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormulario1, Formulario1);
  Application.Run;
end.
