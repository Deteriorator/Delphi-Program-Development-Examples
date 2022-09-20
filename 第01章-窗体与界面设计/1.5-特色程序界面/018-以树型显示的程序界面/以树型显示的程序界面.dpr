program 以树型显示的程序界面;

uses
  Vcl.Forms,
  MRCRM_ZJM in 'MRCRM_ZJM.pas' {FRM_CRM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_CRM, FRM_CRM);
  Application.Run;
end.
