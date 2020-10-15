object FSepBpjs: TFSepBpjs
  Left = 236
  Top = 122
  Width = 1305
  Height = 920
  Caption = 'RUJUKAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    Caption = 'SEP (SURAT ELEGIBILITAS PESERTA)'
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 1151
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
      OnClick = pnlKeluarClick
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 840
    Width = 1289
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1289
    Height = 791
    Align = alClient
    TabOrder = 2
    object pgcTengah: TPageControl
      Left = 1
      Top = 1
      Width = 1287
      Height = 789
      ActivePage = tsRUJUKANMANUAL
      Align = alClient
      TabOrder = 0
      object tsRujukan: TTabSheet
        Caption = 'RUJUKAN'
        object pnlAtasRujukan: TPanel
          Left = 0
          Top = 0
          Width = 1279
          Height = 65
          Align = alTop
          TabOrder = 0
          object lblNOMER: TLabel
            Left = 160
            Top = 40
            Width = 40
            Height = 13
            Caption = 'NOMER'
          end
          object btnCari: TButton
            Left = 416
            Top = 32
            Width = 75
            Height = 25
            Caption = 'CARI'
            TabOrder = 0
            OnClick = btnCARIClick
          end
          object rbNORUJUKAN: TRadioButton
            Left = 8
            Top = 8
            Width = 113
            Height = 17
            Caption = 'NO RUJUKAN'
            TabOrder = 1
          end
          object rbNOKARTU: TRadioButton
            Left = 112
            Top = 8
            Width = 113
            Height = 17
            Caption = 'NO KARTU'
            TabOrder = 2
          end
          object rbNOKARTUMULTI: TRadioButton
            Left = 200
            Top = 8
            Width = 113
            Height = 17
            Caption = 'NO KARTU MULTI'
            TabOrder = 3
          end
          object cbbFASKES: TComboBox
            Left = 8
            Top = 32
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            Text = 'cbbFASKES'
            OnKeyPress = cbbFASKESKeyPress
            OnSelect = cbbFASKESSelect
            Items.Strings = (
              'FASKES 1'
              'FASKES 2(RS)')
          end
          object edtNOMER: TEdit
            Left = 208
            Top = 32
            Width = 201
            Height = 21
            TabOrder = 5
            Text = 'edtNOMER'
            OnKeyPress = edtNOMERKeyPress
          end
        end
        object pnlDataPeserta: TPanel
          Left = 0
          Top = 65
          Width = 321
          Height = 696
          Align = alLeft
          TabOrder = 1
          object grpDataPeserta: TGroupBox
            Left = 1
            Top = 1
            Width = 319
            Height = 88
            Align = alTop
            Caption = 'DATA PESERTA'
            TabOrder = 0
            object lblNAMAPESERTA: TLabel
              Left = 8
              Top = 24
              Width = 91
              Height = 13
              Caption = 'lblNAMAPESERTA'
            end
            object lblNOBPJS: TLabel
              Left = 8
              Top = 48
              Width = 52
              Height = 13
              Caption = 'lblNOBPJS'
            end
          end
          object pgcDataPeserta: TPageControl
            Left = 1
            Top = 89
            Width = 319
            Height = 606
            ActivePage = tsDetailPeserta
            Align = alClient
            TabOrder = 1
            object tsDetailPeserta: TTabSheet
              Caption = 'DETAIL'
              object lblNOMERBPJS: TLabel
                Left = 8
                Top = 24
                Width = 76
                Height = 13
                Caption = 'lblNOMERBPJS'
              end
              object lblTGLLAHIR: TLabel
                Left = 8
                Top = 56
                Width = 63
                Height = 13
                Caption = 'lblTGLLAHIR'
              end
              object lblPOLI: TLabel
                Left = 8
                Top = 88
                Width = 34
                Height = 13
                Caption = 'lblPOLI'
              end
              object lblKELAS: TLabel
                Left = 8
                Top = 120
                Width = 44
                Height = 13
                Caption = 'lblKELAS'
              end
              object lblFASKES: TLabel
                Left = 8
                Top = 152
                Width = 51
                Height = 13
                Caption = 'lblFASKES'
              end
              object lblTGLCETAK: TLabel
                Left = 8
                Top = 176
                Width = 66
                Height = 13
                Caption = 'lblTGLCETAK'
              end
              object lblJENISKARTU: TLabel
                Left = 8
                Top = 200
                Width = 77
                Height = 13
                Caption = 'lblJENISKARTU'
              end
            end
            object tsKeteranganPeserta: TTabSheet
              Caption = 'KETERANGAN'
              ImageIndex = 1
            end
            object tsRiwayatPeserta: TTabSheet
              Caption = 'RIWAYAT'
              ImageIndex = 2
            end
          end
        end
        object pnlDetailRujukan: TPanel
          Left = 321
          Top = 65
          Width = 958
          Height = 696
          Align = alClient
          TabOrder = 2
          object lblWAJIBDISI: TLabel
            Left = 16
            Top = 16
            Width = 70
            Height = 13
            Caption = '* WAJIB DI ISI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object lblSPESIALIS_SUBSPESIALIS: TLabel
            Left = 40
            Top = 48
            Width = 142
            Height = 13
            Caption = 'SPESIALIS/SUBSPESIALIS *'
          end
          object lblDPJPYGMELAYANI: TLabel
            Left = 72
            Top = 72
            Width = 109
            Height = 13
            Caption = 'DPJP YG MELAYANI *'
          end
          object lblASALRUJUKAN: TLabel
            Left = 96
            Top = 96
            Width = 85
            Height = 13
            Caption = 'ASAL RUJUKAN*'
          end
          object lblPPKASALRUJUKAN: TLabel
            Left = 72
            Top = 120
            Width = 109
            Height = 13
            Caption = 'PPK ASAL RUJUKAN*'
          end
          object lblTGLRUJUKAN: TLabel
            Left = 104
            Top = 144
            Width = 79
            Height = 13
            Caption = 'TGL RUJUKAN*'
          end
          object lblNORUJUKAN: TLabel
            Left = 104
            Top = 168
            Width = 74
            Height = 13
            Caption = 'NO RUJUKAN*'
          end
          object lblNOSURATKONTROL: TLabel
            Left = 32
            Top = 192
            Width = 152
            Height = 13
            Caption = 'NO SURAT KONTROL/SKPD *'
          end
          object lblDPJSPPEMBERISURATKONTROL: TLabel
            Left = 8
            Top = 224
            Width = 180
            Height = 13
            Caption = 'DPJP PEMBERI SURAT KONTROL *'
          end
          object lblTGLSEP: TLabel
            Left = 128
            Top = 248
            Width = 52
            Height = 13
            Caption = 'TGL SEP *'
          end
          object lblNORM: TLabel
            Left = 136
            Top = 272
            Width = 43
            Height = 13
            Caption = 'NO RM *'
          end
          object lblDIAGNOSA: TLabel
            Left = 128
            Top = 296
            Width = 63
            Height = 13
            Caption = 'DIAGNOSA *'
          end
          object lblNOTELEPONE: TLabel
            Left = 112
            Top = 320
            Width = 83
            Height = 13
            Caption = 'NO TELEPONE *'
          end
          object lblCATATAN: TLabel
            Left = 128
            Top = 352
            Width = 57
            Height = 13
            Caption = 'CATATAN *'
          end
          object lblSTATUSKECELAKAAN: TLabel
            Left = 64
            Top = 392
            Width = 123
            Height = 13
            Caption = 'STATUS KECELAKAAN *'
          end
          object chkEXSECUTIVE: TCheckBox
            Left = 208
            Top = 48
            Width = 113
            Height = 17
            Caption = 'EXSECUTIVE'
            TabOrder = 0
          end
          object edtSUBSEPESIALSI: TEdit
            Left = 304
            Top = 48
            Width = 297
            Height = 21
            TabOrder = 1
            Text = 'edtSUBSEPESIALSI'
            OnKeyPress = edtSUBSEPESIALSIKeyPress
          end
          object edtDPJPMELAYANI: TEdit
            Left = 208
            Top = 72
            Width = 393
            Height = 21
            TabOrder = 2
            Text = 'edtDPJPMELAYANI'
            OnKeyPress = edtDPJPMELAYANIKeyPress
          end
          object edtASALRUJUKAN: TEdit
            Left = 208
            Top = 96
            Width = 393
            Height = 21
            TabOrder = 3
            Text = 'edtASALRUJUKAN'
          end
          object edtPPKASALRUJUKAN: TEdit
            Left = 208
            Top = 120
            Width = 393
            Height = 21
            TabOrder = 4
            Text = 'edtPPKASALRUJUKAN'
            OnKeyPress = edtPPKASALRUJUKANKeyPress
          end
          object dtpTGLRUJUKAN: TDateTimePicker
            Left = 208
            Top = 144
            Width = 186
            Height = 21
            Date = 44111.445433182870000000
            Time = 44111.445433182870000000
            DateFormat = dfLong
            TabOrder = 5
            OnKeyPress = dtpTGLRUJUKANKeyPress
          end
          object edtNORUJUKAN: TEdit
            Left = 208
            Top = 168
            Width = 185
            Height = 21
            TabOrder = 6
            Text = 'edtNORUJUKAN'
            OnKeyPress = edtNORUJUKANKeyPress
          end
          object edtNOSURATKONTROL: TEdit
            Left = 208
            Top = 192
            Width = 185
            Height = 21
            TabOrder = 7
            Text = 'edtNOSURATKONTROL'
            OnKeyPress = edtNOSURATKONTROLKeyPress
          end
          object edtDPJPPEMBERIKONTROL: TEdit
            Left = 208
            Top = 216
            Width = 377
            Height = 21
            TabOrder = 8
            Text = 'edtDPJPPEMBERIKONTROL'
            OnKeyPress = edtDPJPPEMBERIKONTROLKeyPress
          end
          object dtpTGLSEP: TDateTimePicker
            Left = 208
            Top = 240
            Width = 186
            Height = 21
            Date = 44111.448102500000000000
            Time = 44111.448102500000000000
            TabOrder = 9
            OnKeyPress = dtpTGLSEPKeyPress
          end
          object edtNORM: TEdit
            Left = 208
            Top = 264
            Width = 185
            Height = 21
            TabOrder = 10
            Text = 'edtNORM'
            OnKeyPress = edtNORMKeyPress
          end
          object edtDIANGNOSA: TEdit
            Left = 208
            Top = 288
            Width = 377
            Height = 21
            TabOrder = 11
            Text = 'edtDIANGNOSA'
            OnKeyPress = edtDIANGNOSAKeyPress
          end
          object edtNOTELEPONE: TEdit
            Left = 208
            Top = 312
            Width = 185
            Height = 21
            TabOrder = 12
            Text = 'edtNOTELEPONE'
            OnKeyPress = edtNOTELEPONEKeyPress
          end
          object mmoCATATAN: TMemo
            Left = 208
            Top = 336
            Width = 377
            Height = 49
            Lines.Strings = (
              'mmoCATATAN')
            TabOrder = 13
            OnKeyPress = mmoCATATANKeyPress
          end
          object cbbSTATUSKECELAKAAN: TComboBox
            Left = 208
            Top = 392
            Width = 361
            Height = 21
            ItemHeight = 13
            TabOrder = 14
            Text = 'cbbSTATUSKECELAKAAN'
            OnSelect = cbbSTATUSKECELAKAANSelect
            Items.Strings = (
              'BUKAN KECELAKAAN'
              'KECELAKAAN LALU LINTAS DAN BUKAN KECELAKAAN KERJA'
              'KECELAKAAN LALU LINTAS DAN KECELAKAAN KERJA'
              'KECELAKAAN KERJA')
          end
          object lstpoli: TListBox
            Left = 304
            Top = 72
            Width = 297
            Height = 129
            ItemHeight = 13
            TabOrder = 15
            Visible = False
            OnDblClick = lstpoliDblClick
            OnKeyPress = lstpoliKeyPress
          end
          object lstdpjpmelayani: TListBox
            Left = 208
            Top = 96
            Width = 297
            Height = 217
            ItemHeight = 13
            TabOrder = 16
            Visible = False
            OnDblClick = lstdpjpmelayaniDblClick
            OnKeyPress = lstdpjpmelayaniKeyPress
          end
          object lstasalrujukan: TListBox
            Left = 208
            Top = 144
            Width = 289
            Height = 217
            ItemHeight = 13
            TabOrder = 17
            Visible = False
            OnDblClick = lstasalrujukanDblClick
            OnKeyPress = lstasalrujukanKeyPress
          end
          object lstDpjpKontrol: TListBox
            Left = 208
            Top = 232
            Width = 297
            Height = 177
            ItemHeight = 13
            TabOrder = 18
            Visible = False
            OnDblClick = lstDpjpKontrolDblClick
            OnKeyPress = lstDpjpKontrolKeyPress
          end
          object lstDiagnosa: TListBox
            Left = 208
            Top = 312
            Width = 393
            Height = 129
            ItemHeight = 13
            TabOrder = 19
            Visible = False
            OnDblClick = lstDiagnosaDblClick
            OnKeyPress = lstDiagnosaKeyPress
          end
          object grpStatusKecelakaan: TGroupBox
            Left = 136
            Top = 448
            Width = 505
            Height = 233
            Caption = 'STATUS KECELAKAAN'
            TabOrder = 20
            Visible = False
            object lblTGLKEJADIAN: TLabel
              Left = 8
              Top = 24
              Width = 76
              Height = 13
              Caption = 'TGL KEJADIAN'
            end
            object lblLOKASIKEJADIAN: TLabel
              Left = 8
              Top = 56
              Width = 93
              Height = 13
              Caption = 'LOKASI KEJADIAN'
            end
            object lblKETERANGANKEJADIAN: TLabel
              Left = 8
              Top = 152
              Width = 129
              Height = 13
              Caption = 'KETERANGAN KEJADIAN'
            end
            object dtpTGLKEJADIAN: TDateTimePicker
              Left = 160
              Top = 24
              Width = 186
              Height = 21
              Date = 44113.405697384260000000
              Time = 44113.405697384260000000
              TabOrder = 0
              OnKeyPress = dtpTGLKEJADIANKeyPress
            end
            object mmoKETERANGAN: TMemo
              Left = 160
              Top = 128
              Width = 305
              Height = 89
              Lines.Strings = (
                'mmoKETERANGAN')
              TabOrder = 1
            end
            object edtPROVINSI: TEdit
              Left = 160
              Top = 48
              Width = 265
              Height = 21
              TabOrder = 2
              Text = 'edtPROVINSI'
              OnKeyPress = edtPROVINSIKeyPress
            end
            object edtKODEPROVINSI: TEdit
              Left = 432
              Top = 48
              Width = 65
              Height = 21
              TabOrder = 3
              Text = 'edtKODEPROVINSI'
            end
            object edtKOTAKAB: TEdit
              Left = 160
              Top = 72
              Width = 265
              Height = 21
              TabOrder = 4
              Text = 'edtKOTAKAB'
              OnKeyPress = edtKOTAKABKeyPress
            end
            object edtKODEKABKOTA: TEdit
              Left = 432
              Top = 72
              Width = 65
              Height = 21
              TabOrder = 5
              Text = 'edtKODEKABKOTA'
            end
            object edtKECAMATAN: TEdit
              Left = 160
              Top = 96
              Width = 265
              Height = 21
              TabOrder = 6
              Text = 'edtKECAMATAN'
              OnKeyPress = edtKECAMATANKeyPress
            end
          end
          object lstKodeProvinsi: TListBox
            Left = 656
            Top = 512
            Width = 33
            Height = 137
            ItemHeight = 13
            TabOrder = 21
            Visible = False
          end
          object lstKodeKabKota: TListBox
            Left = 696
            Top = 504
            Width = 33
            Height = 137
            ItemHeight = 13
            TabOrder = 22
            Visible = False
          end
          object lstPROVINSI: TListBox
            Left = 320
            Top = 496
            Width = 265
            Height = 121
            ItemHeight = 13
            TabOrder = 23
            Visible = False
            OnDblClick = lstPROVINSIDblClick
            OnKeyPress = lstPROVINSIKeyPress
          end
          object lstKABKOTA: TListBox
            Left = 320
            Top = 528
            Width = 265
            Height = 129
            ItemHeight = 13
            TabOrder = 24
            Visible = False
            OnDblClick = lstKABKOTADblClick
            OnKeyPress = lstKABKOTAKeyPress
          end
          object lstkecamatan: TListBox
            Left = 320
            Top = 552
            Width = 273
            Height = 105
            ItemHeight = 13
            TabOrder = 25
            Visible = False
            OnDblClick = lstkecamatanDblClick
            OnKeyPress = lstkecamatanKeyPress
          end
          object btnSimpan: TButton
            Left = 288
            Top = 416
            Width = 75
            Height = 25
            Caption = '&SIMPAN'
            TabOrder = 26
          end
          object btnCetak: TButton
            Left = 368
            Top = 416
            Width = 75
            Height = 25
            Caption = '&CETAK'
            TabOrder = 27
          end
          object btnBARU: TButton
            Left = 208
            Top = 416
            Width = 75
            Height = 25
            Caption = '&BARU'
            TabOrder = 28
            OnClick = btnBARUClick
          end
        end
      end
      object tsJson: TTabSheet
        Caption = 'tsJson'
        ImageIndex = 1
        object mmoNoRujukan: TMemo
          Left = 24
          Top = 16
          Width = 185
          Height = 233
          Lines.Strings = (
            'mmoNoRujukan')
          TabOrder = 0
        end
        object mmoCobaDataRujukan: TMemo
          Left = 232
          Top = 24
          Width = 249
          Height = 225
          Lines.Strings = (
            'mmoCobaDataRujukan')
          TabOrder = 1
        end
        object mmopoli: TMemo
          Left = 496
          Top = 24
          Width = 193
          Height = 225
          Lines.Strings = (
            'mmopoli')
          TabOrder = 2
        end
        object mmodoktermelayani: TMemo
          Left = 704
          Top = 24
          Width = 185
          Height = 89
          Lines.Strings = (
            'mmodoktermelayani')
          TabOrder = 3
        end
        object edtlinkurl: TEdit
          Left = 0
          Top = 616
          Width = 321
          Height = 21
          TabOrder = 4
          Text = 'http://localhost:8080/BPJS/'
        end
        object mmoPpkRujukan: TMemo
          Left = 704
          Top = 120
          Width = 185
          Height = 129
          Lines.Strings = (
            'mmoPpkRujukan')
          TabOrder = 5
        end
        object mmodpjpsuratkontrol: TMemo
          Left = 24
          Top = 256
          Width = 185
          Height = 89
          Lines.Strings = (
            'mmodpjpsuratkontrol')
          TabOrder = 6
        end
        object mmodiagnosa: TMemo
          Left = 232
          Top = 256
          Width = 249
          Height = 89
          Lines.Strings = (
            'mmodiagnosa')
          TabOrder = 7
        end
        object mmoProvinsi: TMemo
          Left = 496
          Top = 256
          Width = 193
          Height = 89
          Lines.Strings = (
            'mmoProvinsi')
          TabOrder = 8
        end
        object mmoKOTAKABUPATEN: TMemo
          Left = 704
          Top = 256
          Width = 185
          Height = 89
          Lines.Strings = (
            'mmoKOTAKABUPATEN')
          TabOrder = 9
        end
        object mmokecamatan: TMemo
          Left = 16
          Top = 352
          Width = 185
          Height = 105
          Lines.Strings = (
            'mmokecamatan')
          TabOrder = 10
        end
        object mmoPencarianSep: TMemo
          Left = 232
          Top = 360
          Width = 233
          Height = 121
          Lines.Strings = (
            'mmoPencarianSep')
          TabOrder = 11
        end
      end
      object tsRUJUKANMANUAL: TTabSheet
        Caption = 'RUJUKAN MANUAL'
        ImageIndex = 2
        object pnlAtasRujukanManual: TPanel
          Left = 0
          Top = 0
          Width = 1279
          Height = 65
          Align = alTop
          TabOrder = 0
          object lblPELAYANAN: TLabel
            Left = 16
            Top = 8
            Width = 64
            Height = 13
            Caption = 'PELAYANAN'
          end
          object lblTGLPELAYANAN: TLabel
            Left = 16
            Top = 32
            Width = 88
            Height = 13
            Caption = 'TGL PELAYANAN'
          end
          object lblPPKASALPESERTA: TLabel
            Left = 296
            Top = 16
            Width = 104
            Height = 13
            Caption = 'PPK ASAL PESERTA'
          end
          object lblNOMERRUJUKAN_MANUAL: TLabel
            Left = 296
            Top = 40
            Width = 142
            Height = 13
            Caption = 'NOMER RUJUKAN MANUAL'
          end
          object cbbPELAYANANRJKMANUAL: TComboBox
            Left = 120
            Top = 8
            Width = 161
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbPELAYANANRJKMANUAL'
            OnSelect = cbbPELAYANANRJKMANUALSelect
            Items.Strings = (
              'RAWAT JALAN'
              'RAWAT INAP')
          end
          object dtpTGLPELAYANAN: TDateTimePicker
            Left = 120
            Top = 32
            Width = 161
            Height = 21
            Date = 44116.657954872690000000
            Time = 44116.657954872690000000
            TabOrder = 1
          end
          object edtPPKASALPESERTA: TEdit
            Left = 456
            Top = 8
            Width = 329
            Height = 21
            TabOrder = 2
            Text = 'edtPPKASALPESERTA'
            OnKeyPress = edtPPKASALPESERTAKeyPress
          end
          object edtNOMERRUJUKANMANUAL: TEdit
            Left = 456
            Top = 32
            Width = 185
            Height = 21
            TabOrder = 3
            Text = 'edtNOMERRUJUKANMANUAL'
            OnKeyPress = edtNOMERRUJUKANMANUALKeyPress
          end
          object rbBPJSRJKMANUAL: TRadioButton
            Left = 648
            Top = 32
            Width = 113
            Height = 17
            Caption = 'BPJS'
            TabOrder = 4
          end
          object rbNIKMANUAL: TRadioButton
            Left = 696
            Top = 32
            Width = 57
            Height = 17
            Caption = 'NIK'
            TabOrder = 5
          end
          object rbEKTPMANUAL: TRadioButton
            Left = 744
            Top = 32
            Width = 65
            Height = 17
            Caption = 'E-KTP'
            TabOrder = 6
          end
          object btnCARIMANUAL: TButton
            Left = 816
            Top = 24
            Width = 75
            Height = 25
            Caption = 'CARI'
            TabOrder = 7
            OnClick = btnCARIMANUALClick
          end
        end
        object pnlKIRIRUJUKAN: TPanel
          Left = 0
          Top = 65
          Width = 329
          Height = 696
          Align = alLeft
          TabOrder = 1
          object grpDATAPESERTAMANUAL: TGroupBox
            Left = 1
            Top = 1
            Width = 327
            Height = 105
            Align = alTop
            Caption = 'DATA PESERTA MANUAL'
            TabOrder = 0
            object lblNAMAPESERTAMANUAL: TLabel
              Left = 8
              Top = 24
              Width = 136
              Height = 13
              Caption = 'lblNAMAPESERTAMANUAL'
            end
            object lblNOBPJSMANUAL: TLabel
              Left = 8
              Top = 48
              Width = 97
              Height = 13
              Caption = 'lblNOBPJSMANUAL'
            end
          end
          object pgcRUJUKANMANUAL: TPageControl
            Left = 1
            Top = 106
            Width = 327
            Height = 589
            ActivePage = tsDETAIL
            Align = alClient
            TabOrder = 1
            object tsDETAIL: TTabSheet
              Caption = 'DETAIL'
              object lblNOMERBPJSMANUAL: TLabel
                Left = 8
                Top = 16
                Width = 121
                Height = 13
                Caption = 'lblNOMERBPJSMANUAL'
              end
              object lblTGLLAHIRMANUAL: TLabel
                Left = 8
                Top = 40
                Width = 108
                Height = 13
                Caption = 'lblTGLLAHIRMANUAL'
              end
              object lblPESERTAMANUAL: TLabel
                Left = 8
                Top = 64
                Width = 105
                Height = 13
                Caption = 'lblPESERTAMANUAL'
              end
              object lblKELASMANUAL: TLabel
                Left = 8
                Top = 96
                Width = 89
                Height = 13
                Caption = 'lblKELASMANUAL'
              end
              object lblFASKESMANUAL: TLabel
                Left = 8
                Top = 120
                Width = 96
                Height = 13
                Caption = 'lblFASKESMANUAL'
              end
              object lblTGLAKTIFMANUAL: TLabel
                Left = 8
                Top = 152
                Width = 106
                Height = 13
                Caption = 'lblTGLAKTIFMANUAL'
              end
              object lblPEKERJAANMANUAL: TLabel
                Left = 8
                Top = 176
                Width = 118
                Height = 13
                Caption = 'lblPEKERJAANMANUAL'
              end
            end
            object tsKETERANGAN: TTabSheet
              Caption = 'KETERANGAN'
              ImageIndex = 1
            end
            object tsRIWAYAT: TTabSheet
              Caption = 'RIWAYAT'
              ImageIndex = 2
            end
          end
        end
        object pnlTENGAHMANUAL: TPanel
          Left = 329
          Top = 65
          Width = 950
          Height = 696
          Align = alClient
          TabOrder = 2
          object lblWAJIBDISIMANUAL: TLabel
            Left = 16
            Top = 16
            Width = 70
            Height = 13
            Caption = '* WAJIB DI ISI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object lblSPESIALSISSUBSPMANUAL: TLabel
            Left = 56
            Top = 40
            Width = 131
            Height = 13
            Caption = 'lSPESIALSI/SUBSPEALIS*'
          end
          object lblDPJPMANUAL: TLabel
            Left = 80
            Top = 72
            Width = 109
            Height = 13
            Caption = 'DPJP YG MELAYANI *'
          end
          object lblTGLSEPMANUAL: TLabel
            Left = 136
            Top = 96
            Width = 52
            Height = 13
            Caption = 'TGL SEP *'
          end
          object lblNORMMANUAL: TLabel
            Left = 144
            Top = 128
            Width = 43
            Height = 13
            Caption = 'NO RM *'
          end
          object lblDIAGNOSAMANUAL: TLabel
            Left = 80
            Top = 160
            Width = 111
            Height = 13
            Caption = 'DIAGNOSA MANUAL *'
          end
          object lblNOTELEPONMANUAL: TLabel
            Left = 112
            Top = 192
            Width = 76
            Height = 13
            Caption = 'NO TELEPON *'
          end
          object lblCATATANMANUAL: TLabel
            Left = 80
            Top = 224
            Width = 105
            Height = 13
            Caption = 'CATATAN MANUAL *'
          end
          object lblSTATUSKECELAKAANMANUAL: TLabel
            Left = 64
            Top = 288
            Width = 123
            Height = 13
            Caption = 'STATUS KECELAKAAN *'
          end
          object chkEXECUTIVEMANUAL: TCheckBox
            Left = 200
            Top = 40
            Width = 97
            Height = 17
            Caption = 'EXECUTIVE'
            TabOrder = 0
            OnKeyPress = chkEXECUTIVEMANUALKeyPress
          end
          object edtSUBSPEALISMANUAL: TEdit
            Left = 304
            Top = 40
            Width = 241
            Height = 21
            TabOrder = 1
            Text = 'edtSUBSPEALISMANUAL'
            OnKeyPress = edtSUBSPEALISMANUALKeyPress
          end
          object edtDPJPMANUAL: TEdit
            Left = 200
            Top = 64
            Width = 345
            Height = 21
            TabOrder = 2
            Text = 'edtDPJPMANUAL'
            OnKeyPress = edtDPJPMANUALKeyPress
          end
          object dtpTGLSEPMANUAL: TDateTimePicker
            Left = 200
            Top = 88
            Width = 186
            Height = 21
            Date = 44116.689652581020000000
            Time = 44116.689652581020000000
            TabOrder = 3
            OnKeyPress = dtpTGLSEPMANUALKeyPress
          end
          object edtNORMMANUAL: TEdit
            Left = 200
            Top = 120
            Width = 185
            Height = 21
            TabOrder = 4
            Text = 'edtNORMMANUAL'
            OnKeyPress = edtNORMMANUALKeyPress
          end
          object chkPESERTAMANUAL: TCheckBox
            Left = 392
            Top = 120
            Width = 97
            Height = 17
            Caption = 'PESERTA COB'
            TabOrder = 5
            OnKeyPress = chkPESERTAMANUALKeyPress
          end
          object edtDIAGNOSAMANUAL: TEdit
            Left = 200
            Top = 152
            Width = 345
            Height = 21
            TabOrder = 6
            Text = 'edtDIAGNOSAMANUAL'
            OnKeyPress = edtDIAGNOSAMANUALKeyPress
          end
          object edtNOTELEPONEMANUAL: TEdit
            Left = 200
            Top = 184
            Width = 185
            Height = 21
            TabOrder = 7
            Text = 'edtNOTELEPONEMANUAL'
            OnKeyPress = edtNOTELEPONEMANUALKeyPress
          end
          object mmoCATATANMANUAL: TMemo
            Left = 200
            Top = 216
            Width = 361
            Height = 57
            Lines.Strings = (
              'mmoCATATANMANUAL')
            TabOrder = 8
            OnKeyPress = mmoCATATANMANUALKeyPress
          end
          object cbbSTATUSKECELAKAANMANUAL: TComboBox
            Left = 200
            Top = 280
            Width = 361
            Height = 21
            ItemHeight = 13
            TabOrder = 9
            Text = 'cbbSTATUSKECELAKAANMANUAL'
            OnSelect = cbbSTATUSKECELAKAANMANUALSelect
            Items.Strings = (
              'BUKAN KECELAKAAN'
              'KECELAKAAN LALU LINTAS DAN BUKAN KECELAKAAN KERJA'
              'KECELAKAAN LALU LINTAS DAN KECELAKAAN KERJA'
              'KECELAKAAN KERJA')
          end
          object grpSTATUSKECELAKAANMANUAL: TGroupBox
            Left = 200
            Top = 344
            Width = 417
            Height = 209
            Caption = 'STATUS KECELAKAAN'
            TabOrder = 10
            Visible = False
            object lblTGLKEJADIANMANUAL: TLabel
              Left = 8
              Top = 32
              Width = 76
              Height = 13
              Caption = 'TGL KEJADIAN'
            end
            object lblLOKASIKEJADIANMANUAL: TLabel
              Left = 8
              Top = 64
              Width = 93
              Height = 13
              Caption = 'LOKASI KEJADIAN'
            end
            object lblKETERANGANKEJADIANMANUAL: TLabel
              Left = 8
              Top = 144
              Width = 74
              Height = 13
              Caption = 'KETERANGAN'
            end
            object dtpTGLKEJADIANMANUAL: TDateTimePicker
              Left = 128
              Top = 24
              Width = 186
              Height = 21
              Date = 44117.450173136570000000
              Time = 44117.450173136570000000
              TabOrder = 0
            end
            object edtPROVINSIMANUAL: TEdit
              Left = 128
              Top = 56
              Width = 225
              Height = 21
              TabOrder = 1
              Text = 'edtPROVINSIMANUAL'
              OnKeyPress = edtPROVINSIMANUALKeyPress
            end
            object edtKABKOTAMANUAL: TEdit
              Left = 128
              Top = 80
              Width = 225
              Height = 21
              TabOrder = 2
              Text = 'edtKABKOTAMANUAL'
              OnKeyPress = edtKABKOTAMANUALKeyPress
            end
            object edtKECAMMANUAL: TEdit
              Left = 128
              Top = 104
              Width = 225
              Height = 21
              TabOrder = 3
              Text = 'edtKECAMMANUAL'
              OnKeyPress = edtKECAMMANUALKeyPress
            end
            object mmoKETMANUAL: TMemo
              Left = 128
              Top = 128
              Width = 225
              Height = 57
              Lines.Strings = (
                'mmoKETMANUAL')
              TabOrder = 4
            end
            object edtKodeProvinsiManual: TEdit
              Left = 360
              Top = 56
              Width = 49
              Height = 21
              TabOrder = 5
              Text = 'edtKodeProvinsiManual'
            end
            object edtKodeKabKotaManual: TEdit
              Left = 360
              Top = 80
              Width = 49
              Height = 21
              TabOrder = 6
              Text = 'edtKodeKabKotaManual'
            end
          end
          object btnBARUMANUAL: TButton
            Left = 200
            Top = 312
            Width = 75
            Height = 25
            Caption = 'BARU'
            TabOrder = 11
            OnClick = btnBARUMANUALClick
          end
          object btnSIMPANMANUAL: TButton
            Left = 280
            Top = 312
            Width = 75
            Height = 25
            Caption = 'SIMPAN'
            TabOrder = 12
          end
          object btnCETAKMANUAL: TButton
            Left = 360
            Top = 312
            Width = 75
            Height = 25
            Caption = 'CETAK'
            TabOrder = 13
          end
          object lstPROVINSIMANUAL: TListBox
            Left = 328
            Top = 424
            Width = 265
            Height = 169
            ItemHeight = 13
            TabOrder = 14
            Visible = False
            OnDblClick = lstPROVINSIMANUALDblClick
            OnKeyPress = lstPROVINSIMANUALKeyPress
          end
          object lstKABKOTAMANUAL: TListBox
            Left = 328
            Top = 448
            Width = 265
            Height = 177
            ItemHeight = 13
            TabOrder = 15
            Visible = False
            OnDblClick = lstKABKOTAMANUALDblClick
            OnKeyPress = lstKABKOTAMANUALKeyPress
          end
          object lstKECMANUAL: TListBox
            Left = 328
            Top = 472
            Width = 265
            Height = 177
            ItemHeight = 13
            TabOrder = 16
            Visible = False
            OnKeyPress = lstKECMANUALKeyPress
          end
          object lstKodeProvinsiManual: TListBox
            Left = 640
            Top = 424
            Width = 41
            Height = 137
            ItemHeight = 13
            TabOrder = 17
            Visible = False
          end
          object lstKodeKabKotaManual: TListBox
            Left = 688
            Top = 424
            Width = 49
            Height = 137
            ItemHeight = 13
            TabOrder = 18
            Visible = False
          end
          object lstDPJPMANUAL: TListBox
            Left = 200
            Top = 88
            Width = 305
            Height = 153
            ItemHeight = 13
            TabOrder = 19
            Visible = False
            OnKeyPress = lstDPJPMANUALKeyPress
          end
          object lstDiagnosaManual: TListBox
            Left = 200
            Top = 176
            Width = 393
            Height = 217
            ItemHeight = 13
            TabOrder = 20
            Visible = False
            OnDblClick = lstDiagnosaManualDblClick
            OnKeyPress = lstDiagnosaManualKeyPress
          end
        end
      end
    end
    object lstPPKASALPESERTAMANUAL: TListBox
      Left = 464
      Top = 56
      Width = 329
      Height = 137
      ItemHeight = 13
      TabOrder = 1
      Visible = False
      OnKeyPress = lstPPKASALPESERTAMANUALKeyPress
    end
  end
  object idhtpRujukan: TIdHTTP
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
    Left = 1000
    Top = 65
  end
  object idhtppoli: TIdHTTP
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
    Left = 941
    Top = 66
  end
  object idhtpdoktermelayani: TIdHTTP
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
    Left = 1085
    Top = 58
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
    Left = 1173
    Top = 66
  end
  object idhtpProvinsi: TIdHTTP
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
    Left = 974
    Top = 123
  end
  object idhtpKABKOTA: TIdHTTP
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
    Left = 1062
    Top = 131
  end
  object idhtseppencarian: TIdHTTP
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
    Top = 194
  end
end
