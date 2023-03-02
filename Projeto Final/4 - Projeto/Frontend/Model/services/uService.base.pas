unit uService.base;

interface

uses
  uService.Intf, Rest.Client, Rest.Types;

type
  Tservicebase = Class(TinterfacedObject, Iservice)
  Private
    FToken: String;

  Protected
    FRESTClient: TRestclient;
    FRESTrequest: TRESTRequest;
    FRESTResponse: TRESTresponse;

    Procedure CarregarToken;
    Procedure Registrar; virtual; abstract;
    Procedure Listar; virtual; abstract;
    Procedure Excluir; virtual; abstract;

    function ObterRegistro(Const aID: Integer): TObject; virtual; abstract;

  public
    Constructor create;
    Destructor Destroy; Override;

  End;

implementation

uses
  System.Classes, System.SysUtils, winapi.Windows;

{ Tservicebase }

procedure Tservicebase.CarregarToken;
var
  xMeuArquivo: Thandle;
  xStringlist: TStringlist;
const
  NOME_ARQUIVO = 'token.jwt';

begin
  FToken := EmptyStr;
  xStringlist := TStringlist.create;

  try
    if not Fileexists(NOME_ARQUIVO) then
    begin
      xMeuArquivo := filecreate(NOME_ARQUIVO);
      if xMeuArquivo <> INVALID_HANDLE_VALUE then
        fileClose(xMeuArquivo);
    end;
    xStringlist.LoadFromFile(NOME_ARQUIVO);
    if xStringlist.Count > 0 then
      FToken := xStringlist[0];

  finally
    xStringlist.Free;

  end;

end;

constructor Tservicebase.create;
begin
Self.CarregarToken;
FRESTclient   := TRESTclient.create(nil);
FRESTRequest  := TRESTRequest.Create(nil);
FRESTResponse :=  TRESTResponse.Create(nil);

FRESTRequest.Accept := 'application/json';
FRESTRequest.Client := FRESTClient;
FRESTRequest.Response := FRESTResponse;
FRESTRequest.params.Clear;

FRESTRequest.Params.AddHeader('Authorization',
            format('Bearer %s', [FToken]));
FRESTRequest.Params.ParameterByName('Authorization').Options := [poDoNotEncode];
end;

destructor Tservicebase.Destroy;
begin
FreeAndNil(FRESTClient);
FreeAndNil(FRESTRequest);
FreeAndNil(FRESTResponse);

  inherited;
end;

end.
