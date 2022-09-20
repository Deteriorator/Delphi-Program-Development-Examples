unit MRCRM_ZJM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, Grids, Outline, ExtCtrls, ComObj, shellapi, inifiles,
  jpeg, XPMan;

type
  TFRM_CRM = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Image2: TImage;
    TreeView1: TTreeView;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N12: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    word1: TMenuItem;
    Excel1: TMenuItem;
    N29: TMenuItem;
    Internet1: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    Timer1: TTimer;
    N44: TMenuItem;
    N45: TMenuItem;
    XPManifest1: TXPManifest;
    procedure TreeView1DblClick(Sender: TObject);
    procedure word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure Internet1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CRM: TFRM_CRM;

implementation

{$R *.dfm}

procedure TFRM_CRM.TreeView1DblClick(Sender: TObject);
begin
  if treeview1.Selected.Text = '区域信息设置' then
    n2.OnClick(sender);
  if treeview1.Selected.Text = '企业性质设置' then
    n3.OnClick(sender);
  if treeview1.Selected.Text = '企业类型设置' then
    n4.OnClick(sender);
  if treeview1.Selected.Text = '企业资信设置' then
    n5.OnClick(sender);
  if treeview1.Selected.Text = '客户级别设置' then
    n6.OnClick(sender);
  if treeview1.Selected.Text = '客户满意程度设置' then
    n7.OnClick(sender);
  if treeview1.Selected.Text = '客户信息' then
    n9.OnClick(sender);
  if treeview1.Selected.Text = '联系人信息' then
    n10.OnClick(sender);
  if treeview1.Selected.Text = '业务往来' then
    n11.OnClick(sender);
  if treeview1.Selected.Text = '发送邮件' then
    n13.OnClick(sender);
  if treeview1.Selected.Text = '客户反馈' then
    n15.OnClick(sender);
  if treeview1.Selected.Text = '客户投拆' then
    n16.OnClick(sender);
  if treeview1.Selected.Text = '客户反馈满意程度分析' then
    n17.OnClick(sender);
  if treeview1.Selected.Text = '客户投拆满意程度分析' then
    n18.OnClick(sender);
  if treeview1.Selected.Text = '客户信息查询' then
    n19.OnClick(sender);
  if treeview1.Selected.Text = '联系人信息查询' then
    n20.OnClick(sender);
  if treeview1.Selected.Text = '根据客户反馈满意程度查询' then
    n21.OnClick(sender);
  if treeview1.Selected.Text = '根据客户投诉满意程序查询' then
    n22.OnClick(sender);
  if treeview1.Selected.Text = '客户反馈查询' then
    n23.OnClick(sender);
  if treeview1.Selected.Text = '客户投诉查询' then
    n24.OnClick(sender);
  if treeview1.Selected.Text = '客户信息报表' then
    n26.OnClick(sender);
  if treeview1.Selected.Text = '联系人信息报表' then
    n27.OnClick(sender);
  if treeview1.Selected.Text = '调用word' then
    word1.OnClick(sender);
  if treeview1.Selected.Text = '调用Excel' then
    excel1.OnClick(sender);
  if treeview1.Selected.Text = '登录Internet' then
    Internet1.OnClick(sender);
  if treeview1.Selected.Text = '计算器' then
    N29.OnClick(sender);
  if treeview1.Selected.Text = '工作业务备忘' then
    N30.OnClick(sender);
  if treeview1.Selected.Text = '国内主要城市区号邮编查询' then
    N31.OnClick(sender);
  if treeview1.Selected.Text = '业务往来报表' then
    n32.OnClick(sender);
  if treeview1.Selected.Text = '客户反馈报表' then
    n33.OnClick(sender);
  if treeview1.Selected.Text = '客户投拆报表' then
    n34.OnClick(sender);
  if treeview1.Selected.Text = '操作员管理' then
    n36.OnClick(sender);
  if treeview1.Selected.Text = '查看日志' then
    n37.OnClick(sender);
  if treeview1.Selected.Text = '数据备份与数据恢复' then
    n38.OnClick(sender);
  if treeview1.Selected.Text = '系统数据清理' then
    n39.OnClick(sender);
  if treeview1.Selected.Text = '本单位信息' then
    n41.OnClick(sender);
  if treeview1.Selected.Text = '重新登录' then
    n42.OnClick(sender);
  if treeview1.Selected.Text = '退出系统' then
    n43.OnClick(sender);
end;

procedure TFRM_CRM.word1Click(Sender: TObject);
var
  word : olevariant;
begin
  word := createoleobject('word.application');
  word.visible := true;
  word.documents.add;
end;

procedure TFRM_CRM.Excel1Click(Sender: TObject);
var
  excel,sheet,workbooks : variant;
begin
  excel := createoleobject('excel.application');
  excel.visible := true;
  sheet := excel.workbooks.add;
end;

procedure TFRM_CRM.N29Click(Sender: TObject);
var
   dir : PChar;
begin
  Getmem(dir,255);
  getsystemdirectory(dir,255);
  dir := PChar(dir+'\calc.exe');
  winexec(PAnsiChar(dir),sw_show);
end;

procedure TFRM_CRM.Internet1Click(Sender: TObject);
begin
  ShellExecute(handle,'open','httP://www.mingrisoft.com',nil,nil,SW_SHOWNORMAL);
end;

procedure TFRM_CRM.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels[5].Text := ' '+timetostr(gettime());
end;

procedure TFRM_CRM.N2Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N3Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N4Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N5Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N6Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N7Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N9Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N10Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N11Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N13Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N15Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N16Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N17Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N18Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N19Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N20Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N21Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N22Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N23Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N24Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N26Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N27Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N32Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N33Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N34Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N30Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N31Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N36Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N37Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N38Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N39Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N41Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N42Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N43Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_CRM.N45Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

end.
