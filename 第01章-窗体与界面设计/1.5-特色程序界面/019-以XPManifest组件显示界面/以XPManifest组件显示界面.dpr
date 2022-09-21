program 以XPManifest组件显示界面;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMAIN, MAIN);
  Application.Run;
end.
