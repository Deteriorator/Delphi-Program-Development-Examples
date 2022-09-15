unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, Buttons, ToolWin, ExtCtrls, ImgList,
  jpeg,IniFiles,ShellApi, System.ImageList;

type
  TForm3 = class(TForm)
    StaBar_sys: TStatusBar;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N_ba: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N_login: TMenuItem;
    N_modipass: TMenuItem;
    N_syst: TMenuItem;
    N_bawork: TMenuItem;
    N_bajob: TMenuItem;
    N_babus: TMenuItem;
    N_bacom: TMenuItem;
    N_bastore: TMenuItem;
    N_quit: TMenuItem;
    N_comin: TMenuItem;
    N_comout: TMenuItem;
    Conb_main: TControlBar;
    TB_main: TToolBar;
    Tb_login: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton1: TToolButton;
    N_babelong: TMenuItem;
    N_comgive: TMenuItem;
    N_findin: TMenuItem;
    N_findout: TMenuItem;
    N_findgive: TMenuItem;
    N_findstore: TMenuItem;
    N_comrepar: TMenuItem;
    N_combad: TMenuItem;
    N_comback: TMenuItem;
    N_comlost: TMenuItem;
    N_commore: TMenuItem;
    N_findbad: TMenuItem;
    N_findlost: TMenuItem;
    N_findmore: TMenuItem;
    N_findback: TMenuItem;
    N_delein: TMenuItem;
    N_deleout: TMenuItem;
    N_deleback: TMenuItem;
    N_delerepar: TMenuItem;
    N_delebad: TMenuItem;
    N_delelost: TMenuItem;
    N_delemore: TMenuItem;
    N_delegive: TMenuItem;
    N_findrepar: TMenuItem;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    imlist_tool: TImageList;
    Spl_main: TSplitter;
    Pa_left: TPanel;
    pa_right: TPanel;
    Im_left: TImage;
    spb_sys: TSpeedButton;
    spb_ba: TSpeedButton;
    spb_com: TSpeedButton;
    spb_find: TSpeedButton;
    spb_dele: TSpeedButton;
    im_right: TImage;
    Spb_syslogin: TSpeedButton;
    spb_sysmodi: TSpeedButton;
    spb_sysgrant: TSpeedButton;
    spb_sysquit: TSpeedButton;
    spb_bawork: TSpeedButton;
    spb_babus: TSpeedButton;
    spb_bacom: TSpeedButton;
    spb_comin: TSpeedButton;
    spb_babelong: TSpeedButton;
    spb_bastore: TSpeedButton;
    spb_commore: TSpeedButton;
    spb_comout: TSpeedButton;
    spb_comback: TSpeedButton;
    spb_comrepar: TSpeedButton;
    spb_findin: TSpeedButton;
    spb_combad: TSpeedButton;
    spb_comlost: TSpeedButton;
    spb_findlost: TSpeedButton;
    spb_comgive: TSpeedButton;
    spb_findback: TSpeedButton;
    spb_findbad: TSpeedButton;
    spb_findmore: TSpeedButton;
    spb_deleout: TSpeedButton;
    spb_findrepar: TSpeedButton;
    spb_findgive: TSpeedButton;
    spb_findout: TSpeedButton;
    spb_findstore: TSpeedButton;
    spb_bajob: TSpeedButton;
    spb_delelost: TSpeedButton;
    spb_delerepar: TSpeedButton;
    spb_delebad: TSpeedButton;
    spb_delein: TSpeedButton;
    spb_deleback: TSpeedButton;
    spb_delemore: TSpeedButton;
    spb_delegive: TSpeedButton;
    Imlist_menu: TImageList;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    SaveDialog1: TSaveDialog;
    N12: TMenuItem;
    N13: TMenuItem;
    Image1: TImage;
    procedure N_quitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure spb_sysClick(Sender: TObject);
    procedure spb_baClick(Sender: TObject);
    procedure spb_comClick(Sender: TObject);
    procedure spb_findClick(Sender: TObject);
    procedure spb_deleClick(Sender: TObject);
    procedure Spb_sysloginClick(Sender: TObject);
    procedure spb_sysmodiClick(Sender: TObject);
    procedure spb_sysgrantClick(Sender: TObject);
    procedure spb_sysquitClick(Sender: TObject);
    procedure spb_baworkClick(Sender: TObject);
    procedure spb_babusClick(Sender: TObject);
    procedure spb_bajobClick(Sender: TObject);
    procedure spb_bastoreClick(Sender: TObject);
    procedure spb_babelongClick(Sender: TObject);
    procedure spb_cominClick(Sender: TObject);
    procedure spb_combackClick(Sender: TObject);
    procedure spb_comlostClick(Sender: TObject);
    procedure spb_comoutClick(Sender: TObject);
    procedure spb_commoreClick(Sender: TObject);
    procedure spb_comgiveClick(Sender: TObject);
    procedure spb_findinClick(Sender: TObject);
    procedure spb_findoutClick(Sender: TObject);
    procedure spb_findbackClick(Sender: TObject);
    procedure spb_findlostClick(Sender: TObject);
    procedure spb_findreparClick(Sender: TObject);
    procedure spb_findgiveClick(Sender: TObject);
    procedure spb_baMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Tb_loginMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure TB_mainCustomDraw(Sender: TToolBar; const ARect: TRect;
      var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    main_user,grant:string;
    r_longin:integer;
    ini_file:Tinifile;
    procedure set_ini(s_n:string;k_n:string;v_n:string);
  end;

var
  Form3: TForm3;
implementation

{$R *.dfm}
procedure TForm3.FormShow(Sender: TObject);
begin
  grant:='0';
  Conb_main.Width:=Form3.Width-1;
  TB_main.Width:=Conb_main.Width-1;
  staBar_sys.Panels[3].Text:='提示';
end;
procedure TForm3.N_quitClick(Sender: TObject);
begin
 if application.MessageBox('你是否要离开系统！','提示',mb_yesno)=mryes then
   begin
     Form3.Close;
   end;

end;

procedure TForm3.ToolButton2Click(Sender: TObject);
begin
  N_comin.Click;
end;

procedure TForm3.ToolButton3Click(Sender: TObject);
begin
  N_comout.Click;
end;

procedure TForm3.ToolButton4Click(Sender: TObject);
begin
  N_comback.Click;
end;

procedure TForm3.ToolButton5Click(Sender: TObject);
begin
  N_comrepar.Click;
end;

procedure TForm3.ToolButton6Click(Sender: TObject);
begin
  N_combad.Click;
end;

procedure TForm3.ToolButton8Click(Sender: TObject);
begin
  N_comlost.Click;
end;

procedure TForm3.ToolButton9Click(Sender: TObject);
begin
  N_commore.Click;
end;
procedure TForm3.spb_sysClick(Sender: TObject);
begin
   if grant='0'then
      spb_sysgrant.Visible:=true;
   spb_syslogin.Visible:=true;
   spb_sysmodi.Visible:=true;
   spb_sysquit.Visible:=true;
   spb_bawork.Visible:=false;
   spb_babus.Visible:=false;
   spb_bajob.Visible:=false;
   spb_bacom.Visible:=false;
   spb_bastore.Visible:=false;
   spb_babelong.Visible:=false;
   spb_comin.Visible:=false;
   spb_comout.Visible:=false;
   spb_combad.Visible:=false;
   spb_comrepar.Visible:=false;
   spb_comback.Visible:=false;
   spb_commore.Visible:=false;
   spb_comlost.Visible:=false;
   spb_comgive.Visible:=false;
   spb_delein.Visible:=false;
   spb_deleout.Visible:=false;
   spb_delebad.Visible:=false;
   spb_deleback.Visible:=false;
   spb_delemore.Visible:=false;
   spb_delelost.Visible:=false;
   spb_delegive.Visible:=false;
   spb_delerepar.Visible:=false;
   spb_findin.Visible:=false;
   spb_findout.Visible:=false;
   spb_findbad.Visible:=false;
   spb_findback.Visible:=false;
   spb_findmore.Visible:=false;
   spb_findlost.Visible:=false;
   spb_findgive.Visible:=false;
   spb_findrepar.Visible:=false;
   spb_findstore.Visible:=false;
   spb_syslogin.Top:=150;
   spb_sysmodi.Top:=150;
   spb_sysgrant.Top:=250;
   spb_sysquit.Top:=150;
   if grant='0' then
     begin
       spb_syslogin.Left:=100;
       spb_sysmodi.Left:=spb_syslogin.Left+150;
       spb_sysquit.Left:=spb_sysmodi.Left+150;
       spb_sysgrant.Left:=spb_sysmodi.Left;
    end
  else
      begin
        spb_syslogin.Left:=100;
        spb_sysmodi.Left:=spb_syslogin.Left+150;
        spb_sysquit.Left:=spb_sysmodi.Left+150;
      end;
end;

procedure TForm3.spb_baClick(Sender: TObject);
begin
   spb_syslogin.Visible:=false;
   spb_sysmodi.Visible:=false;
   spb_sysgrant.Visible:=false;
   spb_sysquit.Visible:=false;
   spb_bawork.Visible:=true;
   spb_babus.Visible:=true;
   spb_bajob.Visible:=true;
   spb_bacom.Visible:=true;
   spb_bastore.Visible:=true;
   spb_babelong.Visible:=true;
   spb_comin.Visible:=false;
   spb_comout.Visible:=false;
   spb_combad.Visible:=false;
   spb_comrepar.Visible:=false;
   spb_comback.Visible:=false;
   spb_commore.Visible:=false;
   spb_comlost.Visible:=false;
   spb_comgive.Visible:=false;
   spb_delein.Visible:=false;
   spb_deleout.Visible:=false;
   spb_delebad.Visible:=false;
   spb_deleback.Visible:=false;
   spb_delemore.Visible:=false;
   spb_delelost.Visible:=false;
   spb_delegive.Visible:=false;
   spb_delerepar.Visible:=false;
   spb_findin.Visible:=false;
   spb_findout.Visible:=false;
   spb_findbad.Visible:=false;
   spb_findback.Visible:=false;
   spb_findmore.Visible:=false;
   spb_findlost.Visible:=false;
   spb_findgive.Visible:=false;
   spb_findrepar.Visible:=false;
   spb_findstore.Visible:=false;
   spb_bawork.Top:=150;
   spb_babus.Top:=150;
   spb_bacom.Top:=150;
   spb_bajob.Top:=150;
   spb_bastore.Top:=150;
   spb_babelong.Top:=150;
   spb_bawork.Left:=10;
   spb_babus.Left:=spb_bawork.Left+100;
   spb_bacom.Left:=spb_babus.Left+100;
   spb_bajob.Left:=spb_bacom.Left+100;
   spb_bastore.Left:=spb_bajob.Left+100;
   spb_babelong.Left:=spb_bastore.Left+100;
end;

procedure TForm3.spb_comClick(Sender: TObject);
begin
   spb_syslogin.Visible:=false;
   spb_sysmodi.Visible:=false;
   spb_sysgrant.Visible:=false;
   spb_sysquit.Visible:=false;
   spb_bawork.Visible:=false;
   spb_babus.Visible:=false;
   spb_bajob.Visible:=false;
   spb_bacom.Visible:=false;
   spb_bastore.Visible:=false;
   spb_babelong.Visible:=false;
   spb_comin.Visible:=true;
   spb_comout.Visible:=true;
   spb_combad.Visible:=true;
   spb_comrepar.Visible:=true;
   spb_comback.Visible:=true;
   spb_commore.Visible:=true;
   spb_comlost.Visible:=true;
   spb_comgive.Visible:=true;
   spb_delein.Visible:=false;
   spb_deleout.Visible:=false;
   spb_delebad.Visible:=false;
   spb_deleback.Visible:=false;
   spb_delemore.Visible:=false;
   spb_delelost.Visible:=false;
   spb_delegive.Visible:=false;
   spb_delerepar.Visible:=false;
   spb_findin.Visible:=false;
   spb_findout.Visible:=false;
   spb_findbad.Visible:=false;
   spb_findback.Visible:=false;
   spb_findmore.Visible:=false;
   spb_findlost.Visible:=false;
   spb_findgive.Visible:=false;
   spb_findrepar.Visible:=false;
   spb_findstore.Visible:=false;
   spb_comin.Top:=130;
   spb_comout.Top:=130;
   spb_comback.Top:=130;
   spb_combad.Top:=130;
   spb_comrepar.Top:=130;
   spb_commore.Top:=230;
   spb_comlost.Top:=230;
   spb_comgive.Top:=230;
   spb_comin.Left:=50;
   spb_comout.Left:=spb_comin.Left+110;
   spb_comback.Left:=spb_comout.Left+110;
   spb_combad.Left:=spb_comback.Left+110;
   spb_comrepar.Left:=spb_combad.Left+110;
   spb_commore.Left:=130;
   spb_comlost.left:=spb_commore.Left+100;
   spb_comgive.Left:=spb_comlost.Left+100;
end;

procedure TForm3.spb_findClick(Sender: TObject);
begin
   spb_syslogin.Visible:=false;
   spb_sysmodi.Visible:=false;
   spb_sysgrant.Visible:=false;
   spb_sysquit.Visible:=false;
   spb_bawork.Visible:=false;
   spb_babus.Visible:=false;
   spb_bajob.Visible:=false;
   spb_bacom.Visible:=false;
   spb_bastore.Visible:=false;
   spb_babelong.Visible:=false;
   spb_comin.Visible:=false;
   spb_comout.Visible:=false;
   spb_combad.Visible:=false;
   spb_comrepar.Visible:=false;
   spb_comback.Visible:=false;
   spb_commore.Visible:=false;
   spb_comlost.Visible:=false;
   spb_comgive.Visible:=false;
   spb_delein.Visible:=false;
   spb_deleout.Visible:=false;
   spb_delebad.Visible:=false;
   spb_deleback.Visible:=false;
   spb_delemore.Visible:=false;
   spb_delelost.Visible:=false;
   spb_delegive.Visible:=false;
   spb_delerepar.Visible:=false;
   spb_findin.Visible:=true;
   spb_findout.Visible:=true;
   spb_findbad.Visible:=true;
   spb_findback.Visible:=true;
   spb_findmore.Visible:=true;
   spb_findlost.Visible:=true;
   spb_findgive.Visible:=true;
   spb_findrepar.Visible:=true;
   spb_findstore.Visible:=true;
   spb_findin.Top:=130;
   spb_findout.Top:=130;
   spb_findback.Top:=130;
   spb_findbad.Top:=130;
   spb_findrepar.Top:=130;
   spb_findmore.Top:=230;
   spb_findlost.Top:=230;
   spb_findstore.Top:=230;
   spb_findgive.Top:=230;
   spb_findin.Left:=50;
   spb_findout.Left:=spb_findin.Left+110;
   spb_findback.Left:=spb_findout.Left+110;
   spb_findbad.Left:=spb_findback.Left+110;
   spb_findrepar.Left:=spb_findbad.Left+110;
   spb_findmore.Left:=130;
   spb_findlost.left:=spb_findmore.Left+110;
   spb_findstore.left:=spb_findlost.Left+110;
   spb_findgive.Left:=spb_findstore.Left+110;
end;

procedure TForm3.spb_deleClick(Sender: TObject);
begin
   spb_syslogin.Visible:=false;
   spb_sysmodi.Visible:=false;
   spb_sysgrant.Visible:=false;
   spb_sysquit.Visible:=false;
   spb_bawork.Visible:=false;
   spb_babus.Visible:=false;
   spb_bajob.Visible:=false;
   spb_bacom.Visible:=false;
   spb_bastore.Visible:=false;
   spb_babelong.Visible:=false;
   spb_comin.Visible:=false;
   spb_comout.Visible:=false;
   spb_combad.Visible:=false;
   spb_comrepar.Visible:=false;
   spb_comback.Visible:=false;
   spb_commore.Visible:=false;
   spb_comlost.Visible:=false;
   spb_comgive.Visible:=false;
   spb_delein.Visible:=true;
   spb_deleout.Visible:=true;
   spb_delebad.Visible:=true;
   spb_deleback.Visible:=true;
   spb_delemore.Visible:=true;
   spb_delelost.Visible:=true;
   spb_delegive.Visible:=true;
   spb_delerepar.Visible:=true;
   spb_findin.Visible:=false;
   spb_findout.Visible:=false;
   spb_findbad.Visible:=false;
   spb_findback.Visible:=false;
   spb_findmore.Visible:=false;
   spb_findlost.Visible:=false;
   spb_findgive.Visible:=false;
   spb_findrepar.Visible:=false;
   spb_findstore.Visible:=false;
   spb_delein.Top:=150;
   spb_deleout.Top:=150;
   spb_deleback.Top:=150;
   spb_delerepar.Top:=150;
   spb_delebad.Top:=150;
   spb_delemore.Top:=250;
   spb_delelost.Top:=250;
   spb_delegive.Top:=250;
   spb_delein.Left:=30;
   spb_deleout.Left:=spb_delein.Left+110;
   spb_deleback.Left:=spb_deleout.Left+110;
   spb_delerepar.Left:=spb_deleback.Left+110;
   spb_delebad.Left:=spb_delerepar.Left+110;
   spb_delemore.Left:=130;
   spb_delelost.Left:=spb_delemore.Left+110;
   spb_delegive.Left:=spb_delelost.Left+110;
end;

procedure TForm3.Spb_sysloginClick(Sender: TObject);
begin
  N_login.Click;
end;

procedure TForm3.spb_sysmodiClick(Sender: TObject);
begin
  N_modipass.Click;
end;

procedure TForm3.spb_sysgrantClick(Sender: TObject);
begin
  N_syst.Click;
end;

procedure TForm3.spb_sysquitClick(Sender: TObject);
begin
  N_quit.Click;
end;

procedure TForm3.spb_baworkClick(Sender: TObject);
begin
  N_bawork.Click;
end;

procedure TForm3.spb_babusClick(Sender: TObject);
begin
  N_babus.Click;
end;

procedure TForm3.spb_bajobClick(Sender: TObject);
begin
  N_bajob.Click;
  
end;

procedure TForm3.spb_bastoreClick(Sender: TObject);
begin
  N_bastore.Click;
end;

procedure TForm3.spb_babelongClick(Sender: TObject);
begin
  N_babelong.Click;
end;

procedure TForm3.spb_cominClick(Sender: TObject);
begin
  N_comin.click;
end;

procedure TForm3.spb_combackClick(Sender: TObject);
begin
  N_comback.Click;
end;

procedure TForm3.spb_comlostClick(Sender: TObject);
begin
  N_comlost.Click;
end;

procedure TForm3.spb_comoutClick(Sender: TObject);
begin
  N_comout.Click;
end;

procedure TForm3.spb_commoreClick(Sender: TObject);
begin
  N_commore.Click;
end;

procedure TForm3.spb_comgiveClick(Sender: TObject);
begin
  N_comgive.Click;
end;

procedure TForm3.spb_findinClick(Sender: TObject);
begin
  N_findin.Click;
end;

procedure TForm3.spb_findoutClick(Sender: TObject);
begin
  N_findout.Click;
end;

procedure TForm3.spb_findbackClick(Sender: TObject);
begin
  N_findback.Click;
end;

procedure TForm3.spb_findlostClick(Sender: TObject);
begin
  N_findlost.Click;
end;

procedure TForm3.spb_findreparClick(Sender: TObject);
begin
  N_findrepar.Click;
end;

procedure TForm3.spb_findgiveClick(Sender: TObject);
begin
  N_findgive.Click;
end;

procedure TForm3.spb_baMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Sender is Tspeedbutton then
     StaBar_sys.Panels[4].Text:=Tspeedbutton(Sender).caption;
end;

procedure TForm3.Tb_loginMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if Sender is Ttoolbutton then
     StaBar_sys.Panels[4].Text:=Ttoolbutton(Sender).caption;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  r_longin:=0;
end;

procedure TForm3.N8Click(Sender: TObject);
begin
  Application.HelpFile:='DNBJ.HLP';
  Application.HelpCommand(HELP_FINDER,0);
end;

procedure TForm3.set_ini(s_n, k_n, v_n: string);
begin

end;

procedure TForm3.N13Click(Sender: TObject);
begin
  ShellExecute(handle,'open','notepad.exe',nil,nil,sw_shownormal);
end;

procedure TForm3.N12Click(Sender: TObject);
begin
  ShellExecute(handle,'open','calc.exe',nil,nil,sw_shownormal);
end;

procedure TForm3.TB_mainCustomDraw(Sender: TToolBar; const ARect: TRect;
  var DefaultDraw: Boolean);
begin
  sender.Canvas.Draw(0,0,image1.Picture.Bitmap);
end;

end.
