unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    N2: TMenuItem;
    N4: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure MainMenu1Change(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure exe;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.N2Click(Sender: TObject);
var
  QQ:TMenuItem;
begin
  QQ:=TMenuItem.Create(nil);
  if OpenDialog1.Execute then
  begin
    QQ.Caption:=OpenDialog1.FileName;
    MainMenu1.Items.Items[0].Insert(3,QQ);
  end;
end;

procedure TForm2.N4Click(Sender: TObject);
var
  i:integer;
begin
  for i:=3 to  MainMenu1.Items.Items[0].Count-3 do
  begin
    MainMenu1.Items.Items[0].Items[i].OnClick:=MainMenu1.Items.Items[0].Items[2].OnClick;
  end;
  self.Close;
end;

procedure TForm2.MainMenu1Change(Sender: TObject; Source: TMenuItem; Rebuild: Boolean);
var
  i:integer;
begin
  for i:=2 to  MainMenu1.Items.Items[0].Count-3 do
  begin
    MainMenu1.Items.Items[0].Items[i].OnClick:=Button1.OnClick;
  end;
end;

procedure TForm2.exe;
begin
  ShowMessage('带历史信息的菜单');
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
    exe;
end;


end.
