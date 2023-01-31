unit Receiver;

interface

Type
  TReceiver = class
  Public
    Procedure ExtrairProcessos;
    Procedure ExtrairProgramas;
    Procedure ExtrairVariaveisAmbiente;
  end;

implementation

uses
  Dialogs, Messages, Windows, TlHelp32, psAPI, SysUtils, Registry, Classes;

{ TReceiver }

procedure TReceiver.ExtrairProcessos;
var
  xHandle: THandle;
  xProcessEntry: TProcessEntry32;
  xListaProcessos: TStringList;
begin
  // M�todo responsavel por extrair a lista de processos em execu��o.

  xHandle := Createtoolhelp32snapshot(TH32CS_SnapProcess, 0);
  xListaProcessos := TStringList.Create;

  try
    xProcessEntry.dwSize := Sizeof(TProcessEntry32);
    Process32Next(xHandle, xProcessEntry);
    // Percorre os processos que est�o em execu��o.
    // Adicionando-os na variavel lista processos.
    Repeat
      xListaProcessos.Add(xProcessEntry.szExeFile);

    Until not Process32Next(xHandle, xProcessEntry);

    // Grava a lista de processos no arquivo processos.txt

    xListaProcessos.SaveToFile(GetCurrentDir + ' \Processos.txt');

  finally
    CloseHandle(xHandle);
    FreeAndNil(xListaProcessos);

  end;
end;

procedure TReceiver.ExtrairProgramas;
Const
  CHAVE_REGISTRO = '\Softaware\Microsoft\Windows\CurrentVersion\Uninstall\';

var
  xRegistro: TRegistry;
  xContador: Integer;
  xListaCHaves: TStringList;
  xListaProgramas: TStringList;

begin
  // M�todo responsavel por extrair a lista de programas instalados
  // Obs a aplica��o deve se executada como administrador.

  xRegistro := TRegistry.Create;
  xListaCHaves := TStringList.Create;
  xListaProgramas := TStringList.Create;

  try
    // Obtem a lista de chaves existentes no caminho do registro que armazena
    // as informa��es dos programas instalados

    xRegistro.RootKey := HKEY_LOCAL_MACHINE;
    xRegistro.OpenKey(CHAVE_REGISTRO, False);
    xRegistro.GetKeyNames(xListaCHaves);
    xRegistro.CloseKey;

    // Percorre a lista de chaves para acessar o valor do atributo "DisplayName"

    for xContador := 0 to Pred(xListaCHaves.Count) do
    begin
      xRegistro.RootKey := HKEY_LOCAL_MACHINE;
      xRegistro.OpenKey(CHAVE_REGISTRO + xListaCHaves[xContador], False);

      if xRegistro.ReadString('DisplayName') <> EmptyStr then
        // Adiciona o nome do programa na variavel ListaProgramas
        xListaProgramas.Add(xRegistro.ReadString('DisplayName'));
      xRegistro.CloseKey;
    end;
    // Grava a lista de processos no arquivo "Programas.txt'
    xListaProgramas.SaveToFile(GetCurrentDir + '\Programas.txt');
  finally
    // Libera os objetos da mem�ria

    FreeAndNil(xListaProgramas);
    FreeAndNil(xListaCHaves);
    FreeAndNil(xRegistro);

  end;
end;

procedure TReceiver.ExtrairVariaveisAmbiente;
var
  xVariavel: PChar;
  xListaVariaveis: TStringList;

begin
  // Metodo responsavel por extrair a lista das vari�veis de ambiente.

  xListaVariaveis := TStringList.Create;

  try
    // Obtem a lista de variaveis de ambiente.

    xVariavel := GetEnvironmentStrings;

    while xVariavel^ <> #0 do
    begin
      xListaVariaveis.Add(StrPas(xVariavel));
      xListaVariaveis.Add(EmptyStr);
      Inc(xVariavel, lStrLen(xVariavel) + 1);
    end;
    FreeEnvironmentStrings(xVariavel);

    // Grava a lista de variaveis no arquivo 'Variaveis.txt'
    xListaVariaveis.SaveToFile(GetCurrentDir + '\Variaveis.txt');
  finally

    // Libera o objeto da mem�ria
    FreeAndNil(xListaVariaveis);

  end;

end;

end.
