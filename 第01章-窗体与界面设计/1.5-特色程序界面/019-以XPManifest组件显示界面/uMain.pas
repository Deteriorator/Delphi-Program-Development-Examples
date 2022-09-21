unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, jpeg, StdCtrls,shellapi, XPMan;
type
    UserInfo = record
    UserID: string;
    UserName: string;
  end;
type
  TMAIN = class(TForm)
    Image1: TImage;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    XPManifest1: TXPManifest;
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    Auser:UserInfo;
    { Public declarations }
  end;

var
  MAIN: TMAIN;
  ActionCD:string;
implementation

{$R *.dfm}

procedure TMAIN.SpeedButton6Click(Sender: TObject);
begin
  CLOSE;
end;

procedure TMAIN.FormClose(Sender: TObject; var Action: TCloseAction);
begin                 //退出系统提示
  if MessageBox(0,'是否要退出本系统？','提示信息',MB_YESNO+MB_ICONQUESTION)=IDYES then
  begin
    Application.Terminate;
    end
    else
    begin
      Action := caNone;
    end;
end;

procedure TMAIN.FormCreate(Sender: TObject);
begin
  try
    if (Screen.Width=800) and (Screen.Height=600) then
    begin
      Main.Left:=0;
      Main.Width:=800;
      Main.Top:=0;
      Main.Height:=566;
    end;
    if (Screen.Width=1024) and ( Screen.Height=768) then
    begin
      Main.Width:=800;
      Main.Height:=566;
      Main.Position:=poDesktopCenter;
    end;
  except
    Application.MessageBox('请正确选择屏幕分辨率：1024X768 或 800X600 !','提示！',0+64);
    exit;
  end;
end;

procedure TMAIN.SpeedButton9Click(Sender: TObject);
begin        //记事本
  ShellExecute(handle,'open','notepad.exe',nil,nil,sw_shownormal);
end;

procedure TMAIN.SpeedButton10Click(Sender: TObject);
begin       //计算器
  ShellExecute(handle,'open','calc.exe',nil,nil,sw_shownormal);
end;

procedure TMAIN.Timer1Timer(Sender: TObject);
begin
  Label1.Caption:='系统时间：'+DateTimeToStr(now);
end;

end.
