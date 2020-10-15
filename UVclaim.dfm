object Fvclaim: TFvclaim
  Left = 333
  Top = 151
  Width = 1305
  Height = 675
  Caption = 'Vclaim'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 41
    Align = alTop
    Caption = 'VCLAIM'
    TabOrder = 0
  end
  object pnlTengah: TPanel
    Left = 177
    Top = 41
    Width = 1112
    Height = 595
    Align = alClient
    TabOrder = 1
  end
  object pnlKiri: TPanel
    Left = 0
    Top = 41
    Width = 177
    Height = 595
    Align = alLeft
    Caption = 'pnlKiri'
    TabOrder = 2
    object dxnvbrVclaim: TdxNavBar
      Left = 1
      Top = 1
      Width = 176
      Height = 593
      Align = alLeft
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 18
      ViewStyle.ColorSchemeName = 'Blue'
      object dxnvbrgrpDashboard: TdxNavBarGroup
        Caption = 'Dashboard'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object dxnvbrgrpSep: TdxNavBarGroup
        Caption = 'Sep'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmVclaimItem1
          end>
      end
      object dxnvbrgrpRujukan: TdxNavBarGroup
        Caption = 'Rujukan'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmVclaimItem2
          end>
      end
      object dxnvbrgrpjaminan: TdxNavBarGroup
        Caption = 'Jaminan'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object dxnvbrgrplaporan: TdxNavBarGroup
        Caption = 'Laporan'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object dxnvbrtmVclaimItem1: TdxNavBarItem
        Action = actPembuatanSep
      end
      object dxnvbrtmVclaimItem2: TdxNavBarItem
        Action = actFormRujukan
      end
      object dxnvbrtmVclaimItem3: TdxNavBarItem
        Caption = 'dxnvbrtmVclaimItem3'
      end
    end
  end
  object dxskncntrlr1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2010Blue'
    Left = 944
    Top = 80
  end
  object actlstVclaim: TActionList
    Left = 361
    Top = 81
    object actPembuatanSep: TAction
      Caption = 'Pembuatan Sep'
      OnExecute = actPembuatanSepExecute
    end
    object actFormRujukan: TAction
      Caption = 'Form Rujukan'
    end
  end
end
