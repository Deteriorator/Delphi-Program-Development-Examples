unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ImgList, StdCtrls, ComCtrls, jpeg, ExtCtrls, ActnList,
  XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ActnMenus, System.ImageList,
  System.Actions;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ActionMainMenuBar1: TActionMainMenuBar;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ToolButton1: TToolButton;
    dl: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ToolButton2: TToolButton;
    SpeedButton11: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ToolButton3: TToolButton;
    SpeedButton4: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Panel3: TPanel;
    Manager: TActionManager;
    List1: TActionList;
    Login: TAction;
    Updatepass: TAction;
    Storageinfo: TAction;
    Goodsinfo: TAction;
    Providerinfo: TAction;
    Dutyinfo: TAction;
    Employeeinfo: TAction;
    Operatorinfo: TAction;
    Intercontrol: TAction;
    InStore: TAction;
    OutStore: TAction;
    Service: TAction;
    StoreCancelIn: TAction;
    StoreLess: TAction;
    Scrap: TAction;
    CheckPrint: TAction;
    StoreMore: TAction;
    StoreInQuery: TAction;
    StoreOutQuery: TAction;
    StoreCancelQuery: TAction;
    ServiceQuery: TAction;
    StoreScrapQuery: TAction;
    StoreLessQuery: TAction;
    StoreMoreQuery: TAction;
    ProviderCheck: TAction;
    ProviderCheckQuery: TAction;
    SystemExit: TAction;
    InStoreLogout: TAction;
    OutStoreLogout: TAction;
    InCancelLogout: TAction;
    ServiceLogout: TAction;
    ScrapLogout: TAction;
    LessLogout: TAction;
    MoreLogout: TAction;
    ProviderCheckLogout: TAction;
    About: TAction;
    ImageMemu: TImageList;
    CheckBox1: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  Image1.Visible := CheckBox1.Checked;
  Panel3.Visible := Not CheckBox1.Checked;
end;

procedure TForm1.LoginExecute(Sender: TObject);
begin
  //add code
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  CheckBox1.Parent := StatusBar1;
  CheckBox1.Left := StatusBar1.Width-CheckBox1.Width-50;
  CheckBox1.Top := 4;
  CheckBox1.Show;
  StatusBar1.Panels[3].Text := '明日科技';
end;

end.
