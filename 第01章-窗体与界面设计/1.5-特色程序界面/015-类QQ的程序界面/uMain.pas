unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, ImgList, Menus, System.ImageList;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ListView1: TListView;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure ListView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure panel_click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Panel2Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  panel_click(sender);
  newitem:=Tlistitem.Create(nil);
  Listview1.Clear;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='one';
  newitem.ImageIndex:=2;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='two';
  newitem.ImageIndex:=3;
end;

procedure TForm1.panel_click(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to self.ComponentCount-1 do
  begin
    if (self.Components[i] is TPanel) then
    begin
      if (Tpanel(self.Components[i]).Tag>0) and (Tpanel(self.Components[i]).Tag<5) then
      begin
        if Tpanel(self.Components[i]).Tag=Tpanel(sender).Tag then
          Tpanel(self.Components[i]).Align:=alTop
        else
          Tpanel(self.Components[i]).Align:=alBottom;
      end;
    end;
  end;
end;

procedure TForm1.Panel3Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  panel_click(sender);
  newitem:=Tlistitem.Create(nil);
  Listview1.Clear;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='three';
  newitem.ImageIndex:=4;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='four';
  newitem.ImageIndex:=5;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='AA';
  newitem.ImageIndex:=9;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='BB';
  newitem.ImageIndex:=10;
end;
procedure TForm1.Panel4Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  panel_click(sender);
  newitem:=Tlistitem.Create(nil);
  Listview1.Clear;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='sever';
  newitem.ImageIndex:=6;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='six';
  newitem.ImageIndex:=7;
end;

procedure TForm1.Panel5Click(Sender: TObject);
var
  newitem:Tlistitem;
begin
  panel_click(sender);
  newitem:=Tlistitem.Create(nil);
  Listview1.Clear;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='eleven';
  newitem.ImageIndex:=8;

  newitem:= Listview1.Items.Add;
  newitem.Caption:='twice';
  newitem.ImageIndex:=9;
end;

procedure TForm1.ListView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  point:Tpoint;
begin

 if (button=mbRight) and (Listview1.Selected<>nil ) then
 begin
   GetCursorPos(point);
   PopupMenu1.Popup(point.X,point.Y);
 end;
end;
end.
