program 像开始菜单一样漂亮的菜单;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
