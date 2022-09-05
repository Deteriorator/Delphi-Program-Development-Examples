unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N4AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; State: TOwnerDrawState);
    procedure N5Click(Sender: TObject);
  private
    MBitMap: TBitmap;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MBitMap.Free;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  MBitMap:=TBitmap.Create;
  MBitMap.LoadFromFile('2.bmp');
end;

procedure TForm4.N4AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; State: TOwnerDrawState);
var
 MRect: TRect;
begin
  ACanvas.TextWidth(TMenuItem(Sender).Caption);
  MRect:= Rect(0,0,MBitMap.Width,MBitMap.Height);
  ACanvas.Draw(arect.Left,arect.Top-arect.Bottom,MBitMap);
  ACanvas.TextRect(Rect(arect.Left+MBitMap.Width+2,arect.Top,arect.Right,arect.Bottom),arect.Left+MBitMap.Width+2,arect.Top+3,TMenuItem(Sender).Caption);
  SetBkMode(ACanvas.Handle, TRANSPARENT);
  DrawText(ACanvas.Handle, '我'+#13+'的'+#13+'菜'+#13+'单', -1, MRect, DT_LEFT + DT_Center);
end;


procedure TForm4.N5Click(Sender: TObject);
begin
  Close;
end;

end.
