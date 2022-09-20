program 以图形按钮显示的界面;

uses
  Vcl.Forms,
  MRERP_ZJM in 'MRERP_ZJM.pas' {FRM_ERP_ZJM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_ERP_ZJM, FRM_ERP_ZJM);
  Application.Run;
end.
