program 动态按钮的窗体界面;

uses
  Vcl.Forms,
  RSGLXT in 'RSGLXT.PAS' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm74, Form74);
  Application.Run;
end.
