object FPembuatanSep: TFPembuatanSep
  Left = 231
  Top = 125
  BorderStyle = bsSingle
  Caption = 'PEMBUATAN SEP'
  ClientHeight = 616
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 41
    Align = alTop
    Caption = 'Surat Eligibilitas Peserta'
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 1192
      Top = 1
      Width = 96
      Height = 39
      Align = alRight
      Caption = 'KELUAR'
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1289
    Height = 534
    Align = alClient
    TabOrder = 1
    object pgcPembuatanSep: TPageControl
      Left = 1
      Top = 1
      Width = 1287
      Height = 532
      ActivePage = tsResponServer
      Align = alClient
      TabOrder = 0
      object tsRujukan: TTabSheet
        Caption = 'RUJUKAN'
        object lblTGLSEP: TLabel
          Left = 16
          Top = 16
          Width = 45
          Height = 13
          Caption = 'TGL SEP'
        end
        object lblASALRUJUKAN: TLabel
          Left = 16
          Top = 40
          Width = 81
          Height = 13
          Caption = 'ASAL RUJUKAN'
        end
        object lblNORUJUKAN: TLabel
          Left = 16
          Top = 64
          Width = 70
          Height = 13
          Caption = 'NO RUJUKAN'
        end
        object dtpTGLSEP: TDateTimePicker
          Left = 128
          Top = 8
          Width = 186
          Height = 21
          Date = 43971.482316539350000000
          Time = 43971.482316539350000000
          TabOrder = 0
        end
        object cbbASALRUJUKAN: TComboBox
          Left = 128
          Top = 32
          Width = 393
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'cbbASALRUJUKAN'
        end
        object edtNORUJUKAN: TEdit
          Left = 128
          Top = 56
          Width = 401
          Height = 21
          TabOrder = 2
          Text = 'edtNORUJUKAN'
        end
        object btnCari: TButton
          Left = 16
          Top = 88
          Width = 75
          Height = 25
          Caption = 'Cari'
          TabOrder = 3
        end
        object btnNoKartu: TButton
          Left = 536
          Top = 48
          Width = 75
          Height = 25
          Caption = 'No Kartu'
          TabOrder = 4
        end
      end
      object tsRujukanManualIgd: TTabSheet
        Caption = 'RUJUKAN MANUAL IGD'
        ImageIndex = 1
      end
      object tsResponServer: TTabSheet
        Caption = 'tsResponServer'
        ImageIndex = 2
        DesignSize = (
          1279
          504)
        object DisplayBody: TMemo
          Left = 12
          Top = 144
          Width = 293
          Height = 205
          TabStop = False
          TabOrder = 0
        end
        object mmoSignature: TMemo
          Left = 8
          Top = 7
          Width = 569
          Height = 71
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          ReadOnly = True
          TabOrder = 1
        end
        object btnTampil: TButton
          Left = 304
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Tampil'
          TabOrder = 2
          OnClick = btnTampilClick
        end
        object edtLink: TEdit
          Left = 8
          Top = 80
          Width = 569
          Height = 21
          TabOrder = 3
          Text = 'edtLink'
        end
        object edtNoBpjs: TEdit
          Left = 8
          Top = 112
          Width = 289
          Height = 21
          TabOrder = 4
        end
        object mmoMLog: TMemo
          Left = 0
          Top = 440
          Width = 1279
          Height = 64
          Align = alBottom
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 5
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 575
    Width = 1289
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object idhtp1: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 456
    Top = 296
  end
  object mm1: TMainMenu
    Left = 413
    Top = 122
    object ESTBRIDING1: TMenuItem
      Caption = 'TEST'
      OnClick = ESTBRIDING1Click
    end
  end
end
