object FBpjs: TFBpjs
  Left = 244
  Top = 137
  Width = 1336
  Height = 875
  Caption = 'BPJS '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmBriding
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1320
    Height = 49
    Align = alTop
    Caption = 'SEP RUJUKAN MANUAL /IGD'
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 1182
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 775
    Width = 1320
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    TabOrder = 1
    object btnBARU: TButton
      Left = 904
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BARU'
      TabOrder = 0
      OnClick = btnBARUClick
    end
    object btnSIMPAN: TButton
      Left = 984
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
    end
    object btnPRINT: TButton
      Left = 1064
      Top = 8
      Width = 75
      Height = 25
      Caption = 'PRINT'
      TabOrder = 2
    end
    object btnUBAH: TButton
      Left = 1144
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 3
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1320
    Height = 726
    Align = alClient
    TabOrder = 2
    object pgcBpjs: TPageControl
      Left = 1
      Top = 1
      Width = 1318
      Height = 724
      ActivePage = tsJson
      Align = alClient
      TabOrder = 0
      object tsPencarianDataPasien: TTabSheet
        Caption = 'PENCARIAN DATA PASIEN'
        object grpPencarianBerdasarkanNomer: TGroupBox
          Left = 0
          Top = 0
          Width = 1310
          Height = 65
          Align = alTop
          Caption = 'CARI BERDASARKAN'
          TabOrder = 0
          object rbNoBpjs: TRadioButton
            Left = 8
            Top = 24
            Width = 81
            Height = 17
            Caption = 'NO BPJS'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object rbNONIK: TRadioButton
            Left = 72
            Top = 24
            Width = 89
            Height = 17
            Caption = 'NO NIK'
            TabOrder = 1
          end
          object edtNomer: TEdit
            Left = 136
            Top = 24
            Width = 249
            Height = 21
            TabOrder = 2
            Text = 'edtNomer'
            OnKeyPress = edtNomerKeyPress
          end
          object btnTampil: TButton
            Left = 392
            Top = 24
            Width = 75
            Height = 25
            Caption = 'TAMPIL'
            TabOrder = 3
            OnClick = btnTampilClick
          end
        end
        object pnlTengah1: TPanel
          Left = 0
          Top = 65
          Width = 1310
          Height = 631
          Align = alClient
          TabOrder = 1
          object lblCATATAN: TLabel
            Left = 1160
            Top = 48
            Width = 50
            Height = 13
            Caption = 'CATATAN'
          end
          object grpDataPasien: TGroupBox
            Left = 1
            Top = 1
            Width = 440
            Height = 184
            Align = alCustom
            Caption = 'TAMPIL DATA PASIEN'
            TabOrder = 0
            object lblNAMAPASIEN: TLabel
              Left = 8
              Top = 24
              Width = 73
              Height = 13
              Caption = 'NAMA PASIEN'
            end
            object lblNOMERBPJS: TLabel
              Left = 8
              Top = 48
              Width = 92
              Height = 13
              Caption = 'NOMER BPJS/NIK'
            end
            object lblJenisKelamin: TLabel
              Left = 8
              Top = 80
              Width = 80
              Height = 13
              Caption = 'JENIS KELAMIN'
            end
            object lblSTATUSPESERTA: TLabel
              Left = 8
              Top = 104
              Width = 96
              Height = 13
              Caption = 'STATUS PESERTA'
            end
            object lblHAKKELAS: TLabel
              Left = 200
              Top = 80
              Width = 59
              Height = 13
              Caption = 'HAK KELAS'
            end
            object lblTGLLAHIR: TLabel
              Left = 8
              Top = 128
              Width = 100
              Height = 13
              Caption = 'TGL LAHIR / UMUR'
            end
            object lblTANGGAL: TLabel
              Left = 8
              Top = 152
              Width = 51
              Height = 13
              Caption = 'TANGGAL'
            end
            object edtNAMAPASIEN: TEdit
              Left = 112
              Top = 16
              Width = 305
              Height = 21
              TabOrder = 0
              Text = 'edtNAMAPASIEN'
            end
            object edtNOMERBPJS: TEdit
              Left = 112
              Top = 48
              Width = 153
              Height = 21
              TabOrder = 1
              Text = 'edtNOMERBPJS'
            end
            object edtNOMERNIK: TEdit
              Left = 272
              Top = 48
              Width = 145
              Height = 21
              TabOrder = 2
              Text = 'edtNOMERNIK'
            end
            object edtJENISKELAMIN: TEdit
              Left = 112
              Top = 72
              Width = 81
              Height = 21
              TabOrder = 3
              Text = 'edtJENISKELAMIN'
            end
            object edtSTATUSPESERTA: TEdit
              Left = 112
              Top = 96
              Width = 305
              Height = 21
              TabOrder = 4
              Text = 'edtSTATUSPESERTA'
            end
            object edtHAKKELAS: TEdit
              Left = 272
              Top = 72
              Width = 145
              Height = 21
              TabOrder = 5
              Text = 'edtHAKKELAS'
            end
            object edtTGLLAHIR: TEdit
              Left = 112
              Top = 120
              Width = 145
              Height = 21
              TabOrder = 6
              Text = 'edtTGLLAHIR'
            end
            object edtUMUR: TEdit
              Left = 264
              Top = 120
              Width = 153
              Height = 21
              TabOrder = 7
              Text = 'edtUMUR'
            end
            object edtTANGGAL: TEdit
              Left = 112
              Top = 144
              Width = 305
              Height = 21
              TabOrder = 8
              Text = 'edtTANGGAL'
            end
          end
          object grpINPUTDATASEP: TGroupBox
            Left = 0
            Top = 184
            Width = 1905
            Height = 409
            Caption = 'INPUT DATA SEP'
            TabOrder = 1
            object lblCOB: TLabel
              Left = 16
              Top = 144
              Width = 22
              Height = 13
              Caption = 'COB'
            end
            object lblKATARAK: TLabel
              Left = 200
              Top = 152
              Width = 50
              Height = 13
              Caption = 'KATARAK'
            end
            object grpPENCARIANDIAGNOSA: TGroupBox
              Left = 8
              Top = 24
              Width = 425
              Height = 113
              Caption = 'DIAGNOSA AWAL'
              TabOrder = 0
              object lblDIAGNOSAAWAL: TLabel
                Left = 8
                Top = 64
                Width = 90
                Height = 13
                Caption = 'DIAGNOSA AWAL'
              end
              object lblPENCARIANDIAGNOSA: TLabel
                Left = 8
                Top = 24
                Width = 62
                Height = 13
                Caption = 'PENCARIAN'
              end
              object edtPENCARIANDIAGNOSA: TEdit
                Left = 104
                Top = 24
                Width = 241
                Height = 21
                TabOrder = 0
                Text = 'edtPENCARIANDIAGNOSA'
                OnKeyPress = edtPENCARIANDIAGNOSAKeyPress
                OnKeyUp = edtPENCARIANDIAGNOSAKeyUp
              end
              object btnCARIDIAGNOSA: TButton
                Left = 352
                Top = 16
                Width = 57
                Height = 25
                Caption = 'CARI'
                TabOrder = 1
                OnClick = btnCARIDIAGNOSAClick
              end
              object edtDIAGNOSAAWAL: TEdit
                Left = 104
                Top = 60
                Width = 305
                Height = 21
                TabOrder = 2
                Text = 'edtDIAGNOSAAWAL'
              end
            end
            object grpPencarianPoli: TGroupBox
              Left = 8
              Top = 168
              Width = 417
              Height = 121
              Caption = 'POLI'
              TabOrder = 1
              object lblPOLI: TLabel
                Left = 8
                Top = 52
                Width = 24
                Height = 13
                Caption = 'POLI'
              end
              object lblPOLIEXKUTIVE: TLabel
                Left = 8
                Top = 84
                Width = 80
                Height = 13
                Caption = 'POLI EXKUTIVE'
              end
              object lblPENCARIAN: TLabel
                Left = 8
                Top = 24
                Width = 62
                Height = 13
                Caption = 'PENCARIAN'
              end
              object edtPencarianPoli: TEdit
                Left = 96
                Top = 24
                Width = 249
                Height = 21
                TabOrder = 0
                Text = 'edtPencarianPoli'
                OnKeyPress = edtPencarianPoliKeyPress
                OnKeyUp = edtPencarianPoliKeyUp
              end
              object btnCariPoli: TButton
                Left = 352
                Top = 24
                Width = 49
                Height = 25
                Caption = 'CARI'
                TabOrder = 1
                OnClick = btnCariPoliClick
              end
              object edtPOLI: TEdit
                Left = 96
                Top = 52
                Width = 193
                Height = 21
                TabOrder = 2
                Text = 'edtPOLI'
              end
              object cbbEXCUTIVE: TComboBox
                Left = 96
                Top = 80
                Width = 193
                Height = 21
                ItemHeight = 13
                TabOrder = 3
                Text = 'cbbEXCUTIVE'
                Items.Strings = (
                  'TIDAK'
                  'YA')
              end
              object edtKODEPOLI: TEdit
                Left = 296
                Top = 56
                Width = 97
                Height = 21
                TabOrder = 4
                Text = 'edtKODEPOLI'
              end
            end
            object cbbCOB: TComboBox
              Left = 48
              Top = 144
              Width = 145
              Height = 21
              ItemHeight = 13
              TabOrder = 2
              Text = 'cbbCOB'
              Items.Strings = (
                'YA'
                'TIDAK')
            end
            object cbbKATARAK: TComboBox
              Left = 256
              Top = 144
              Width = 145
              Height = 21
              ItemHeight = 13
              TabOrder = 3
              Text = 'cbbKATARAK'
              Items.Strings = (
                'YA'
                'TIDAK')
            end
            object grpJAMINAN: TGroupBox
              Left = 448
              Top = 24
              Width = 441
              Height = 377
              Caption = 'JAMINAN'
              TabOrder = 4
              object lblLAKALANTAS: TLabel
                Left = 8
                Top = 24
                Width = 72
                Height = 13
                Caption = 'LAKA LANTAS'
              end
              object lblPENJAMIN: TLabel
                Left = 8
                Top = 48
                Width = 54
                Height = 13
                Caption = 'PENJAMIN'
              end
              object lblTGLKEJADIAN: TLabel
                Left = 8
                Top = 96
                Width = 76
                Height = 13
                Caption = 'TGL KEJADIAN'
              end
              object lblKETARANGAN: TLabel
                Left = 8
                Top = 120
                Width = 74
                Height = 13
                Caption = 'KETARANGAN'
              end
              object cbbLAKALANTAS: TComboBox
                Left = 104
                Top = 16
                Width = 145
                Height = 21
                ItemHeight = 13
                TabOrder = 0
                Text = 'cbbLAKALANTAS'
                Items.Strings = (
                  'TIDAK'
                  'YA')
              end
              object chkJASARAHARJA: TCheckBox
                Left = 104
                Top = 40
                Width = 129
                Height = 17
                Caption = 'JASA RAHARJA PT'
                TabOrder = 1
              end
              object chkBPJSKETENAGAKERJAAN: TCheckBox
                Left = 240
                Top = 40
                Width = 169
                Height = 17
                Caption = 'BPJS KETENAGA KERJAAN'
                TabOrder = 2
              end
              object chkTASPEN: TCheckBox
                Left = 104
                Top = 64
                Width = 97
                Height = 17
                Caption = 'TASPEN PT'
                TabOrder = 3
              end
              object chkASABRI: TCheckBox
                Left = 240
                Top = 64
                Width = 97
                Height = 17
                Caption = 'ASABRI PT'
                TabOrder = 4
              end
              object dtpTGLKEJADIAN: TDateTimePicker
                Left = 104
                Top = 88
                Width = 153
                Height = 21
                Date = 44104.434813217590000000
                Time = 44104.434813217590000000
                TabOrder = 5
              end
              object mmoKETERANGANJAMINAN: TMemo
                Left = 104
                Top = 120
                Width = 289
                Height = 41
                Lines.Strings = (
                  'mmoKETERANGANJAMINAN')
                TabOrder = 6
              end
              object grpSUPELENSI: TGroupBox
                Left = 8
                Top = 168
                Width = 417
                Height = 201
                Caption = 'SUPELENSI'
                TabOrder = 7
                object lblSUPLESI: TLabel
                  Left = 8
                  Top = 24
                  Width = 45
                  Height = 13
                  Caption = 'SUPLESI'
                end
                object lblNOSUPLESI: TLabel
                  Left = 8
                  Top = 48
                  Width = 64
                  Height = 13
                  Caption = 'NO SUPLESI'
                end
                object lblLOKASILAKA: TLabel
                  Left = 8
                  Top = 72
                  Width = 68
                  Height = 13
                  Caption = 'LOKASI LAKA'
                end
                object lblPROVINSI: TLabel
                  Left = 8
                  Top = 96
                  Width = 51
                  Height = 13
                  Caption = 'PROVINSI'
                end
                object lblKABUPATEN: TLabel
                  Left = 8
                  Top = 120
                  Width = 65
                  Height = 13
                  Caption = 'KABUPATEN'
                end
                object lblKECAMATAN: TLabel
                  Left = 8
                  Top = 144
                  Width = 66
                  Height = 13
                  Caption = 'KECAMATAN'
                end
                object cbbSUPLESI: TComboBox
                  Left = 96
                  Top = 16
                  Width = 145
                  Height = 21
                  ItemHeight = 13
                  TabOrder = 0
                  Text = 'cbbSUPLESI'
                end
                object edtNOSUPLESI: TEdit
                  Left = 96
                  Top = 40
                  Width = 145
                  Height = 21
                  TabOrder = 1
                  Text = 'edtNOSUPLESI'
                end
                object edtPROVINSI: TEdit
                  Left = 96
                  Top = 88
                  Width = 201
                  Height = 21
                  TabOrder = 2
                  Text = 'edtPROVINSI'
                  OnKeyPress = edtPROVINSIKeyPress
                end
                object edtKABUPATEN: TEdit
                  Left = 96
                  Top = 112
                  Width = 201
                  Height = 21
                  TabOrder = 3
                  Text = 'edtKABUPATEN'
                end
                object edtKECAMATAN: TEdit
                  Left = 96
                  Top = 136
                  Width = 201
                  Height = 21
                  TabOrder = 4
                  Text = 'edtKECAMATAN'
                end
                object edtKODEPROVINSI: TEdit
                  Left = 304
                  Top = 88
                  Width = 89
                  Height = 21
                  TabOrder = 5
                  Text = 'edtKODEPROVINSI'
                end
                object edtKODEKABUPATEN: TEdit
                  Left = 304
                  Top = 112
                  Width = 89
                  Height = 21
                  TabOrder = 6
                  Text = 'edtKODEKABUPATEN'
                end
                object edtKODEKECAMATAN: TEdit
                  Left = 304
                  Top = 136
                  Width = 89
                  Height = 21
                  TabOrder = 7
                  Text = 'edtKODEKECAMATAN'
                end
              end
            end
            object lstKodePoli: TcxListBox
              Left = 360
              Top = 256
              Width = 49
              Height = 97
              ItemHeight = 13
              TabOrder = 5
              Visible = False
            end
            object lstkodeprovinsi: TListBox
              Left = 792
              Top = 304
              Width = 57
              Height = 97
              ItemHeight = 13
              TabOrder = 6
              Visible = False
            end
          end
          object grpINPUTDATASEP1: TGroupBox
            Left = 449
            Top = 8
            Width = 352
            Height = 177
            Align = alCustom
            Caption = 'INPUT DATA SEP'
            TabOrder = 2
            object lblTGLSEP: TLabel
              Left = 8
              Top = 24
              Width = 45
              Height = 13
              Caption = 'TGL SEP'
            end
            object lblPPKPELAYANAN: TLabel
              Left = 8
              Top = 48
              Width = 121
              Height = 13
              Caption = 'PPK JENIS PELAYANAN'
            end
            object lblJENISPELAYANAN: TLabel
              Left = 8
              Top = 72
              Width = 97
              Height = 13
              Caption = 'JENIS PELAYANAN'
            end
            object lblKELAS: TLabel
              Left = 8
              Top = 96
              Width = 34
              Height = 13
              Caption = 'KELAS'
            end
            object lblNORM: TLabel
              Left = 8
              Top = 120
              Width = 36
              Height = 13
              Caption = 'NO RM'
            end
            object dtpTGLSEP: TDateTimePicker
              Left = 136
              Top = 16
              Width = 169
              Height = 21
              Date = 44103.566246099540000000
              Time = 44103.566246099540000000
              TabOrder = 0
            end
            object edtPPKPELAYANAN: TEdit
              Left = 136
              Top = 40
              Width = 169
              Height = 21
              TabOrder = 1
              Text = 'edtPPKPELAYANAN'
            end
            object cbbJENISPELAYANAN: TComboBox
              Left = 136
              Top = 64
              Width = 169
              Height = 21
              ItemHeight = 13
              TabOrder = 2
              Text = 'cbbJENISPELAYANAN'
              Items.Strings = (
                'RAWAT INAP'
                'RAWAT JALAN')
            end
            object cbbKELAS: TComboBox
              Left = 136
              Top = 88
              Width = 169
              Height = 21
              ItemHeight = 13
              TabOrder = 3
              Text = 'cbbKELAS'
              Items.Strings = (
                'KELAS 1'
                'KELAS 2'
                'KELAS 3')
            end
            object edtNORM: TEdit
              Left = 136
              Top = 112
              Width = 169
              Height = 21
              TabOrder = 4
              Text = 'edtNORM'
            end
          end
          object grpRUJUKAN: TGroupBox
            Left = 808
            Top = 8
            Width = 345
            Height = 177
            Caption = 'RUJUKAN'
            TabOrder = 3
            object lblASALRUJUKAN: TLabel
              Left = 8
              Top = 24
              Width = 81
              Height = 13
              Caption = 'ASAL RUJUKAN'
            end
            object lblTGLRUJUKAN: TLabel
              Left = 8
              Top = 48
              Width = 75
              Height = 13
              Caption = 'TGL RUJUKAN'
            end
            object lblNORUJUKAN: TLabel
              Left = 8
              Top = 72
              Width = 70
              Height = 13
              Caption = 'NO RUJUKAN'
            end
            object lblPPKRUJUKAN: TLabel
              Left = 8
              Top = 128
              Width = 75
              Height = 13
              Caption = 'PPK RUJUKAN'
            end
            object lblPENCARIANPPKRUJUKAN: TLabel
              Left = 8
              Top = 96
              Width = 62
              Height = 13
              Caption = 'PENCARIAN'
            end
            object cbbASALRUJUKAN: TComboBox
              Left = 128
              Top = 16
              Width = 169
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              Text = 'cbbASALRUJUKAN'
              Items.Strings = (
                'FASKES 1'
                'FASKES 2 (RS)')
            end
            object dtpTGLRUJUKAN: TDateTimePicker
              Left = 128
              Top = 40
              Width = 169
              Height = 21
              Date = 44103.589384699070000000
              Time = 44103.589384699070000000
              TabOrder = 1
            end
            object edtNORUJUKAN: TEdit
              Left = 128
              Top = 64
              Width = 169
              Height = 21
              TabOrder = 2
              Text = 'edtNORUJUKAN'
            end
            object edtPPKRUJUKAN: TEdit
              Left = 128
              Top = 120
              Width = 169
              Height = 21
              TabOrder = 3
              Text = 'edtPPKRUJUKAN'
            end
            object btnCariPPK: TButton
              Left = 304
              Top = 96
              Width = 35
              Height = 25
              Caption = 'CARI'
              TabOrder = 4
              OnClick = btnCariPPKClick
            end
            object edtPencarianPpkRujukan: TEdit
              Left = 128
              Top = 96
              Width = 169
              Height = 21
              TabOrder = 5
              Text = 'edtPencarianPpkRujukan'
              OnKeyPress = edtPencarianPpkRujukanKeyPress
            end
            object edtKODEPPKRUJUKAN: TEdit
              Left = 128
              Top = 144
              Width = 169
              Height = 21
              TabOrder = 6
              Text = 'edtKODEPPKRUJUKAN'
            end
          end
          object mmoCATATAN: TMemo
            Left = 1224
            Top = 24
            Width = 281
            Height = 49
            Lines.Strings = (
              'mmoCATATAN')
            TabOrder = 4
          end
          object lstKODEPPK: TListBox
            Left = 1240
            Top = 240
            Width = 41
            Height = 97
            ItemHeight = 13
            TabOrder = 5
            Visible = False
          end
        end
      end
      object tsJson: TTabSheet
        Caption = 'tsJson'
        ImageIndex = 1
        object mmoPencarianSep: TMemo
          Left = 24
          Top = 32
          Width = 257
          Height = 265
          Lines.Strings = (
            'mmoPencarianSep')
          TabOrder = 0
        end
        object mmoPencarianDiagnosa: TMemo
          Left = 304
          Top = 32
          Width = 249
          Height = 265
          Lines.Strings = (
            'mmoPencarianDiagnosa')
          TabOrder = 1
        end
        object mmoPencarianPoli: TMemo
          Left = 584
          Top = 32
          Width = 345
          Height = 257
          Lines.Strings = (
            'mmoPencarianPoli')
          TabOrder = 2
        end
        object mmoPpkPelayanan: TMemo
          Left = 952
          Top = 24
          Width = 193
          Height = 265
          Lines.Strings = (
            'mmoPpkPelayanan')
          TabOrder = 3
        end
        object mmoProvinsi: TMemo
          Left = 24
          Top = 328
          Width = 337
          Height = 329
          Lines.Strings = (
            'mmoProvinsi')
          TabOrder = 4
        end
      end
    end
    object lstDiagnosa: TcxListBox
      Left = 120
      Top = 344
      Width = 289
      Height = 145
      ItemHeight = 13
      TabOrder = 1
      Visible = False
      OnClick = lstDiagnosaClick
      OnKeyPress = lstDiagnosaKeyPress
    end
    object lstPencarianPoli: TcxListBox
      Left = 112
      Top = 488
      Width = 249
      Height = 137
      ItemHeight = 13
      TabOrder = 2
      Visible = False
      OnClick = lstPencarianPoliClick
      OnDblClick = lstPencarianPoliDblClick
      OnKeyPress = lstPencarianPoliKeyPress
    end
    object lstPPKRUJUKAN: TListBox
      Left = 912
      Top = 216
      Width = 329
      Height = 217
      ItemHeight = 13
      TabOrder = 3
      Visible = False
      OnClick = lstPPKRUJUKANClick
      OnDblClick = lstPPKRUJUKANDblClick
      OnKeyPress = lstPPKRUJUKANKeyPress
    end
    object lstPROVINSI: TListBox
      Left = 560
      Top = 576
      Width = 217
      Height = 153
      ItemHeight = 13
      TabOrder = 4
      Visible = False
    end
  end
  object idhtp1: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 845
    Top = 90
  end
  object idhtpDiagnosa: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 909
    Top = 91
  end
  object idhtpPoli: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 973
    Top = 99
  end
  object idhtpPpk: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 1029
    Top = 90
  end
  object idhtpPROVINSI: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 1109
    Top = 98
  end
  object mmBriding: TMainMenu
    Left = 245
    Top = 11
    object RUJUKAN1: TMenuItem
      Caption = 'RUJUKAN'
      OnClick = RUJUKAN1Click
    end
  end
end
