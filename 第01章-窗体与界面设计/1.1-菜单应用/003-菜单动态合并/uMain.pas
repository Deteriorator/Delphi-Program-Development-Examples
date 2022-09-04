unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    ItemMenu011: TMenuItem;
    ItemMenu021: TMenuItem;
    ItemMenu031: TMenuItem;
    ItemMenu041: TMenuItem;
    SubItemMenu011: TMenuItem;
    SubItemMenu021: TMenuItem;
    SubItemMenu031: TMenuItem;
    SubItemMenu041: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
  PopupMenu1.Popup(Form3.Left+BitBtn1.Left, Form3.Top+BitBtn1.Top+BitBtn1.Height);
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  PopupMenu1.Items.Add(PopupMenu2.Items);
  ShowMessage('合并完毕');
  BitBtn2.Enabled:=False;
end;

end.
