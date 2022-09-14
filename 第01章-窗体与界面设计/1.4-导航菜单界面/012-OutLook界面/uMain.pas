unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ToolWin, ComCtrls, ActnList, ActnMan,
  ActnCtrls, XPStyleActnCtrls, Menus, StdCtrls, ImgList, System.ImageList,
  System.Actions;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    CoolBar1: TCoolBar;
    Action5: TAction;
    Action6: TAction;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    SpeedButton1: TSpeedButton;
    ToolButton2: TToolButton;
    SpeedButton2: TSpeedButton;
    ToolButton4: TToolButton;
    SpeedButton3: TSpeedButton;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    ImageList1: TImageList;
    TreeView1: TTreeView;
    StatusBar1: TStatusBar;
    ScrollBox1: TScrollBox;
    Panel4: TPanel;
    procedure Action1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
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

procedure TForm1.Action1Execute(Sender: TObject);
begin
  //
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  actiontoolbar1.parent:=coolbar1;
  actiontoolbar1.Visible:=True;
  panel2.parent:=coolbar1;
  panel2.Height:=50;
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
  //
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
  Form1.Color:=clred;
end;

procedure TForm1.Action5Execute(Sender: TObject);
begin
  Form1.Color:=clgreen;
end;

procedure TForm1.Action6Execute(Sender: TObject);
begin
   Form1.Color:=clskyblue;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  panel2.Top:=24;
end;

end.
