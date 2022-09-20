unit MRERP_ZJM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ToolWin, ActnMan, ActnCtrls, XPStyleActnCtrls, Menus,
  StdStyleActnCtrls, Buttons, ExtCtrls, StdCtrls, ComCtrls, jpeg, System.Actions;

type
  TFRM_ERP_ZJM = class(TForm)
    Panel1: TPanel;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Action8: TAction;
    Action9: TAction;
    N8: TMenuItem;
    N9: TMenuItem;
    Action10: TAction;
    Action11: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    Action12: TAction;
    Action13: TAction;
    Action14: TAction;
    Action15: TAction;
    Action16: TAction;
    N15: TMenuItem;
    N16: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    Action17: TAction;
    N17: TMenuItem;
    Action18: TAction;
    N18: TMenuItem;
    Action19: TAction;
    N19: TMenuItem;
    Action20: TAction;
    N20: TMenuItem;
    Action21: TAction;
    N21: TMenuItem;
    Action22: TAction;
    N22: TMenuItem;
    Action23: TAction;
    N23: TMenuItem;
    Action24: TAction;
    Action25: TAction;
    Action26: TAction;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    procedure ttp(tt : integer);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure Action24Execute(Sender: TObject);
    procedure Action26Execute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure Action17Execute(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure Action20Execute(Sender: TObject);
    procedure Action21Execute(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure Action23Execute(Sender: TObject);
    procedure Action25Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ERP_ZJM: TFRM_ERP_ZJM;
  jj : integer = 0;
implementation

{$R *.dfm}

procedure TFRM_ERP_ZJM.FormShow(Sender: TObject);
begin
  jj := 0;


  ttp(1);
  speedbutton1.Action := Action2;
  speedbutton2.Action := Action3;
  SpeedButton1.Caption:='';
  SpeedButton2.Caption:='';
end;

procedure TFRM_ERP_ZJM.Action1Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action4Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action6Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action8Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action10Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action15Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action18Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action24Execute(Sender: TObject);
begin
//
end;

procedure TFRM_ERP_ZJM.Action26Execute(Sender: TObject);
begin
  close;
end;

procedure TFRM_ERP_ZJM.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels[5].Text := '   '+timetostr(gettime());
end;

procedure TFRM_ERP_ZJM.Label1Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\1\2.jpg');
  image3.Picture.LoadFromFile('图片\1\3.jpg');
  ttp(1);
  speedbutton1.Action := Action2;
  speedbutton2.Action := Action3;
  SpeedButton1.Caption:='';
  SpeedButton2.Caption:='';  
end;

procedure TFRM_ERP_ZJM.Label2Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\2\2.jpg');
  image3.Picture.LoadFromFile('图片\2\3.jpg');
  ttp(1);
  speedbutton1.Action := Action5;
  SpeedButton1.Caption:='';
end;

procedure TFRM_ERP_ZJM.Label3Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\3\2.jpg');
  image3.Picture.LoadFromFile('图片\3\3.jpg');
  ttp(1);
  speedbutton1.Action := Action7;
  SpeedButton1.Caption:='';
end;

procedure TFRM_ERP_ZJM.Label4Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\4\2.jpg');
  image3.Picture.LoadFromFile('图片\4\3.jpg');
  ttp(1);
  speedbutton1.Action := Action9;
  SpeedButton1.Caption:='';
end;

procedure TFRM_ERP_ZJM.Label5Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\5\2.jpg');
  image3.Picture.LoadFromFile('图片\5\3.jpg');
  ttp(1);
  speedbutton1.Action := Action16;
  SpeedButton1.Caption:='';
end;

procedure TFRM_ERP_ZJM.Label6Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\6\2.jpg');
  image3.Picture.LoadFromFile('图片\6\3.jpg');
  ttp(1);
  speedbutton3.Action := Action11;
  speedbutton4.Action := Action12;
  speedbutton5.Action := Action13;
  speedbutton6.Action := Action14;
  speedbutton7.Action := Action17;
  SpeedButton3.Caption:='';
  SpeedButton4.Caption:='';
  SpeedButton5.Caption:='';
  SpeedButton6.Caption:='';
  SpeedButton7.Caption:='';
end;

procedure TFRM_ERP_ZJM.Label7Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\7\2.jpg');
  image3.Picture.LoadFromFile('图片\7\3.jpg');
  ttp(1);
  speedbutton8.Action := Action19;
  speedbutton9.Action := Action20;
  speedbutton10.Action := Action21;
  speedbutton11.Action := Action22;
  speedbutton12.Action := Action23;
  SpeedButton8.Caption:='';
  SpeedButton9.Caption:='';
  SpeedButton10.Caption:='';
  SpeedButton11.Caption:='';
  SpeedButton12.Caption:='';
end;

procedure TFRM_ERP_ZJM.Label8Click(Sender: TObject);
begin
  image2.Picture.CleanupInstance;
  image3.Picture.CleanupInstance;
  chdir(ExtractFilepath(Application.ExeName));
  image2.Picture.LoadFromFile('图片\8\2.jpg');
  image3.Picture.LoadFromFile('图片\8\3.jpg');
  ttp(1);
  speedbutton13.Action := Action25;
  speedbutton14.Action := Action26;
  SpeedButton13.Caption:='';
  SpeedButton14.Caption:='';

end;

procedure TFRM_ERP_ZJM.ttp(tt : integer);
begin
  SpeedButton1.Visible := false;
  SpeedButton2.Visible := false;
  SpeedButton3.Visible := false;
  SpeedButton4.Visible := false;
  SpeedButton5.Visible := false;
  SpeedButton6.Visible := false;
  SpeedButton7.Visible := false;
  SpeedButton8.Visible := false;
  SpeedButton9.Visible := false;
  SpeedButton10.Visible := false;
  SpeedButton11.Visible := false;
  SpeedButton12.Visible := false;
  SpeedButton13.Visible := false;
  SpeedButton14.Visible := false;
end;

procedure TFRM_ERP_ZJM.N2Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N5Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N7Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N9Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N11Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N16Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N12Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N13Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N14Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N17Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N19Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N20Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N21Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N22Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N23Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.N25Click(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action3Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action2Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action5Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action7Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action9Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action11Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action12Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action13Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action14Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action16Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action17Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action19Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action20Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action21Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action22Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action23Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

procedure TFRM_ERP_ZJM.Action25Execute(Sender: TObject);
begin
  showmessage('打开窗体。');
end;

end.







