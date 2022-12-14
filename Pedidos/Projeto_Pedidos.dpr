program Projeto_Pedidos;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form2},
  udmPedidos in 'udmPedidos.pas' {dmPedidos: TDataModule},
  ufrmComprador in 'ufrmComprador.pas' {frmCompradores},
  ufrmFornecedor in 'ufrmFornecedor.pas' {frmFornecedores},
  ufrmProdutos in 'ufrmProdutos.pas' {frmProdutos},
  ufrmUnidadeMedida in 'ufrmUnidadeMedida.pas' {frmUnidadeMedida},
  ufrmPedidos in 'ufrmPedidos.pas' {frmPedidos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmUnidadeMedida, frmUnidadeMedida);
  Application.CreateForm(TfrmPedidos, frmPedidos);
  Application.Run;
end.
