program project;

{$mode objfpc}

uses
  browserapp, JS, Classes, SysUtils, Web;

type
  TMyApplication = class(TBrowserApplication)
    procedure doRun; override;
  end;
var 
  title: TJSHTMLElement;
  button : TJSHTMLElement;
procedure setup;
begin
  title :=TJSHTMLElement(document.body.appendChild(document.CreateElement('h1')));
  button := TJSHTMLElement(document.body.appendChild(document.CreateElement('button')));
end;


procedure buildUI;
begin
  title.innerHTML := 'Đây là cái web viết bằng Kode';
  button.innerHTML := 'OK';
end;

procedure TMyApplication.doRun;
begin
  setup;
  buildUI;
  Terminate;
end;

var
  Application : TMyApplication;

begin
  Application:=TMyApplication.Create(nil);
  Application.Initialize;
  Application.Run;
  Application.Free;
end.
