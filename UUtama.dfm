object FbridgingBpjs: TFbridgingBpjs
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'bridging bpjs '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmBpjs
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmBpjs: TMainMenu
    Left = 272
    Top = 16
    object vclaim1: TMenuItem
      Caption = 'vclaim'
      OnClick = vclaim1Click
    end
  end
end
