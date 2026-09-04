object Form3: TForm3
  Left = 192
  Top = 114
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Nagy'#237't'#225's'
  ClientHeight = 549
  ClientWidth = 847
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 847
    Height = 549
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 845
      Height = 547
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 129
        Height = 129
        OnClick = Image1Click
      end
    end
  end
end
