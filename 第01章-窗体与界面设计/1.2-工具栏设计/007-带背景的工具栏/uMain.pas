unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    TBRbmp: TToolBar;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TBRbmpAdvancedCustomDraw(Sender: TToolBar; const ARect: TRect;
      Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Bmp:TBitmap;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Bmp:=TBitmap.Create;
  Bmp.LoadFromFile('mingrisoft.com.bmp');

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Bmp.Free;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  TBRbmp.Repaint;
end;

procedure TForm1.TBRbmpAdvancedCustomDraw(Sender: TToolBar; const ARect: TRect;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  Sender.Canvas.StretchDraw(ARect, Bmp);
end;

end.
