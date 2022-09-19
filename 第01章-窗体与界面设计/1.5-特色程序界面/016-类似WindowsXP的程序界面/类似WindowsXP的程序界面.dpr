program 类似WindowsXP的程序界面;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
