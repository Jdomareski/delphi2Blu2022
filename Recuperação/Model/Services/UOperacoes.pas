unit UOperacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMeuarquivo = class

  Private
    Fstream: TFileStream;
  Public
    Constructor Create(Const Arquivo: String);
    Destructor Destroy; Override;
//    Procedure Inserir;

  end;

implementation

uses
  UfrmPrincipal;

{ TMeuarquivo }

constructor TMeuarquivo.Create(const Arquivo: String);
begin
  inherited Create;
  Fstream := TFileStream.Create('Arquivo.txt', Fmcreate);
end;

destructor TMeuarquivo.Destroy;
begin
  Fstream.Free;
  inherited;
end;

{procedure TMeuarquivo.Inserir;
var
xArq: TextFile;
Func : TStringList;
i : Integer;

begin
Func := TStringList.Create;
Begin
  if FileExists('Arquivo.txt') then

  //  Func.LoadFromFile('Arquivo.txt');
//  Func.Add(frmPrincipal.edtnome.text)+ (frmPrincipal.edtSobre.text + StrtoFloat(frmPrincipal.EdtSalario.text));

End;

end;}

end.
