program Project2;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.SysUtils;

begin

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

    THorse.Get('/HelloWorld',
    Procedure (Req: THorseRequest; Res: THorseResponse; Next: TProc)
    Begin
      Res.Send('HelloWorld! Devs2Blu2022.');
    End);


  THorse.Listen(10000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);



end.