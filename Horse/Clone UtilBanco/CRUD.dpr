program CRUD;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Query,
  System.SysUtils,
  Uutil.banco in 'Model\Utils\Uutil.banco.pas',
  Udao.intf in 'Model\DAO\Udao.intf.pas',
  ODAO.unidademedida in 'Model\DAO\ODAO.unidademedida.pas',
  UController.Produtos in 'Model\Controllers\UController.Produtos.pas',
  UController.unidademedida in 'Model\Controllers\UController.unidademedida.pas',
  ODAO.Produtos in 'Model\DAO\ODAO.Produtos.pas';

Procedure Registry;
  begin
    THorse.Group.Prefix('v1')
    .Get('/produtos', TControllerProdutos.GetProdutos)
    .Get('/produtos/:id', TControllerProdutos.GetProduto)
    .Post('/produtos', TControllerProdutos.PostProduto)
    .Delete('/produtos/:id', TControllerProdutos.Deleteproduto)

    .Get('/unidademedidas', TControllerunidademedida.Getunidademedidas)
    .Get('/unidademedidas/:id', TControllerunidademedida.Getunidademedida)
    .Post('/unidademedidas', TControllerunidademedida.Postunidademedida)
    .Delete('/unidademedidas/:id', TControllerunidademedida.Deleteunidademedida);
  end;

begin
  THorse.use(Jhonson);
  THorse.Use(Query);

  Registry;

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000,
    procedure(Horse: THorse)
    begin
      Writeln('Server is runing on port ' + IntToStr(Horse.Port));
    end);
end.