﻿program 图形化的导航界面;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
