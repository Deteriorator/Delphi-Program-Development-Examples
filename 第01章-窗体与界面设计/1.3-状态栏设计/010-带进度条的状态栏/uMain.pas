unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, XPMan, jpeg;

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
    Button3: TButton;
    Image1: TImage;
    procedure Button3Click(Sender: TObject);
  private
    Progress:TProgressbar;//�������Progress����ΪTProgressbar�ؼ�����
    StatusDrawRect:TRect;//���������Զ������ͱ�ʾһ����Ч�ķ�������
    { Private declarations }
  public
    { Public declarations }
  end;


 //-----------------------------------------------
type
  TRect=Record
    case Integer of
         0:(Left,Top,Right,Bottom:Integer);
         1:(TopLeft,BottomRight:TPoint);
    end;
 //-----------------------------------------------
var
  Form2: TForm2;
implementation

{$R *.DFM}

procedure TForm2.Button3Click(Sender: TObject);
var
  I,Count:integer;
  Pane1Windth:integer;
begin
  StatusDrawRect.Left:=100;
  StatusDrawRect.Right:=3000;
  StatUsDrawRect.Top:=2;
  StatusDrawRect.Bottom:=20;
  Progress:=TProgressBar.Create(Form2);//��Form1�����ϴ���Progress�ؼ�
  Count:=300;//���ý����������ֵ
  Pane1Windth:=StatusBar1.Panels[2].Width;
  //���ý������Ŀ�Ⱥ���Ϣ�����
  StatusBar1.Panels.Items[2].Width:=150;//�ı���
  Statusbar1.Repaint;
  with Progress do
  begin
    //--------------------------
    Top:=StatusDrawRect.Top;
    Left:=StatusDrawRect.Left;
    Width:=StatusDrawRect.Right-StatusDrawrect.Left;
    Height:=StatusDrawRect.Bottom-StatusDrawRect.Top;
    //---------------------------
    Visible:=True;
    Try
      Parent:=StatusBar1;//��������������Ϣ����
      Min:=0;
      Max:=Count;//���������ֵ
      Step:=1;
      For I:=1 to Count do
          begin
               sleep(10);
               Application.ProcessMessages;
               Stepit;
          end;
      ShowMessage('��ɲ���,�ͷŴ����');
    Finally
      Free;//�ͷŽ�����
    End;
  end;
  StatusBar1.Panels.Items[2].Width:=Pane1windth;//�ָ����
end;

end.
