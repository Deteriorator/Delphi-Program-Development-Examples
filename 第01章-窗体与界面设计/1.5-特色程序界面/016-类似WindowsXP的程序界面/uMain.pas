unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Panel7: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Image6: TImage;
    Panel2: TPanel;
    Image5: TImage;
    Image7: TImage;
    Image8: TImage;
    Image3: TImage;
    Image9: TImage;
    Image10: TImage;
    Image4: TImage;
    Image11: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p1,p2,p3 : integer;
implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  p1 := 1;
  p2 := 1;
  p3 := 1;
end;

procedure TForm1.Image2Click(Sender: TObject);
var
  i,n,h : integer;
begin
  if (p1=1) then
  begin
    image7.Picture.LoadFromFile('2\朝上按钮.jpg');
    h := panel3.Height;
    panel3.Height := panel3.Height - 20;
    for i := 0 to 3 do
    begin
      panel3.Height := panel3.Height - 20;
      label1.Top := label1.Top-20;
      panel4.Top := panel4.Top-20;
      panel5.Top := panel5.Top-20;
      label2.Top := label2.Top-20;
      panel6.Top := panel6.Top-20;
      panel7.Top := panel7.Top-20;
    end;
    p1 := p1+1;
  end
  else
  begin
    image7.Picture.LoadFromFile('2\朝下按钮.jpg');
    for i := 0 to 3 do
    begin
      panel3.Height := panel3.Height + 20;
      label1.Top := label1.Top+20;
      panel4.Top := panel4.Top+20;
      panel5.Top := panel5.Top+20;
      label2.Top := label2.Top+20;
      panel6.Top := panel6.Top+20;
      panel7.Top := panel7.Top+20;
    end;
    p1 := p1-1;
  end;

end;

procedure TForm1.Image3Click(Sender: TObject);
var
  h,i : integer;
begin
  if (p2=1) then
  begin
    image3.Picture.LoadFromFile('2\朝上按钮.jpg');
    h := panel5.Height;
    panel5.Height := panel5.Height - 20;
    for i := 0 to 3 do
    begin
      panel5.Height := panel5.Height - 20;
      label2.Top := label2.Top-20;
      panel6.Top := panel6.Top-20;
      panel7.Top := panel7.Top-20;
    end;
    p2 := p2+1;
  end
  else
  begin
    image3.Picture.LoadFromFile('2\朝下按钮.jpg');
    for i := 0 to 3 do
    begin
      panel5.Height := panel5.Height + 20;
      label2.Top := label2.Top+20;
      panel6.Top := panel6.Top+20;
      panel7.Top := panel7.Top+20;
    end;
    p2 := p2-1;
  end;
end;

procedure TForm1.Image4Click(Sender: TObject);
var
  h,i : integer;
begin
  if (p3=1) then
  begin
    image4.Picture.LoadFromFile('2\朝上按钮.jpg');
    h := panel7.Height;
    for i := 0 to 10 do
    begin
      panel7.Height := panel7.Height - 8;
    end;
    p3 := p3+1;
  end
  else
  begin
    image4.Picture.LoadFromFile('2\朝下按钮.jpg');
    for i := 0 to 10 do
    begin
      panel7.Height := panel7.Height + 8;
    end;
    p3 := p3-1;
  end;
end;


procedure TForm1.Image5Click(Sender: TObject);
begin
  Image2Click(Sender);
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
Image2Click(Sender);
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
Image3Click(Sender);
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
Image3Click(Sender);
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
Image4Click(Sender);
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
Image4Click(Sender);
end;

procedure TForm1.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label6.Font.Color := clblue;
end;

procedure TForm1.Image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label6.Font.Color := clblack;
  Label7.Font.Color := clblack;
end;

procedure TForm1.Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label7.Font.Color := clblue;
end;

procedure TForm1.Label8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label8.Font.Color := clblue;
end;

procedure TForm1.Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label9.Font.Color := clblue;
end;

procedure TForm1.Label10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label10.Font.Color := clblue;
end;

procedure TForm1.Image9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label8.Font.Color := clblack;
  Label9.Font.Color := clblack;
  Label10.Font.Color := clblack;
end;

procedure TForm1.Label11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label11.Font.Color := clblue;
end;

procedure TForm1.Label12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label12.Font.Color := clblue;
end;

procedure TForm1.Label13MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label13.Font.Color := clblue;
end;

procedure TForm1.Image11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label11.Font.Color := clblack;
  Label12.Font.Color := clblack;
  Label13.Font.Color := clblack;
end;

end.
