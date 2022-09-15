program 带导航菜单的主界面;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
