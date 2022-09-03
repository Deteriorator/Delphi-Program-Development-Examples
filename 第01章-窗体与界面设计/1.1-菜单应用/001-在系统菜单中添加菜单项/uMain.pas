unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure SysMenu(var msg: TWMMenuSelect);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  i := GetSystemMenu(Handle, False);
  AppendMenu(i, MF_SEPARATOR, 0, nil);
  AppendMenu(i, MF_STRING, 100, '我的菜单(&E)');
end;

procedure TForm1.SysMenu(var msg: TWMMenuSelect);
begin
  if msg.IDItem = 100 then
    ShowMessage('您选择了自己添加的菜单')
  else
    inherited;
end;

end.
