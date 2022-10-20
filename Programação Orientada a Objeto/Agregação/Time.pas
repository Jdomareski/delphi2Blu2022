unit Time;



interface
uses Jogador, System.Generics.Collections;
Type

TTime = Class

  Private
    FId : Integer;
    FnomeTime: String;
    Ftecnico: String;
    FanoFundacao: TDate;
    Fjogadores : Tlist<TJogador>;

    function getanoFundacao: Tdate;
    function getnomeTime: string;
    function gettecnico: string;
    procedure setanoFundacao(const Value: Tdate);
    procedure setnomeTime(const Value: string);
    procedure settecnico(const Value: string);
    function getJogadores: Tlist<TJogador>;
    function getid: Integer;
    procedure setid(const Value: Integer);


  Public

    Constructor Create(aJogadores: Tlist<TJogador>);
    Property ID : Integer                read getid write setid;
    Property Nome : string                read getnomeTime write setnomeTime;
    Property Tecnico : string             read gettecnico write settecnico;
    Property Ano : Tdate                  read getanoFundacao write setanoFundacao;
    Property Jogadores : Tlist<TJogador>  read getJogadores;



  End;


implementation

{ TTime }

constructor TTime.Create(aJogadores: Tlist<TJogador>);
begin
inherited create;
FJogadores := aJogadores;
end;

function TTime.getanoFundacao: Tdate;
begin
Result := FanoFundacao
end;

function TTime.getid: Integer;
begin
Result := fId
end;

function TTime.getJogadores: Tlist<TJogador>;
begin
Result := FJogadores;
end;

function TTime.getnomeTime: string;
begin
Result := fNometime
end;

function TTime.gettecnico: string;
begin
Result := ftecnico
end;

procedure TTime.setanoFundacao(const Value: Tdate);
begin
Fanofundacao := value
end;

procedure TTime.setid(const Value: Integer);
begin
Fid := value
end;

procedure TTime.setnomeTime(const Value: string);
begin
FnomeTime := value
end;

procedure TTime.settecnico(const Value: string);
begin
ftecnico := Value
end;

end.
