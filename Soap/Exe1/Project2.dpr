program Project2;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  FormUnit1 in 'FormUnit1.pas' {Form1},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule},
  New_OneImpl in 'New_OneImpl.pas',
  New_OneIntf in 'New_OneIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
