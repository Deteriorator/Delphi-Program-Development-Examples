program 在状态栏中显示检查框;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
