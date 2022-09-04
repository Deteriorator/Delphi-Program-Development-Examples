object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #33756#21333#21160#24577#21512#24182
  ClientHeight = 105
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 40
    Width = 75
    Height = 25
    Caption = #26174#31034#33756#21333
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 40
    Width = 75
    Height = 25
    Caption = #21512#24182#33756#21333
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 72
    object ItemMenu011: TMenuItem
      Caption = 'ItemMenu01'
    end
    object ItemMenu021: TMenuItem
      Caption = 'ItemMenu02'
    end
    object ItemMenu031: TMenuItem
      Caption = 'ItemMenu03'
    end
    object ItemMenu041: TMenuItem
      Caption = 'ItemMenu04'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 176
    Top = 72
    object SubItemMenu011: TMenuItem
      Caption = 'SubItemMenu01'
    end
    object SubItemMenu021: TMenuItem
      Caption = 'SubItemMenu02'
    end
    object SubItemMenu031: TMenuItem
      Caption = 'SubItemMenu03'
    end
    object SubItemMenu041: TMenuItem
      Caption = 'SubItemMenu04'
    end
  end
end
