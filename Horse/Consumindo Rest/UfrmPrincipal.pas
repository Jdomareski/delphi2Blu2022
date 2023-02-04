unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfrmPrincipal = class(TForm)
    lblResultado: TLabel;
    btnHelloWorld: TButton;
    btnPingPong: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btnPingPongClick(Sender: TObject);
    procedure btnHelloWorldClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    const SUCESSO = 200;
    procedure TratarResposta;
    procedure HelloWorld;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnHelloWorldClick(Sender: TObject);
begin
Self.HelloWorld;
end;

procedure TfrmPrincipal.btnPingPongClick(Sender: TObject);
begin
RestClient1.BaseURL := 'http://localhost:9000/ping';
RestRequest1.Execute;

self.tratarResposta;

end;

procedure TfrmPrincipal.HelloWorld;
begin
RestClient1.BaseURL := 'http://localhost:9000/HelloWorld';
RestRequest1.Execute;

Self.TratarResposta

end;

procedure TfrmPrincipal.TratarResposta;
begin
if RestResponse1.StatusCode = SUCESSO then
lblResultado.Caption := 'Resultado:   ' + RestResponse1.Content

else
lblResultado.Caption :=
Format ('Erro na requisição> Status(%d)', [Restresponse1.StatusCode]);

end;

end.
