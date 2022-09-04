object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #24102#21382#21490#20449#24687#30340#33756#21333
  ClientHeight = 214
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    OnChange = MainMenu1Change
    Left = 48
    Top = 56
    object N1: TMenuItem
      Caption = #31649#29702
      object N2: TMenuItem
        Caption = #25171#24320
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #36864#20986
        OnClick = N4Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 224
    Top = 64
  end
end
