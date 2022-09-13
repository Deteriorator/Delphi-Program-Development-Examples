unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, jpeg;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Image1: TImage;
    Image2: TImage;
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  image1.Parent:=statusbar1;
  image1.Left:=2;
  image1.Top:=3;
  image1.Width:=32;
  image1.Visible:=True;

end;

end.
