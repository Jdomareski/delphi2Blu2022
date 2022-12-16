program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {ufrmFormulario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TufrmFormulario, ufrmFormulario);
  Application.Run;
end.
