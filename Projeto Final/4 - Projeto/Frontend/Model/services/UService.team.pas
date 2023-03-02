unit UService.team;

interface

uses
  UEntity.Teams,
  UService.base,
  Generics.collections;

type
TServiceteam = class(TServiceBase)

  Private FTeam: TTeam;
  FTeams:
  TObjectList<TTeam>;

Function GetTeams: TObjectList<TTeam>;

public
  Constructor create;  overload;
  constructor create(ateam: TTeam);   overload;
  destructor destroy;      override;

  Procedure Registrar;  override;
  Procedure Listar;    override;
  Procedure Excluir;   override;



  function obterregistro(Const aId: Integer): TObject;
  override;

  Property Teams: TObjectList<TTeam> read getTeams;

  end;

implementation

Uses
  System.SysUtils, System.JSON, UUTils.constants,
  dataset.Serialize, fireDAC.Comp.Client, REST.Types;

{ TServiceteam }

constructor TServiceteam.create;
begin
  inherited Create;

  FTeams := TObjectList<TTeam>.Create;

end;

constructor TServiceteam.create(ateam: TTeam);
begin
  FTeam := aTeam;
  Self.create;
end;

destructor TServiceteam.destroy;
begin
  FreeAndNil(FTeam);
  FreeAndNil(FTeams);
  inherited;
end;

Procedure TServiceTeam.Excluir;
begin

  if (not Assigned (FTeam) ) or (FTeam.Id = 0) then
  raise Exception.Create('Nenhum time foi escolhido para exclus�o');

  try
    FRESTClient.BaseURL := Format(URL_BASE_TEAM + '/id%', [FTeam.Id]);
    FRESTRequest.Method := rmDelete;
    FRESTRequest.execute;

    case FRESTResponse.StatusCode of
    API_SUCESSO_SEM_RETORNO:
    Exit;

    API_NAO_AUTORIZADO:
    raise exception.Create('Usu�rio n�o autorizado');
    Else
    raise Exception.Create('Erro N�o catalogado');
    end;

Except
  on e: exception do
  raise Exception.Create(e.Message);

  end;

end;


function TServiceteam.GetTeams: TObjectList<TTeam>;
begin
  Result := FTeams;
end;

procedure TServiceteam.Listar;
var
  xMemTable : TfdMemTable;

begin
  FTeams.Clear;
  xMemTable := TfdMemTable.Create(nil);
  try
    try
      FRESTClient.BaseURL :=    URL_BASE_TEAM;
      FRESTRequest.Method := rmGet;
      FRESTRequest.execute;

      case FRestResponse.StatusCode of
        API_SUCESSO:
        Begin
          xMemtable.LoadFromJSON(FRESTResponse.Content);

          while not xMemtable.EoF do
          begin
            FTeams.add(Tteam.create(xMemtable.FieldByName('Id').AsInteger,
                                    xMemtable.FieldByName('Name').AsString));

            xMemTable.Next;
          end;
        End;
        API_NAO_AUTORIZADO:
          raise Exception.Create('Usu�rio n�o autorizado');
        else
          raise Exception.Create('Erro ao carregar lista de times. C�digo do erro: '
          + FRESTResponse.StatusCode.ToString);
      end;

    Except
      on e: Exception do
        raise Exception.Create(e.message);
    end;
  finally
     FreeAndNil(xMemtable);

  end;

  inherited;

end;

function TServiceteam.obterregistro(const aId: Integer): TObject;
var
  xMemTable: Tfdmemtable;
begin

  Result := nil;

  xMemTable := Tfdmemtable.create(nil);

  try
    FRESTClient.baseURL := URL_BASE_TEAM + '/' + aId.Tostring;
    FRESTRequest.Method := rmGet;
    FRESTRequest.Execute;

    if FRESTResponse.StatusCode = API_SUCESSO then
    begin
      xMemTable.loadfromJSON(FRESTResponse.Content);

      if xMemTable.FindFirst then

        Result := TTeam.create(xMemTable.FieldByName('id').AsInteger);
    end;

  finally
    FreeandNil(xMemTable);

  end;
end;

procedure TServiceteam.Registrar;
begin
try
    FRESTClient.baseURL := URL_BASE_TEAM;
    FRESTRequest.Method := rmPost;
    FRESTRequest.Params.AddBody(FTeam.JSON);
    FRESTRequest.Execute;
    case FRESTResponse.StatusCode of
      API_CRIADO:
        exit;
      API_NAO_AUTORIZADO:
        raise Exception.create('Usu�rio n�o autorizado');

    else
      raise Exception.create('Erro n�o catalogado');
    end;

  except
    on E: Exception do
      raise Exception.create(E.message);
  end;


end;

end.