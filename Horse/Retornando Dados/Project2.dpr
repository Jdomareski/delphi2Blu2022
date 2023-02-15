program Project2;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.jhonson,
  Horse.query,
  firedac.comp.Client,
  FireDAC.DApt,
  firedac.stan.Def,
  firedac.stan.Async,
  data.db,
  System.SysUtils,
  firedac.phys.MySQL;

begin
  Thorse.use(jhonson);
  Thorse.use(query); // middleware do query deve vir sempre depois do jhonson

  // usando dados em memoria.

  Thorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      xmemtable: TfdMemTable;
    begin
      // xmemtable := Tfdmemtable.create(nil);
      xmemtable := TfdMemTable.Create(nil);
      // xmemtable.Fielddefs.add('c�digo', ftinterger, 0, False);
      xmemtable.FieldDefs.add('Codigo', ftInteger, 0, False);
      xmemtable.FieldDefs.add('nome', ftstring, 100, False);

      xmemtable.Logchanges := False;
      // xmemtable.cacheupdates := true;
      xmemtable.CachedUpdates := True;

      xmemtable.close;
      xmemtable.createdataset;
      xmemtable.open;

      xmemtable.AppendRecord([1, 'Ping']);
      xmemtable.AppendRecord([2, 'Pong']);
      xmemtable.applyUpdates;

      Res.send<TfdMemTable>(xmemtable);
    end);

  // lendo dados do banco sakilla (actors)

  // procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  // var
  // xconexao: TfdConnection;
  // xDriver: TfdPhysMySqlDriverLink.Create(nil);
  // xQuery: TfdQuery.Create(nil);
  Thorse.Get('/list',
  procedure(Req: THorseRequest; Res: THorseResponse;
    Next: TProc)var xConexao: TFDConnection; xDriver: TFDPhysMySQLDriverLink;
  xQuery: TFDQuery;

  begin
  xDriver := TFDPhysMySQLDriverLink.Create(nil);
  xConexao := TFDConnection.Create(nil);
  xQuery := TFDQuery.Create(nil);


  // Driver de conex�o do SQL

  // xDriver.vendorLib := ExtractFilePath(Paramstr(0) + 'Libmysql.dll';

  xDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'libmysql.dll';

  // parametros de configuracao do banco

  xConexao.drivername := 'Mysql';
  xConexao.LoginPrompt := False;
  xConexao.Params.add('Database=Sakila');
  xConexao.Params.add('User_Name=root');
  xConexao.Params.add('Password=root');
  xConexao.Params.add('Server=localhost');
  xConexao.Params.add('DriverID=Mysql');
   xConexao.open;

  // query

  xQuery.connection := xConexao; xQuery.open('Select * from Actor');

  // Res.send<TfdQuery>(xQuery); end);

  Res.send<TFDQuery>(xQuery);
  end);

  Thorse.Listen(9000,
   procedure(Horse: Thorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);

    // Procedure(Horse: Thorse)begin Writeln('Server is running on port' +
    // IntToStr(Horse.Port)); end;

  end.