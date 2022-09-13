unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, XPMan, jpeg;

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
    Button3: TButton;
    Image1: TImage;
    procedure Button3Click(Sender: TObject);
  private
    Progress:TProgressbar;//定义变量Progress类型为TProgressbar控件类型
    StatusDrawRect:TRect;//此类型是自定义类型表示一个有效的方形区域
    { Private declarations }
  public
    { Public declarations }
  end;


 //-----------------------------------------------
type
  TRect=Record
    case Integer of
         0:(Left,Top,Right,Bottom:Integer);
         1:(TopLeft,BottomRight:TPoint);
    end;
 //-----------------------------------------------
var
  Form2: TForm2;
implementation

{$R *.DFM}

procedure TForm2.Button3Click(Sender: TObject);
var
  I,Count:integer;
  Pane1Windth:integer;
begin
  StatusDrawRect.Left:=100;
  StatusDrawRect.Right:=3000;
  StatUsDrawRect.Top:=2;
  StatusDrawRect.Bottom:=20;
  Progress:=TProgressBar.Create(Form2);//在Form1窗体上创建Progress控件
  Count:=300;//设置进度条的最大值
  Pane1Windth:=StatusBar1.Panels[2].Width;
  //设置进度条的宽度和信息栏相等
  StatusBar1.Panels.Items[2].Width:=150;//改变宽度
  Statusbar1.Repaint;
  with Progress do
  begin
    //--------------------------
    Top:=StatusDrawRect.Top;
    Left:=StatusDrawRect.Left;
    Width:=StatusDrawRect.Right-StatusDrawrect.Left;
    Height:=StatusDrawRect.Bottom-StatusDrawRect.Top;
    //---------------------------
    Visible:=True;
    Try
      Parent:=StatusBar1;//将进度条放在信息栏上
      Min:=0;
      Max:=Count;//进度套最大值
      Step:=1;
      For I:=1 to Count do
          begin
               sleep(10);
               Application.ProcessMessages;
               Stepit;
          end;
      ShowMessage('完成操作,释放此组件');
    Finally
      Free;//释放进度条
    End;
  end;
  StatusBar1.Panels.Items[2].Width:=Pane1windth;//恢复宽度
end;

end.
