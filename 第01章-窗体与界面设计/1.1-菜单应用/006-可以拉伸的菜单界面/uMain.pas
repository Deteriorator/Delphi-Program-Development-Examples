unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem5: TMenuItem;
    N32: TMenuItem;
    MenuItem6: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    R1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N20: TMenuItem;
    N31: TMenuItem;
    N21: TMenuItem;
    N27: TMenuItem;
    N23: TMenuItem;
    N22: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N7: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N9: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    Y1: TMenuItem;
    y2: TMenuItem;
    N16: TMenuItem;
    Image1: TImage;
    procedure Y1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure y2Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i,p : integer;
implementation

{$R *.dfm}

procedure TForm1.Y1Click(Sender: TObject);
begin
  if i = 1 then
  begin
    MainMenu1.Items[0].Items[0].Visible := true;
    MainMenu1.Items[0].Items[1].Visible := true;
    MainMenu1.Items[0].Items[3].Visible := true;
    MainMenu1.Items[0].Items[4].Visible := true;
    MainMenu1.Items[0].Items[5].Visible := true;
    MainMenu1.Items[0].Items[6].Visible := true;
    MainMenu1.Items[0].Items[7].Visible := true;
    i := 2;
  end
  else
  begin
    MainMenu1.Items[0].Items[0].Visible := false;
    MainMenu1.Items[0].Items[1].Visible := false;
    MainMenu1.Items[0].Items[3].Visible := false;
    MainMenu1.Items[0].Items[4].Visible := false;
    MainMenu1.Items[0].Items[5].Visible := false;
    MainMenu1.Items[0].Items[6].Visible := false;
    MainMenu1.Items[0].Items[7].Visible := false;
    i := 1;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  i := 1;
  p := 1;
end;

procedure TForm1.y2Click(Sender: TObject);
begin
  if p = 1 then
  begin
    MainMenu1.Items[1].Items[0].Visible := true;
    MainMenu1.Items[1].Items[1].Visible := true;
    MainMenu1.Items[1].Items[2].Visible := true;
    MainMenu1.Items[1].Items[4].Visible := true;
    MainMenu1.Items[1].Items[5].Visible := true;
    MainMenu1.Items[1].Items[6].Visible := true;
    p := 2;
  end
  else
  begin
    MainMenu1.Items[1].Items[0].Visible := false;
    MainMenu1.Items[1].Items[1].Visible := false;
    MainMenu1.Items[1].Items[2].Visible := false;
    MainMenu1.Items[1].Items[4].Visible := false;
    MainMenu1.Items[1].Items[5].Visible := false;
    MainMenu1.Items[1].Items[6].Visible := false;
    p := 1;
  end;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
  close;
end;

end.
