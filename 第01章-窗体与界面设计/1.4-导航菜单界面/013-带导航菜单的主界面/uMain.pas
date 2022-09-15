unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ImgList, ToolWin, Buttons, ExtCtrls, StdCtrls,
  DB, Grids, DBGrids, ADODB, OleServer, Excel2000, jpeg,shellApi,inifiles,
  System.ImageList;

type
  TForm2 = class(TForm)
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel8: TPanel;
    ListView1: TListView;
    ImageList2: TImageList;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    PopupMenu2: TPopupMenu;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    PopupMenu3: TPopupMenu;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    PopupMenu4: TPopupMenu;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    objectN22TMenuItem1: TMenuItem;
    PopupMenu5: TPopupMenu;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    PopupMenu6: TPopupMenu;
    N60: TMenuItem;
    N61: TMenuItem;
    Panel9: TPanel;
    Image2: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure objectN22TMenuItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
  modelr,buildlr,comlr,emplr,sale,gather,plan,payreturn,
  saler,house,custpay,cust,custfx,user1,databack:boolean;
  name:string;
  username:string;
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
  Form2.StatusBar1.Panels[0].Text :='��ӭ���������շ��ز���Ϣ����ϵͳ';
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Form2.StatusBar1.Panels[2].Text :='����ʱ�䣺 '+datetimetostr(now);
end;

procedure TForm2.N27Click(Sender: TObject);
begin
  toolbar1.Show;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  if panel3.Align=altop then
  begin
    panel4.Align:= albottom;
    panel5.Align:= albottom;
    Panel6.Align:= albottom;
    panel7.Align:= albottom;
  end
  else
    panel3.Align:=altop;
  Listview1.Clear;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�������۹���';
  newitem.ImageIndex:=1;
  newitem:=listview1.Items.Add;
  newitem.Caption:='���������տ����';
  newitem.ImageIndex:=2;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�ͻ����Ϲ���';
  newitem.ImageIndex:=3;
  newitem:=listview1.Items.Add;
  newitem.Caption:='���������տ�Ų�ѯ';
  newitem.ImageIndex:=4;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�����˿����';
  newitem.ImageIndex:=5;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  if panel4.Align=altop then
  begin
    panel3.Align:= albottom;
    panel5.Align:= albottom;
    Panel6.Align:= albottom;
    panel7.Align:= albottom;
  end
  else
    panel4.Align:=altop;
    Listview1.Clear;
  newitem:=listview1.Items.Add;
  newitem.Caption:='���۴���������ͳ�Ʊ���';
  newitem.ImageIndex:=6;
  newitem:=listview1.Items.Add;
  newitem.Caption:='¥������Ԥ������ͳ�Ʊ���';
  newitem.ImageIndex:=7;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�ͻ����ݹ����տ�ͳ�Ʋ�ѯ';
  newitem.ImageIndex:=8;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�ͻ����ݷ���';
  newitem.ImageIndex:=9;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  if panel5.Align=altop then
  begin
    panel4.Align:= albottom;
    panel3.Align:= albottom;
    Panel6.Align:= albottom;
    panel7.Align:= albottom;
  end
  else
    panel5.Align:=altop;
      Listview1.Clear;
  newitem:=listview1.Items.Add;
  newitem.Caption:='��������¼��';
  newitem.ImageIndex:=10;
  newitem:=listview1.Items.Add;
  newitem.Caption:='¥��¥������¼��';
  newitem.ImageIndex:=11;
  newitem:=listview1.Items.Add;
  newitem.Caption:='��˾����¼��';
  newitem.ImageIndex:=12;
  newitem:=listview1.Items.Add;
  newitem.Caption:='Ա������¼��';
  newitem.ImageIndex:=13;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  if panel6.Align=altop then
  begin
    panel4.Align:= albottom;
    panel5.Align:= albottom;
    Panel3.Align:= albottom;
    panel7.Align:= albottom;
  end
  else
    panel6.Align:=altop;
        Listview1.Clear;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�û�����';
  newitem.ImageIndex:=14;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�û������޸�';
  newitem.ImageIndex:=15;
  newitem:=listview1.Items.Add;
  newitem.Caption:='������';
  newitem.ImageIndex:=16;
  newitem:=listview1.Items.Add;
  newitem.Caption:='���ݱ�����ָ�';
  newitem.ImageIndex:=17;
  newitem:=listview1.Items.Add;
  newitem.Caption:='�˳�ϵͳ';
  newitem.ImageIndex:=18;
end;

procedure TForm2.BitBtn5Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  if panel7.Align=altop then
  begin
    panel4.Align:= albottom;
    panel5.Align:= albottom;
    Panel6.Align:= albottom;
    panel3.Align:= albottom;
  end
  else
    panel7.Align:=altop;
      Listview1.Clear;
  newitem:=listview1.Items.Add;
  newitem.Caption:='���±�';
  newitem.ImageIndex:=19;
  newitem:=listview1.Items.Add;
  newitem.Caption:='������';
  newitem.ImageIndex:=20;
  newitem:=listview1.Items.Add;
  newitem.Caption:='��־����';
  newitem.ImageIndex:=21;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  PopupMenu1.Popup(self.Left+SpeedButton4.Left+7,self.Top+SpeedButton4.Top+42);
end;

procedure TForm2.SpeedButton11Click(Sender: TObject);
begin
  PopupMenu2.Popup(self.Left+SpeedButton11.Left+7,self.Top+SpeedButton11.Top+42);
end;

procedure TForm2.SpeedButton12Click(Sender: TObject);
begin
  PopupMenu3.Popup(self.Left+SpeedButton12.Left+7,self.Top+SpeedButton12.Top+42);
end;

procedure TForm2.SpeedButton13Click(Sender: TObject);
begin
  PopupMenu4.Popup(self.Left+SpeedButton13.Left+7,self.Top+SpeedButton13.Top+42);
end;

procedure TForm2.SpeedButton14Click(Sender: TObject);
begin
  PopupMenu5.Popup(self.Left+SpeedButton14.Left+7,self.Top+SpeedButton14.Top+42);
end;

procedure TForm2.SpeedButton15Click(Sender: TObject);
begin
  PopupMenu6.Popup(self.Left+SpeedButton15.Left+7,self.Top+SpeedButton15.Top+42);
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if application.MessageBox('���Ҫ�˳����ز���Ϣ����ϵͳ��?','��ʾ',mb_yesno)=id_no then
    canclose := false;
end;

procedure TForm2.objectN22TMenuItem1Click(Sender: TObject);
begin
  close;
end;

end.
