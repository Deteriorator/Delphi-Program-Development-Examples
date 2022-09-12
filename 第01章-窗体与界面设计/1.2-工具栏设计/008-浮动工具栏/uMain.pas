unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Winapi.ShellAPI;

type
  TForm2 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  self.Close;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  ShellExecute(handle,'open',pchar(Combobox1.Text),nil,nil,SW_show);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  self.Left:= 200;
  self.Top :=-30;

end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  self.Top:=10;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if self.Active=False then
    self.Top:=-30;
end;


end.
