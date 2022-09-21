
unit rsglxt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ComCtrls, ToolWin, jpeg, ExtCtrls,
  StdCtrls, Buttons,ShellAPI;

type
  TForm74 = class(TForm)
    Image1: TImage;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label8: TLabel;
    Timer1: TTimer;
    SpeedButton8: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Label13: TLabel;
    procedure TreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton13MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton12MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton10MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure SpeedButton11MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form74: TForm74;
  czymc : String;
implementation

{$R *.dfm}

procedure TForm74.TreeView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TForm74.SpeedButton8Click(Sender: TObject);
begin
  Close;
end;

procedure TForm74.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[2].Text:='系统日期：'+DateToStr(now);
  StatusBar1.Panels.Items[3].Text:='系统时间：'+TimeToStr(now);
end;

procedure TForm74.SpeedButton12Click(Sender: TObject);
var
  OFile:String;
  HWndCalculator:HWnd;
begin
  HWndCalculator:=FindWindow(nil,'记事本');
  if (HWndCalculator=0) then
  begin
    OFile:='NOTEPAD.EXE';
    Shellexecute(handle,'Open',pchar(OFile),nil,pchar(ExtractFilePath(OFile)),SW_SHOWNORMAL);
  end;
end;

procedure TForm74.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if application.MessageBox('真的要退出本系统吗？','提示',mb_yesno)=idno then
  begin
    canclose := false;
  end;
end;

procedure TForm74.SpeedButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton1.Caption := '  公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton7.Caption := '操作权限管理';
  SpeedButton8.Caption := '系 统 退 出';
end;

procedure TForm74.SpeedButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton2.Caption := '  部门信息管理';
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton7.Caption := '操作权限管理';
  SpeedButton8.Caption := '系 统 退 出';
end;

procedure TForm74.SpeedButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton3.Caption := '  人员类别管理';
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton7.Caption := '操作权限管理';
  SpeedButton8.Caption := '系 统 退 出';
end;

procedure TForm74.SpeedButton4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton4.Caption := '  银行信息管理';
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton7.Caption := '操作权限管理';
  SpeedButton8.Caption := '系 统 退 出';
end;

procedure TForm74.SpeedButton5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton5.Caption := '  员工信息管理';
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton7.Caption := '操作权限管理';
  SpeedButton8.Caption := '系 统 退 出';
end;

procedure TForm74.SpeedButton6MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton6.Caption := '  员工调动管理';
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton7.Caption := '操作权限管理';
  SpeedButton8.Caption := '系 统 退 出';
end;

procedure TForm74.SpeedButton7MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton7.Caption := '  操作权限管理';
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton8.Caption := '系 统 退 出';
end;

procedure TForm74.SpeedButton8MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton8.Caption := '  系 统 退 出';
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton7.Caption := '操作权限管理';
end;

procedure TForm74.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SpeedButton1.Caption := '公司信息管理';
  SpeedButton2.Caption := '部门信息管理';
  SpeedButton3.Caption := '人员类别管理';
  SpeedButton4.Caption := '银行信息管理';
  SpeedButton5.Caption := '员工信息管理';
  SpeedButton6.Caption := '员工调动管理';
  SpeedButton7.Caption := '操作权限管理';
  SpeedButton8.Caption := '系 统 退 出';
  SpeedButton9.Layout := blGlyphLeft;
  SpeedButton10.Layout := blGlyphLeft;
  SpeedButton11.Layout := blGlyphLeft;
  SpeedButton12.Layout := blGlyphLeft;
  SpeedButton13.Layout := blGlyphLeft;
end;

procedure TForm74.SpeedButton9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton9.Layout := blGlyphTop;
  SpeedButton10.Layout := blGlyphLeft;
  SpeedButton11.Layout := blGlyphLeft;
  SpeedButton12.Layout := blGlyphLeft;
  SpeedButton13.Layout := blGlyphLeft;
end;

procedure TForm74.SpeedButton13MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton13.Layout := blGlyphTop;
  SpeedButton9.Layout := blGlyphLeft;
  SpeedButton10.Layout := blGlyphLeft;
  SpeedButton11.Layout := blGlyphLeft;
  SpeedButton12.Layout := blGlyphLeft;
end;

procedure TForm74.SpeedButton12MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton12.Layout := blGlyphTop;
  SpeedButton9.Layout := blGlyphLeft;
  SpeedButton10.Layout := blGlyphLeft;
  SpeedButton11.Layout := blGlyphLeft;
  SpeedButton13.Layout := blGlyphLeft;
end;

procedure TForm74.SpeedButton10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton10.Layout := blGlyphTop;
  SpeedButton9.Layout := blGlyphLeft;
  SpeedButton11.Layout := blGlyphLeft;
  SpeedButton12.Layout := blGlyphLeft;
  SpeedButton13.Layout := blGlyphLeft;
end;

procedure TForm74.SpeedButton11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SpeedButton11.Layout := blGlyphTop;
  SpeedButton9.Layout := blGlyphLeft;
  SpeedButton10.Layout := blGlyphLeft;
  SpeedButton12.Layout := blGlyphLeft;
  SpeedButton13.Layout := blGlyphLeft;
end;

procedure TForm74.Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SpeedButton9.Layout := blGlyphLeft;
  SpeedButton10.Layout := blGlyphLeft;
  SpeedButton11.Layout := blGlyphLeft;
  SpeedButton12.Layout := blGlyphLeft;
  SpeedButton13.Layout := blGlyphLeft;
end;

procedure TForm74.Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  SpeedButton9.Layout := blGlyphLeft;
  SpeedButton10.Layout := blGlyphLeft;
  SpeedButton11.Layout := blGlyphLeft;
  SpeedButton12.Layout := blGlyphLeft;
  SpeedButton13.Layout := blGlyphLeft;
end;

end.

