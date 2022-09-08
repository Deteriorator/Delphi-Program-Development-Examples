program 多彩的菜单;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
