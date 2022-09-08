unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TForm5 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    procedure N3AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; State: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure N1AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    Str: String;
    procedure NotifyMessage(Text: string);
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.N3AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; State: TOwnerDrawState);
begin
  ACanvas.Brush.Color := clwhite;
  if odSelected in State  then
  begin
    ACanvas.Font.Color :=  clRed;
    ACanvas.Pen.Color := clBlue;
    ACanvas.Rectangle(Rect(1,(TMenuItem(Sender).Tag-1)*20,ARect.Right-1,(TMenuItem(Sender).Tag-1)*20+15));
       NotifyMessage(TMenuItem(Sender).Caption);
  end
  else
  begin
    ACanvas.Font.Color := clBlack;
    ACanvas.Pen.Color := clWhite;
    ACanvas.Rectangle(Rect(1,(TMenuItem(Sender).Tag-1)*20,ARect.Right-1,(TMenuItem(Sender).Tag-1)*20+15));
  end;
  ACanvas.TextOut(4,(TMenuItem(Sender).Tag-1)*20+2,TMenuItem(Sender).Caption);
end;

procedure TForm5.N1AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; State: TOwnerDrawState);
begin
    SetBkMode(ACanvas.Handle,TRANSPARENT);
  if odSelected in State  then
  begin
    ACanvas.Font.Color :=  clRed;
    ACanvas.Pen.Color := clBlue;
    ACanvas.Brush.Color := Color;
    ACanvas.Rectangle(Rect(TMenuItem(Sender).Tag-2,32,ARect.Right-5,47));
  end
  else
  begin
    ACanvas.Font.Color := clBlack;
    ACanvas.Pen.Color := Color;
    ACanvas.Brush.Color := Color;
   ACanvas.Rectangle(Rect(TMenuItem(Sender).Tag-2,32,ARect.Right-5,47));
  end;
  ACanvas.TextOut(TMenuItem(Sender).Tag,34,TMenuItem(Sender).Caption);
end;


procedure TForm5.NotifyMessage(Text: String);
begin
  Caption := Str+'--'+Text;
  StatusBar1.Panels[0].Text := Text;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  Str := Caption;
end;

end.
