unit USepBpjs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxContainer, cxEdit, cxListView, ImgList, cxLabel;

type
  TFSepBpjs = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    idhtpRujukan: TIdHTTP;
    pgcTengah: TPageControl;
    tsRujukan: TTabSheet;
    tsJson: TTabSheet;
    mmoNoRujukan: TMemo;
    mmoCobaDataRujukan: TMemo;
    pnlAtasRujukan: TPanel;
    btnCari: TButton;
    rbNORUJUKAN: TRadioButton;
    rbNOKARTU: TRadioButton;
    rbNOKARTUMULTI: TRadioButton;
    cbbFASKES: TComboBox;
    lblNOMER: TLabel;
    edtNOMER: TEdit;
    pnlDataPeserta: TPanel;
    grpDataPeserta: TGroupBox;
    lblNAMAPESERTA: TLabel;
    lblNOBPJS: TLabel;
    pgcDataPeserta: TPageControl;
    tsDetailPeserta: TTabSheet;
    tsKeteranganPeserta: TTabSheet;
    tsRiwayatPeserta: TTabSheet;
    pnlDetailRujukan: TPanel;
    lblNOMERBPJS: TLabel;
    lblTGLLAHIR: TLabel;
    lblPOLI: TLabel;
    lblKELAS: TLabel;
    lblFASKES: TLabel;
    lblTGLCETAK: TLabel;
    lblJENISKARTU: TLabel;
    lblWAJIBDISI: TLabel;
    lblSPESIALIS_SUBSPESIALIS: TLabel;
    lblDPJPYGMELAYANI: TLabel;
    lblASALRUJUKAN: TLabel;
    lblPPKASALRUJUKAN: TLabel;
    lblTGLRUJUKAN: TLabel;
    lblNORUJUKAN: TLabel;
    lblNOSURATKONTROL: TLabel;
    lblDPJSPPEMBERISURATKONTROL: TLabel;
    lblTGLSEP: TLabel;
    lblNORM: TLabel;
    lblDIAGNOSA: TLabel;
    lblNOTELEPONE: TLabel;
    lblCATATAN: TLabel;
    lblSTATUSKECELAKAAN: TLabel;
    chkEXSECUTIVE: TCheckBox;
    edtSUBSEPESIALSI: TEdit;
    edtDPJPMELAYANI: TEdit;
    edtASALRUJUKAN: TEdit;
    edtPPKASALRUJUKAN: TEdit;
    dtpTGLRUJUKAN: TDateTimePicker;
    edtNORUJUKAN: TEdit;
    edtNOSURATKONTROL: TEdit;
    edtDPJPPEMBERIKONTROL: TEdit;
    dtpTGLSEP: TDateTimePicker;
    edtNORM: TEdit;
    edtDIANGNOSA: TEdit;
    edtNOTELEPONE: TEdit;
    mmoCATATAN: TMemo;
    cbbSTATUSKECELAKAAN: TComboBox;
    lstpoli: TListBox;
    mmopoli: TMemo;
    idhtppoli: TIdHTTP;
    lstdpjpmelayani: TListBox;
    mmodoktermelayani: TMemo;
    edtlinkurl: TEdit;
    idhtpdoktermelayani: TIdHTTP;
    lstasalrujukan: TListBox;
    mmoPpkRujukan: TMemo;
    mmodpjpsuratkontrol: TMemo;
    lstDpjpKontrol: TListBox;
    mmodiagnosa: TMemo;
    lstDiagnosa: TListBox;
    idhtpDiagnosa: TIdHTTP;
    grpStatusKecelakaan: TGroupBox;
    lblTGLKEJADIAN: TLabel;
    lblLOKASIKEJADIAN: TLabel;
    lblKETERANGANKEJADIAN: TLabel;
    dtpTGLKEJADIAN: TDateTimePicker;
    mmoKETERANGAN: TMemo;
    idhtpProvinsi: TIdHTTP;
    mmoProvinsi: TMemo;
    mmoKOTAKABUPATEN: TMemo;
    edtPROVINSI: TEdit;
    edtKODEPROVINSI: TEdit;
    edtKOTAKAB: TEdit;
    edtKODEKABKOTA: TEdit;
    edtKECAMATAN: TEdit;
    lstKodeProvinsi: TListBox;
    idhtpKABKOTA: TIdHTTP;
    lstKodeKabKota: TListBox;
    mmokecamatan: TMemo;
    lstPROVINSI: TListBox;
    lstKABKOTA: TListBox;
    lstkecamatan: TListBox;
    btnSimpan: TButton;
    btnCetak: TButton;
    tsRUJUKANMANUAL: TTabSheet;
    pnlAtasRujukanManual: TPanel;
    lblPELAYANAN: TLabel;
    lblTGLPELAYANAN: TLabel;
    lblPPKASALPESERTA: TLabel;
    lblNOMERRUJUKAN_MANUAL: TLabel;
    cbbPELAYANANRJKMANUAL: TComboBox;
    dtpTGLPELAYANAN: TDateTimePicker;
    edtPPKASALPESERTA: TEdit;
    edtNOMERRUJUKANMANUAL: TEdit;
    rbBPJSRJKMANUAL: TRadioButton;
    rbNIKMANUAL: TRadioButton;
    rbEKTPMANUAL: TRadioButton;
    pnlKIRIRUJUKAN: TPanel;
    pnlTENGAHMANUAL: TPanel;
    grpDATAPESERTAMANUAL: TGroupBox;
    lblNAMAPESERTAMANUAL: TLabel;
    lblNOBPJSMANUAL: TLabel;
    pgcRUJUKANMANUAL: TPageControl;
    tsDETAIL: TTabSheet;
    tsKETERANGAN: TTabSheet;
    tsRIWAYAT: TTabSheet;
    btnCARIMANUAL: TButton;
    lblNOMERBPJSMANUAL: TLabel;
    lblTGLLAHIRMANUAL: TLabel;
    lblPESERTAMANUAL: TLabel;
    lblKELASMANUAL: TLabel;
    lblFASKESMANUAL: TLabel;
    lblTGLAKTIFMANUAL: TLabel;
    lblPEKERJAANMANUAL: TLabel;
    lblWAJIBDISIMANUAL: TLabel;
    lblSPESIALSISSUBSPMANUAL: TLabel;
    chkEXECUTIVEMANUAL: TCheckBox;
    edtSUBSPEALISMANUAL: TEdit;
    lblDPJPMANUAL: TLabel;
    edtDPJPMANUAL: TEdit;
    lblTGLSEPMANUAL: TLabel;
    dtpTGLSEPMANUAL: TDateTimePicker;
    lblNORMMANUAL: TLabel;
    edtNORMMANUAL: TEdit;
    chkPESERTAMANUAL: TCheckBox;
    lblDIAGNOSAMANUAL: TLabel;
    edtDIAGNOSAMANUAL: TEdit;
    lblNOTELEPONMANUAL: TLabel;
    edtNOTELEPONEMANUAL: TEdit;
    lblCATATANMANUAL: TLabel;
    mmoCATATANMANUAL: TMemo;
    lblSTATUSKECELAKAANMANUAL: TLabel;
    cbbSTATUSKECELAKAANMANUAL: TComboBox;
    lstPPKASALPESERTAMANUAL: TListBox;
    mmoPencarianSep: TMemo;
    idhtseppencarian: TIdHTTP;
    btnBARU: TButton;
    grpSTATUSKECELAKAANMANUAL: TGroupBox;
    lblTGLKEJADIANMANUAL: TLabel;
    lblLOKASIKEJADIANMANUAL: TLabel;
    lblKETERANGANKEJADIANMANUAL: TLabel;
    dtpTGLKEJADIANMANUAL: TDateTimePicker;
    edtPROVINSIMANUAL: TEdit;
    edtKABKOTAMANUAL: TEdit;
    edtKECAMMANUAL: TEdit;
    mmoKETMANUAL: TMemo;
    btnBARUMANUAL: TButton;
    btnSIMPANMANUAL: TButton;
    btnCETAKMANUAL: TButton;
    lstPROVINSIMANUAL: TListBox;
    lstKABKOTAMANUAL: TListBox;
    lstKECMANUAL: TListBox;
    lstKodeProvinsiManual: TListBox;
    edtKodeProvinsiManual: TEdit;
    lstKodeKabKotaManual: TListBox;
    edtKodeKabKotaManual: TEdit;
    lstDPJPMANUAL: TListBox;
    lstDiagnosaManual: TListBox;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnCARIClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSUBSEPESIALSIKeyPress(Sender: TObject; var Key: Char);
    procedure lstpoliKeyPress(Sender: TObject; var Key: Char);
    procedure lstpoliDblClick(Sender: TObject);
    procedure edtDPJPMELAYANIKeyPress(Sender: TObject; var Key: Char);
    procedure lstdpjpmelayaniKeyPress(Sender: TObject; var Key: Char);
    procedure lstdpjpmelayaniDblClick(Sender: TObject);
    procedure cbbFASKESSelect(Sender: TObject);
    procedure edtPPKASALRUJUKANKeyPress(Sender: TObject; var Key: Char);
    procedure lstasalrujukanKeyPress(Sender: TObject; var Key: Char);
    procedure lstasalrujukanDblClick(Sender: TObject);
    procedure edtDPJPPEMBERIKONTROLKeyPress(Sender: TObject;
      var Key: Char);
    procedure lstDpjpKontrolKeyPress(Sender: TObject; var Key: Char);
    procedure lstDpjpKontrolDblClick(Sender: TObject);
    procedure edtDIANGNOSAKeyPress(Sender: TObject; var Key: Char);
    procedure lstDiagnosaKeyPress(Sender: TObject; var Key: Char);
    procedure lstDiagnosaDblClick(Sender: TObject);
    procedure edtPROVINSIKeyPress(Sender: TObject; var Key: Char);
    procedure lstPROVINSIKeyPress(Sender: TObject; var Key: Char);
    procedure lstPROVINSIDblClick(Sender: TObject);
    procedure edtKOTAKABKeyPress(Sender: TObject; var Key: Char);
    procedure lstKABKOTAKeyPress(Sender: TObject; var Key: Char);
    procedure lstKABKOTADblClick(Sender: TObject);
    procedure edtKECAMATANKeyPress(Sender: TObject; var Key: Char);
    procedure lstkecamatanKeyPress(Sender: TObject; var Key: Char);
    procedure lstkecamatanDblClick(Sender: TObject);
    procedure cbbPELAYANANRJKMANUALSelect(Sender: TObject);
    procedure btnCARIMANUALClick(Sender: TObject);
    procedure cbbFASKESKeyPress(Sender: TObject; var Key: Char);
    procedure edtNOMERKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTGLRUJUKANKeyPress(Sender: TObject; var Key: Char);
    procedure edtNORUJUKANKeyPress(Sender: TObject; var Key: Char);
    procedure edtNOSURATKONTROLKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTGLSEPKeyPress(Sender: TObject; var Key: Char);
    procedure edtNORMKeyPress(Sender: TObject; var Key: Char);
    procedure edtNOTELEPONEKeyPress(Sender: TObject; var Key: Char);
    procedure mmoCATATANKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSTATUSKECELAKAANSelect(Sender: TObject);
    procedure dtpTGLKEJADIANKeyPress(Sender: TObject; var Key: Char);
    procedure btnBARUClick(Sender: TObject);
    procedure btnBARUMANUALClick(Sender: TObject);
    procedure edtPPKASALPESERTAKeyPress(Sender: TObject; var Key: Char);
    procedure lstPPKASALPESERTAMANUALKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtNOMERRUJUKANMANUALKeyPress(Sender: TObject;
      var Key: Char);
    procedure chkEXECUTIVEMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtSUBSPEALISMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtDPJPMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTGLSEPMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtNORMMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure chkPESERTAMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtDIAGNOSAMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtNOTELEPONEMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure mmoCATATANMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSTATUSKECELAKAANMANUALSelect(Sender: TObject);
    procedure lstPROVINSIMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstPROVINSIMANUALDblClick(Sender: TObject);
    procedure lstKABKOTAMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtPROVINSIMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtKABKOTAMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstKABKOTAMANUALDblClick(Sender: TObject);
    procedure edtKECAMMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstKECMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstDPJPMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstDiagnosaManualKeyPress(Sender: TObject; var Key: Char);
    procedure lstDiagnosaManualDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
    procedure tampilPoli;
    procedure tampildoktermelayani;
    procedure tampildokterManual;
    procedure tampilDokterSuratKontrol;
    procedure tampilPpkRujukan;
    procedure tampilPpkRujukanManual;
    procedure tampilDiagnosa;
    procedure tampilDiagnosaManual;
    procedure tampilProvinsi;
    procedure tampilProvinsiManual;
    procedure tampilKabKota;
    procedure tampilKabKotaManual;
    procedure tampilKecamatan;
    procedure tampilKecamatanManual;
  end;

var
  FSepBpjs: TFSepBpjs;

implementation

{$R *.dfm}
USES superobject, Math;

procedure TFSepBpjs.awal;
begin
  rbNORUJUKAN.Checked := True;
  cbbFASKES.ItemIndex := 0;
  edtNOMER.Text := '';

  ///hapus kategori wajib isi
  edtSUBSEPESIALSI.Clear;
  edtDPJPMELAYANI.Clear;
  edtASALRUJUKAN.Text:=cbbFASKES.Text;
  edtPPKASALRUJUKAN.Clear;
  dtpTGLRUJUKAN.DateTime := Now;
  edtNORUJUKAN.Clear;
  edtNOSURATKONTROL.Clear;
  edtDPJPPEMBERIKONTROL.Clear;
  dtpTGLSEP.DateTime := Now;
  edtNORM.Clear;
  edtDIANGNOSA.Clear;
  edtNOTELEPONE.Clear;
  mmoCATATAN.Lines.Clear;
  cbbSTATUSKECELAKAAN.ItemIndex := 0;

  dtpTGLKEJADIAN.DateTime := Now;
  edtPROVINSI.Text := 'TEKAN ENTER TAMPIL PROVINSI';
  edtKOTAKAB.Text := 'TEKAN ENTER TAMPIL KAB/KOTA';
  edtKECAMATAN.Text := 'TEKAN ENTER TAMPIL KECAMATAN';
  mmoKETERANGAN.Text := '';


  ///MANUAL RUJUKAN
  cbbPELAYANANRJKMANUAL.ItemIndex := 0;
  dtpTGLPELAYANAN.DateTime := Now;
  edtPPKASALPESERTA.Text := '';
  edtNOMERRUJUKANMANUAL.Text := '';
  rbBPJSRJKMANUAL.Checked := True;
  chkEXECUTIVEMANUAL.Checked := False;
  edtSUBSPEALISMANUAL.Text := 'INSTALASI GAWAT DARURAT';
  edtDPJPMANUAL.Text := '';
  dtpTGLSEP.DateTime := Now;
  edtNORMMANUAL.Text := '';
  edtDIAGNOSAMANUAL.Text := '';
  edtNOTELEPONEMANUAL.Text := '';
  mmoCATATANMANUAL.Text := '';
  cbbSTATUSKECELAKAANMANUAL.ItemIndex := 0;

  dtpTGLKEJADIANMANUAL.DateTime := Now;
  edtPROVINSIMANUAL.Text := 'TEKAN ENTER TAMPIL PROVINSI';
  edtKABKOTAMANUAL.Text := 'TEKAN ENTER TAMPIL KAB/KOTA';
  edtKECAMMANUAL.Text := 'TEKAN ENTER TAMPIL KECAMATAN';
  mmoKETMANUAL.Text := '';
end;

procedure TFSepBpjs.tampilPoli;
var
  get_url_poli: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootpoli,nama:ISuperObject;
begin
    mmopoli.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_poli := edtlinkurl.Text+'tampilPoli.php?poli=';
    resp := TMemoryStream.Create;
    try
      idhtppoli.Get(get_url_poli+edtSUBSEPESIALSI.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmopoli.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstpoli.Items.Text := '';
    lstpoli.Visible := True;
    json_rootpoli:=SO(mmopoli.Text);
    if json_rootpoli.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootpoli.A['response.poli'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootpoli.A['response.poli'].O[i];
    lstpoli.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootpoli.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil ppk rujukan MANUAL
procedure TFSepBpjs.tampilPpkRujukanManual;
var
  get_url_ppkRjkManual,ppkRjkManual,faskesManual,asalRjkManual: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootPpkRjkManual,nama:ISuperObject;
begin
    mmoPpkRujukan.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_ppkRjkManual := edtlinkurl.Text+'tampilPpkRujukan.php?';
    resp := TMemoryStream.Create;
    try
      ppkRjkManual := 'ppkrujukan='+edtPPKASALPESERTA.Text;
      faskesManual := '&faskes=1';

      idhtpRujukan.Get(get_url_ppkRjkManual+ppkRjkManual+faskesManual, resp);

      resp.Position := 0; // <-- add this!!
      mmoPpkRujukan.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstPPKASALPESERTAMANUAL.Items.Text := '';
    lstPPKASALPESERTAMANUAL.Visible := True;
    json_rootPpkRjkManual:=SO(mmoPpkRujukan.Text);
    if json_rootPpkRjkManual.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootPpkRjkManual.A['response.faskes'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootPpkRjkManual.A['response.faskes'].O[i];
    lstPPKASALPESERTAMANUAL.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootPpkRjkManual.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil ppk rujukan manual
procedure TFSepBpjs.tampilPpkRujukan;
var
  get_url_ppkrujukan,ppkrujukan,faskes,asalRujukan: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootPpkRujukan,nama:ISuperObject;
begin
    mmoPpkRujukan.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_ppkrujukan := edtlinkurl.Text+'tampilPpkRujukan.php?';
    resp := TMemoryStream.Create;
    try
      ppkrujukan := 'ppkrujukan='+edtPPKASALRUJUKAN.Text;
      if edtASALRUJUKAN.Text = 'FASKES 1' then
        asalRujukan := '1'
      else
        asalRujukan := '2';
      faskes := '&faskes='+asalRujukan;

      idhtpRujukan.Get(get_url_ppkrujukan+ppkrujukan+faskes, resp);

      resp.Position := 0; // <-- add this!!
      mmoPpkRujukan.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstasalrujukan.Items.Text := '';
    lstasalrujukan.Visible := True;
    json_rootPpkRujukan:=SO(mmoPpkRujukan.Text);
    if json_rootPpkRujukan.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootPpkRujukan.A['response.faskes'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootPpkRujukan.A['response.faskes'].O[i];
    lstasalrujukan.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootPpkRujukan.S['metadata.message'],mtInformation,[mbOK],0);
end;


/// tampil dokter melayani
procedure TFSepBpjs.tampildoktermelayani;
var
  get_url_dokterlayani,subSpeaslis,pelayanan,isiCbbFaskes: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdokterL,nama:ISuperObject;
begin
  mmodoktermelayani.Lines.Text := '';
  TIdHTTP.Create(nil);
  get_url_dokterlayani := edtlinkurl.Text+'tampildokter.php?';
  resp := TMemoryStream.Create;
  try
    if cbbFASKES.Text = 'FASKES 1' then
       isiCbbFaskes := '1'
    else
       isiCbbFaskes := '2';

      pelayanan := 'pelayanan='+isiCbbFaskes;
      subSpeaslis := '&supSpesialis='+edtSUBSEPESIALSI.Text;
      idhtpdoktermelayani.Get(get_url_dokterlayani+pelayanan+subSpeaslis, resp);

      resp.Position := 0; // <-- add this!!
      mmodoktermelayani.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstdpjpmelayani.Items.Text := '';
    lstdpjpmelayani.Visible := True;
    json_rootdokterL:=SO(mmodoktermelayani.Text);
    if json_rootdokterL.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdokterL.A['response.list'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdokterL.A['response.list'].O[i];
    lstdpjpmelayani.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdokterL.S['metadata.message'],mtInformation,[mbOK],0);

end;

/// tampil dokter melayani MANUAL
procedure TFSepBpjs.tampildokterManual;
var
  get_url_dokterlayani,subSpeaslis,pelayanan,isiCbbFaskes: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdokterL,nama:ISuperObject;
begin
  mmodoktermelayani.Lines.Text := '';
  TIdHTTP.Create(nil);
  get_url_dokterlayani := edtlinkurl.Text+'tampildokter.php?';
  resp := TMemoryStream.Create;
  try
      isiCbbFaskes := '1';

      pelayanan := 'pelayanan='+isiCbbFaskes;
      subSpeaslis := '&supSpesialis='+edtSUBSPEALISMANUAL.Text;
      idhtpdoktermelayani.Get(get_url_dokterlayani+pelayanan+subSpeaslis, resp);

      resp.Position := 0; // <-- add this!!
      mmodoktermelayani.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDPJPMANUAL.Items.Text := '';
    lstDPJPMANUAL.Visible := True;
    json_rootdokterL:=SO(mmodoktermelayani.Text);
    if json_rootdokterL.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdokterL.A['response.list'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdokterL.A['response.list'].O[i];
    lstDPJPMANUAL.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdokterL.S['metadata.message'],mtInformation,[mbOK],0);
end;


/// tampil dokter surat kontrol
procedure TFSepBpjs.tampilDokterSuratKontrol;
var
  get_url_dokterkontrol,subSpeaslis,pelayanan,isiCbbFaskes: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdokterK,nama:ISuperObject;
begin
  mmodpjpsuratkontrol.Lines.Text := '';
  TIdHTTP.Create(nil);
  get_url_dokterkontrol := edtlinkurl.Text+'tampildokter.php?';
  resp := TMemoryStream.Create;
  try
    if cbbFASKES.Text = 'FASKES 1' then
       isiCbbFaskes := '1'
    else
       isiCbbFaskes := '2';

      pelayanan := 'pelayanan='+isiCbbFaskes;
      subSpeaslis := '&supSpesialis='+edtSUBSEPESIALSI.Text;
      idhtpdoktermelayani.Get(get_url_dokterkontrol+pelayanan+subSpeaslis, resp);

      resp.Position := 0; // <-- add this!!
      mmodpjpsuratkontrol.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDpjpKontrol.Items.Text := '';
    lstDpjpKontrol.Visible := True;
    json_rootdokterK:=SO(mmodpjpsuratkontrol.Text);
    if json_rootdokterK.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdokterK.A['response.list'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdokterK.A['response.list'].O[i];
    lstDpjpKontrol.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdokterK.S['metadata.message'],mtInformation,[mbOK],0);

end;


/// tampil diagnosa
procedure TFSepBpjs.tampilDiagnosa;
var
  get_url_diagnosa: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdiagnosa,nama:ISuperObject;
begin
    mmodiagnosa.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_diagnosa := edtlinkurl.Text+'tampilDiagnosa.php?diagnosa=';
    resp := TMemoryStream.Create;
    try
      idhtpDiagnosa.Get(get_url_diagnosa+edtDIANGNOSA.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmodiagnosa.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDiagnosa.Items.Text := '';
    lstDiagnosa.Visible := True;
    json_rootdiagnosa:=SO(mmodiagnosa.Text);
    if json_rootdiagnosa.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdiagnosa.A['response.diagnosa'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdiagnosa.A['response.diagnosa'].O[i];
    lstDiagnosa.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdiagnosa.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil diagnosa manual
procedure TFSepBpjs.tampilDiagnosaManual;
var
  get_url_diagnosa: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdiagnosa,nama:ISuperObject;
begin
    mmodiagnosa.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_diagnosa := edtlinkurl.Text+'tampilDiagnosa.php?diagnosa=';
    resp := TMemoryStream.Create;
    try
      idhtpDiagnosa.Get(get_url_diagnosa+edtDIAGNOSAMANUAL.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmodiagnosa.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDiagnosaManual.Items.Text := '';
    lstDiagnosaManual.Visible := True;
    json_rootdiagnosa:=SO(mmodiagnosa.Text);
    if json_rootdiagnosa.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdiagnosa.A['response.diagnosa'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdiagnosa.A['response.diagnosa'].O[i];
    lstDiagnosaManual.Items.Add(nama.S['nama']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdiagnosa.S['metadata.message'],mtInformation,[mbOK],0);
end;


/// tampil provinsi
procedure TFSepBpjs.tampilProvinsi;
var
  get_url_provinsi: string;
  respprov: TMemoryStream;
  iprov:Integer;
  json_root,prov:ISuperObject;
begin
    mmoProvinsi.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_provinsi := edtlinkurl.Text+'tampilProvinsi.php';
    respprov := TMemoryStream.Create;
    try
      idhtpProvinsi.Get(get_url_provinsi, respprov);

      respprov.Position := 0; // <-- add this!!
      mmoProvinsi.Lines.LoadFromStream(respprov);
    finally
      respprov.Free;
    end;


    lstPROVINSI.Items.Text := '';
    lstPROVINSI.Visible := True;
    lstKodeProvinsi.Items.Text := '';
    json_root:=SO(mmoProvinsi.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iprov := 0 to json_root.A['response.list'].Length-1 do
    begin
      prov:=json_root.A['response.list'].O[iprov];
      //ShowMessage(nama.S['nama']);
      lstPROVINSI.Items.Add(prov.S['nama']);
      lstKodeProvinsi.Items.Add(prov.S['kode'])
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil provinsi MANUAL
procedure TFSepBpjs.tampilProvinsiManual;
var
  get_url_provinsiManual: string;
  respProvManual: TMemoryStream;
  iProvManual:Integer;
  json_root,namaManual:ISuperObject;
begin
    mmoProvinsi.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_provinsiManual := edtlinkurl.Text+'tampilProvinsi.php';
    respProvManual := TMemoryStream.Create;
    try
      idhtpProvinsi.Get(get_url_provinsiManual, respProvManual);

      respProvManual.Position := 0; // <-- add this!!
      mmoProvinsi.Lines.LoadFromStream(respProvManual);
    finally
      respProvManual.Free;
    end;


    lstPROVINSIMANUAL.Items.Text := '';
    lstPROVINSIMANUAL.Visible := True;
    lstKodeProvinsiManual.Items.Text := '';
    json_root:=SO(mmoProvinsi.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iProvManual := 0 to json_root.A['response.list'].Length-1 do
    begin
      namaManual:=json_root.A['response.list'].O[iProvManual];
      //ShowMessage(nama.S['nama']);
      lstPROVINSIMANUAL.Items.Add(namaManual.S['nama']);
      lstKodeProvinsiManual.Items.Add(namaManual.S['kode'])
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil kab kota
procedure TFSepBpjs.tampilKabKota;
var
  get_url_kabkota: string;
  respprov: TMemoryStream;
  iprov:Integer;
  json_root,kabKota:ISuperObject;
begin
    mmoKOTAKABUPATEN.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_kabkota := edtlinkurl.Text+'tampilkabkota.php?prov=';
    respprov := TMemoryStream.Create;
    try
      idhtpKABKOTA.Get(get_url_kabkota+edtKODEPROVINSI.Text, respprov);

      respprov.Position := 0; // <-- add this!!
      mmoKOTAKABUPATEN.Lines.LoadFromStream(respprov);
    finally
      respprov.Free;
    end;


    lstKABKOTA.Items.Text := '';
    lstKodeKabKota.Items.Text := '';
    lstKABKOTA.Visible := True;
    json_root:=SO(mmoKOTAKABUPATEN.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iprov := 0 to json_root.A['response.list'].Length-1 do
    begin
      kabKota:=json_root.A['response.list'].O[iprov];
      //ShowMessage(nama.S['nama']);
      lstKABKOTA.Items.Add(kabKota.S['nama']);
      lstKodeKabKota.Items.Add(kabKota.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil kab kota manual
procedure TFSepBpjs.tampilKabKotaManual;
var
  get_url_kabkota: string;
  respprov: TMemoryStream;
  iprov:Integer;
  json_root,kabKota:ISuperObject;
begin
    mmoKOTAKABUPATEN.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_kabkota := edtlinkurl.Text+'tampilkabkota.php?prov=';
    respprov := TMemoryStream.Create;
    try
      idhtpKABKOTA.Get(get_url_kabkota+edtKodeProvinsiManual.Text, respprov);

      respprov.Position := 0; // <-- add this!!
      mmoKOTAKABUPATEN.Lines.LoadFromStream(respprov);
    finally
      respprov.Free;
    end;


    lstKABKOTAMANUAL.Items.Text := '';
    lstKodeKabKotaManual.Items.Text := '';
    lstKABKOTAMANUAL.Visible := True;
    json_root:=SO(mmoKOTAKABUPATEN.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iprov := 0 to json_root.A['response.list'].Length-1 do
    begin
      kabKota:=json_root.A['response.list'].O[iprov];
      //ShowMessage(nama.S['nama']);
      lstKABKOTAMANUAL.Items.Add(kabKota.S['nama']);
      lstKodeKabKotaManual.Items.Add(kabKota.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil kecamatan
procedure TFSepBpjs.tampilKecamatan;
var
  get_url_kecamatan: string;
  respkecm: TMemoryStream;
  ikecam:Integer;
  json_root,kecam:ISuperObject;
begin
    mmokecamatan.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_kecamatan := edtlinkurl.Text+'tampilkecamatan.php?kab=';
    respkecm := TMemoryStream.Create;
    try
      idhtpKABKOTA.Get(get_url_kecamatan+edtKODEKABKOTA.Text, respkecm);

      respkecm.Position := 0; // <-- add this!!
      mmokecamatan.Lines.LoadFromStream(respkecm);
    finally
      respkecm.Free;
    end;


    lstkecamatan.Items.Text := '';
    lstkecamatan.Visible := True;
    json_root:=SO(mmokecamatan.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for ikecam := 0 to json_root.A['response.list'].Length-1 do
    begin
      kecam:=json_root.A['response.list'].O[ikecam];
      //ShowMessage(nama.S['nama']);
      lstkecamatan.Items.Add(kecam.S['nama']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
    
end;

/// tampil kecamatan manual
procedure TFSepBpjs.tampilKecamatanManual;
var
  get_url_kecamatan: string;
  respkecm: TMemoryStream;
  ikecam:Integer;
  json_root,kecam:ISuperObject;
begin
    mmokecamatan.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_kecamatan := edtlinkurl.Text+'tampilkecamatan.php?kab=';
    respkecm := TMemoryStream.Create;
    try
      idhtpKABKOTA.Get(get_url_kecamatan+edtKodeKabKotaManual.Text, respkecm);

      respkecm.Position := 0; // <-- add this!!
      mmokecamatan.Lines.LoadFromStream(respkecm);
    finally
      respkecm.Free;
    end;


    lstKECMANUAL.Items.Text := '';
    lstKECMANUAL.Visible := True;
    json_root:=SO(mmokecamatan.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for ikecam := 0 to json_root.A['response.list'].Length-1 do
    begin
      kecam:=json_root.A['response.list'].O[ikecam];
      //ShowMessage(nama.S['nama']);
      lstKECMANUAL.Items.Add(kecam.S['nama']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
    
end;

procedure TFSepBpjs.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFSepBpjs.btnCARIClick(Sender: TObject);
VAR
  get_urlNORUJUKAN: string;
  resp: TMemoryStream;
  json_rootNORUJUKAN:ISuperObject;
begin
if edtNOMER.Text = '' then
begin
  MessageDlg('NOMER MASIH KOSONG...!',mtConfirmation,[mbOK],0);
  edtNOMER.SetFocus;
end
else
  begin
    mmoNoRujukan.Lines.Text := '';
    TIdHTTP.Create(nil);
    /// no rujukan & faskes 1
    if (rbNORUJUKAN.Checked = True) and (cbbFASKES.ItemIndex=0) then
    get_urlNORUJUKAN :=edtlinkurl.Text+'tampilcarirujukannomor_pcare.php?norujukan='
    /// no rujukan & faskes 2
    else if (rbNORUJUKAN.Checked = True) and (cbbFASKES.ItemIndex=1) then
    get_urlNORUJUKAN :=edtlinkurl.Text+'tampilcarirujukannomor_rs.php?norujukan='
    /// no kartu & faskes 1
    else if (rbNOKARTU.Checked = True) and (cbbFASKES.ItemIndex=0) then
    get_urlNORUJUKAN :=edtlinkurl.Text+'tampilcarirujukannokartu_pcare.php?norujukan='
    /// no kartu & faskes 2
    else  if (rbNOKARTU.Checked = True) and (cbbFASKES.ItemIndex=1) then
    get_urlNORUJUKAN :=edtlinkurl.Text+'tampilcarirujukannokartu_rs.php?norujukan='
    /// no sep & fakses 1
    else if (rbNOKARTUMULTI.Checked = True) and (cbbFASKES.ItemIndex=0) then
    get_urlNORUJUKAN :=edtlinkurl.Text+'/tampilcarirujukannosep_pcare.php?norujukan='
    else
    /// no sep & fakses 2
    get_urlNORUJUKAN :=edtlinkurl.Text+'tampilcarirujukannosep_rs.php?norujukan=';

    resp := TMemoryStream.Create;
    try
      idhtpRujukan.Get(get_urlNORUJUKAN+edtNOMER.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmoNoRujukan.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;


    json_rootNORUJUKAN:=SO(mmoNoRujukan.Lines.Text);
    if json_rootNORUJUKAN.S['metaData.code'] = '200'  then
    begin
      mmoCobaDataRujukan.Lines.Add('Diangnosa :'+json_rootNORUJUKAN.S['response.rujukan.diagnosa.kode']+json_rootNORUJUKAN.S['response.rujukan.diagnosa.nama']+
                                   'keluhan :'+json_rootNORUJUKAN.S['response.rujukan.keluhan']+'NO KUNJUNGAN :'+json_rootNORUJUKAN.S['response.rujukan.nokunjungan']+
                                   'Pelayanan :'+json_rootNORUJUKAN.S['response.rujukan.pelayanan.kode']+json_rootNORUJUKAN.S['response.rujukan.pelayanan.nama']+
                                   'Peserta Cob :'+json_rootNORUJUKAN.S['response.rujukan.peserta.nmAsuransi']+json_rootNORUJUKAN.S['response.rujukan.peserta.noAsuransi']+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTAT']+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTMT']+
                                   'hak kelas :'+json_rootNORUJUKAN.S['response.rujukan.peserta.hakKelas.keterangan']+json_rootNORUJUKAN.S['response.rujukan.peserta.hakKelas.kode']+
                                   'informasi :'+json_rootNORUJUKAN.S['response.rujukan.peserta.informasi.dinsos']+json_rootNORUJUKAN.S['response.rujukan.peserta.informasi.noSKTM']+json_rootNORUJUKAN.S['response.rujukan.peserta.informasi.prolanisPRB']+
                                   'jenisPeserta :'+json_rootNORUJUKAN.S['response.rujukan.peserta.jenispeserta.keterangan']+json_rootNORUJUKAN.S['response.rujukan.peserta.jenispeserta.kode']+
                                   'mr :'+json_rootNORUJUKAN.S['response.rujukan.peserta.mr.noMR']+json_rootNORUJUKAN.S['response.rujukan.peserta.mr.noTelepone']+
                                   'Nama :'+json_rootNORUJUKAN.S['response.rujukan.peserta.nama']+
                                   'nik :'+json_rootNORUJUKAN.S['response.rujukan.peserta.nik']+
                                   'no kartu :'+json_rootNORUJUKAN.S['response.rujukan.peserta.noKartu']+
                                   'pisa :'+json_rootNORUJUKAN.S['response.rujukan.peserta.pisa']+
                                   'provUmum :'+json_rootNORUJUKAN.S['response.rujukan.peserta.provUmum.kdProvider']+json_rootNORUJUKAN.S['response.rujukan.peserta.provUmum.nmProvider']+
                                   'sex :'+json_rootNORUJUKAN.S['response.rujukan.peserta.sex']+
                                   'statusPeserta :'+json_rootNORUJUKAN.S['response.rujukan.peserta.statusPeserta.keterangan']+json_rootNORUJUKAN.S['response.rujukan.peserta.statusPeserta.kode']+
                                   'tglCetakKartu :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglCetakKartu']+
                                   'tglLahir :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglLahir']+
                                   'tglTAT :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTAT']+
                                   'tglTMT :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTMT']+
                                   'umur :'+json_rootNORUJUKAN.S['response.rujukan.peserta.umur.umurSaatPelayanan']+json_rootNORUJUKAN.S['response.rujukan.peserta.umur.umurSekarang']+
                                   'poliRujukan :'+json_rootNORUJUKAN.S['response.rujukan.peserta.poliRujukan.kode']+json_rootNORUJUKAN.S['response.rujukan.peserta.poliRujukan.nama']+
                                   'provPerujuk :'+json_rootNORUJUKAN.S['response.rujukan.peserta.provPerujuk.kode']+json_rootNORUJUKAN.S['response.rujukan.peserta.provPerujuk.nama']+
                                   'tglKunjungan :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglKunjungan']
                                  );
        lblNAMAPESERTA.Caption := 'NAMA PESERTA :'+ json_rootNORUJUKAN.S['response.rujukan.peserta.nama'];
        lblNOBPJS.Caption := 'NIK :'+json_rootNORUJUKAN.S['response.rujukan.peserta.nik'];
        lblNOMERBPJS.Caption := 'NO BPJS'+json_rootNORUJUKAN.S['response.rujukan.peserta.noKartu'];
        lblTGLLAHIR.Caption := 'TGL LAHIR : '+json_rootNORUJUKAN.S['response.rujukan.peserta.tglLahir'];
        lblPOLI.Caption := 'POLI/UNIT :'+json_rootNORUJUKAN.S['response.rujukan.pelayanan.nama'];
        lblKELAS.Caption := 'KELAS : '+json_rootNORUJUKAN.S['response.rujukan.peserta.hakKelas.keterangan'];
        lblFASKES.Caption := 'FASKES : ';
        lblTGLCETAK.Caption := 'TGL CETAK :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglKunjungan'];
        lblJENISKARTU.Caption := 'JENIS KARTU : '+json_rootNORUJUKAN.S['response.rujukan.peserta.jenispeserta.keterangan'];

        edtSUBSEPESIALSI.SetFocus;

    end
    else
    begin
      mmoCobaDataRujukan.Lines.Add(json_rootNORUJUKAN.S['metadata.message']);
      MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootNORUJUKAN.S['metadata.message'],mtInformation,[mbOK],0);
      edtNOMER.SetFocus;
    end;
  end;
end;

procedure TFSepBpjs.FormShow(Sender: TObject);
begin
  awal;
end;

procedure TFSepBpjs.edtSUBSEPESIALSIKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilPoli;
    lstpoli.SetFocus;
  end;
end;

procedure TFSepBpjs.lstpoliKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtSUBSEPESIALSI.Text := lstpoli.Items[lstpoli.itemindex];
    lstpoli.Visible := False;
    edtDPJPMELAYANI.SetFocus;
  end;
end;

procedure TFSepBpjs.lstpoliDblClick(Sender: TObject);
begin
edtSUBSEPESIALSI.Text := lstpoli.Items[lstpoli.itemindex];
lstpoli.Visible := False;
edtDPJPMELAYANI.SetFocus;
end;

procedure TFSepBpjs.edtDPJPMELAYANIKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampildoktermelayani;
    lstdpjpmelayani.Visible := True;
    lstdpjpmelayani.SetFocus;
  end;
end;

procedure TFSepBpjs.lstdpjpmelayaniKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDPJPMELAYANI.Text := lstdpjpmelayani.Items[lstdpjpmelayani.Itemindex];
    lstdpjpmelayani.Visible := False;
    edtPPKASALRUJUKAN.SetFocus;
  end;
end;

procedure TFSepBpjs.lstdpjpmelayaniDblClick(Sender: TObject);
begin
  edtDPJPMELAYANI.Text := lstdpjpmelayani.Items[lstdpjpmelayani.Itemindex];
  lstdpjpmelayani.Visible := False;
end;

procedure TFSepBpjs.cbbFASKESSelect(Sender: TObject);
begin
  edtASALRUJUKAN.Text := cbbFASKES.Text;
end;

procedure TFSepBpjs.edtPPKASALRUJUKANKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilPpkRujukan;
    lstasalrujukan.SetFocus;
  end;
end;

procedure TFSepBpjs.lstasalrujukanKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtPPKASALRUJUKAN.Text := lstasalrujukan.Items[lstasalrujukan.itemindex];
    lstasalrujukan.Visible := False;
    dtpTGLRUJUKAN.SetFocus;
  end;
end;

procedure TFSepBpjs.lstasalrujukanDblClick(Sender: TObject);
begin
  edtPPKASALRUJUKAN.Text := lstasalrujukan.Items[lstasalrujukan.itemindex];
  lstasalrujukan.Visible := False;
  dtpTGLRUJUKAN.SetFocus;
end;

procedure TFSepBpjs.edtDPJPPEMBERIKONTROLKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
   Key:=#0;
   tampilDokterSuratKontrol;
   lstDpjpKontrol.SetFocus;
  end;
end;

procedure TFSepBpjs.lstDpjpKontrolKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDPJPPEMBERIKONTROL.Text := lstDpjpKontrol.Items[lstDpjpKontrol.itemindex];
    lstDpjpKontrol.Visible := False;
    dtpTGLSEP.SetFocus;
  end;
end;

procedure TFSepBpjs.lstDpjpKontrolDblClick(Sender: TObject);
begin
  edtDPJPPEMBERIKONTROL.Text := lstDpjpKontrol.Items[lstDpjpKontrol.itemindex];
  lstDpjpKontrol.Visible := False;
  dtpTGLSEP.SetFocus;
end;

procedure TFSepBpjs.edtDIANGNOSAKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilDiagnosa;
    lstDiagnosa.SetFocus;
  end;
end;

procedure TFSepBpjs.lstDiagnosaKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDIANGNOSA.Text := lstDiagnosa.Items[lstDiagnosa.Itemindex];
    lstDiagnosa.Visible := False;
    edtNOTELEPONE.SetFocus;
  end;
end;

procedure TFSepBpjs.lstDiagnosaDblClick(Sender: TObject);
begin
  edtDIANGNOSA.Text := lstDiagnosa.Items[lstDiagnosa.Itemindex];
  lstDiagnosa.Visible := False;
  edtNOTELEPONE.SetFocus;
end;

procedure TFSepBpjs.edtPROVINSIKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilProvinsi;
    lstPROVINSI.SetFocus;
  end;
end;

procedure TFSepBpjs.lstPROVINSIKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtPROVINSI.Text := lstPROVINSI.Items[lstPROVINSI.itemindex];
    edtKODEPROVINSI.Text := lstKodeProvinsi.Items[lstPROVINSI.itemindex];
    lstPROVINSI.Visible := False;
    edtKOTAKAB.SetFocus;
  end;
end;

procedure TFSepBpjs.lstPROVINSIDblClick(Sender: TObject);
begin
  edtPROVINSI.Text := lstPROVINSI.Items[lstPROVINSI.itemindex];
  edtKODEPROVINSI.Text := lstKodeProvinsi.Items[lstPROVINSI.itemindex];
  lstPROVINSI.Visible := False;
end;

procedure TFSepBpjs.edtKOTAKABKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKabKota;
    lstKABKOTA.SetFocus;
  end;
end;

procedure TFSepBpjs.lstKABKOTAKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKOTAKAB.Text := lstKABKOTA.Items[lstKABKOTA.itemindex];
    edtKODEKABKOTA.Text := lstKodeKabKota.Items[lstKABKOTA.itemindex];
    lstKABKOTA.Visible := False;
    edtKECAMATAN.SetFocus;
  end;
end;

procedure TFSepBpjs.lstKABKOTADblClick(Sender: TObject);
begin
  edtKOTAKAB.Text := lstKABKOTA.Items[lstKABKOTA.itemindex];
  edtKODEKABKOTA.Text := lstKodeKabKota.Items[lstKABKOTA.itemindex];
  lstKABKOTA.Visible := False;
end;

procedure TFSepBpjs.edtKECAMATANKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKecamatan;
    lstkecamatan.SetFocus;
  end;
end;

procedure TFSepBpjs.lstkecamatanKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKECAMATAN.Text := lstkecamatan.Items[lstkecamatan.itemindex];
    lstkecamatan.Visible := False;
    mmoKETERANGAN.SetFocus;
  end;
end;

procedure TFSepBpjs.lstkecamatanDblClick(Sender: TObject);
begin
  edtKECAMATAN.Text := lstkecamatan.Items[lstkecamatan.itemindex];
  lstkecamatan.Visible := False;
  mmoCATATAN.SetFocus;
end;


procedure TFSepBpjs.cbbPELAYANANRJKMANUALSelect(Sender: TObject);
begin
if cbbPELAYANANRJKMANUAL.ItemIndex = 0 then
    edtSUBSPEALISMANUAL.Text := 'INSTALASI GAWAT DARURAT'
  else
    edtSUBSPEALISMANUAL.Text := '';
end;

procedure TFSepBpjs.btnCARIMANUALClick(Sender: TObject);
VAR
  get_url: string;
  resp: TMemoryStream;
  json_root:ISuperObject;
begin
IF (edtNOMERRUJUKANMANUAL.Text='') then
  MessageDlg('Nomer Belum Di Isi....!',mtInformation,[mbCancel],0)
else
  begin
    mmoPencarianSep.Lines.Text := '';
    TIdHTTP.Create(nil);
    if rbBPJSRJKMANUAL.Checked = True then
    get_url :=edtlinkurl.Text+'tampilPencarianBpjs.php?noBpjs='
    else
    get_url := edtlinkurl.Text+'tampilPencarianNik.php?noBpjs=';
    resp := TMemoryStream.Create;
    try
      idhtseppencarian.Get(get_url+edtNOMERRUJUKANMANUAL.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmoPencarianSep.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    json_root:=SO(mmoPencarianSep.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
      lblNAMAPESERTAMANUAL.Caption := json_root.S['response.peserta.nama'];
      lblNOBPJSMANUAL.Caption :=  json_root.S['response.peserta.noKartu'];
      lblNOMERBPJSMANUAL.Caption := json_root.S['response.peserta.nik'];
      //edtJENISKELAMIN.Text := json_root.S['response.peserta.sex'];
      lblPESERTAMANUAL.Caption := json_root.S['response.peserta.statusPeserta.keterangan'];
      lblKELASMANUAL.Caption := json_root.S['response.peserta.hakKelas.keterangan'];
      lblTGLLAHIRMANUAL.Caption := json_root.S['response.peserta.tglLahir'];
      lblPEKERJAANMANUAL.Caption := json_root.S['response.peserta.umur.umurSekarang'];
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
  end
end;

procedure TFSepBpjs.cbbFASKESKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtNOMER.SetFocus;
  end;
end;

procedure TFSepBpjs.edtNOMERKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtNOMER.SetFocus;
    btnCari.SetFocus;
  end;
end;

procedure TFSepBpjs.dtpTGLRUJUKANKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 then
  begin
    Key:=#0;
    edtNORUJUKAN.SetFocus;
  end
end;

procedure TFSepBpjs.edtNORUJUKANKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 then
  begin
    Key:=#0;
    edtNOSURATKONTROL.SetFocus;
  end
end;

procedure TFSepBpjs.edtNOSURATKONTROLKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key=#13 then
  begin
    Key:=#0;
    edtDPJPPEMBERIKONTROL.SetFocus;
  end
end;

procedure TFSepBpjs.dtpTGLSEPKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    edtNORM.SetFocus;
  end;
end;

procedure TFSepBpjs.edtNORMKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    edtDIANGNOSA.SetFocus;
  end;
end;

procedure TFSepBpjs.edtNOTELEPONEKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    mmoCATATAN.SetFocus;
  end;
end;

procedure TFSepBpjs.mmoCATATANKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    cbbSTATUSKECELAKAAN.SetFocus;
  end;
end;

procedure TFSepBpjs.cbbSTATUSKECELAKAANSelect(Sender: TObject);
begin
if cbbSTATUSKECELAKAAN.Text = 'BUKAN KECELAKAAN' then
    grpStatusKecelakaan.Visible := False
else
begin
   grpStatusKecelakaan.Visible := True;
   dtpTGLKEJADIAN.SetFocus;
end;
end;

procedure TFSepBpjs.dtpTGLKEJADIANKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    edtPROVINSI.SetFocus;
  end;
end;

procedure TFSepBpjs.btnBARUClick(Sender: TObject);
begin
   awal;
end;

procedure TFSepBpjs.btnBARUMANUALClick(Sender: TObject);
begin
  awal;
end;

procedure TFSepBpjs.edtPPKASALPESERTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if (edtPPKASALPESERTA.Text='') then
    begin
      MessageDlg('ASAL RUJUKAN BELUM DI ISI...!',mtInformation,[mbOK],0);
      edtPPKASALPESERTA.SetFocus;
    end
    else
    begin
      tampilPpkRujukanManual;
      lstPPKASALPESERTAMANUAL.SetFocus;
    end
  end;
end;

procedure TFSepBpjs.lstPPKASALPESERTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    edtPPKASALPESERTA.Text := lstPPKASALPESERTAMANUAL.Items[lstPPKASALPESERTAMANUAL.itemindex];
    lstPPKASALPESERTAMANUAL.Visible := False;
    edtNOMERRUJUKANMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.edtNOMERRUJUKANMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    rbBPJSRJKMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.chkEXECUTIVEMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtSUBSPEALISMANUAL.SetFocus
  end;
end;

procedure TFSepBpjs.edtSUBSPEALISMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDPJPMANUAL.SetFocus
  end;
end;

procedure TFSepBpjs.edtDPJPMANUALKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    //dtpTGLSEPMANUAL.SetFocus;
    tampildokterManual;
    lstDPJPMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.dtpTGLSEPMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtNORMMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.edtNORMMANUALKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    chkPESERTAMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.chkPESERTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDIAGNOSAMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.edtDIAGNOSAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if edtDIAGNOSAMANUAL.Text = '' then
      MessageDlg('Data Diagnosa Harus Di Isi....!',mtInformation,[mbOK],0)
    else
    begin
    tampilDiagnosaManual;
    lstDiagnosaManual.SetFocus;
    //edtNOTELEPONEMANUAL.SetFocus;
    end;
  end;
end;

procedure TFSepBpjs.edtNOTELEPONEMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    mmoCATATANMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.mmoCATATANMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    cbbSTATUSKECELAKAANMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.cbbSTATUSKECELAKAANMANUALSelect(Sender: TObject);
begin
if cbbSTATUSKECELAKAANMANUAL.Text = 'BUKAN KECELAKAAN' then
  begin
    grpSTATUSKECELAKAANMANUAL.Visible := False;
  end
  else
  begin
    grpSTATUSKECELAKAANMANUAL.Visible := True;
    dtpTGLKEJADIANMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.lstPROVINSIMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
     edtPROVINSIMANUAL.Text := lstPROVINSIMANUAL.Items[lstPROVINSIMANUAL.itemindex];
     edtKodeProvinsiManual.Text := lstKodeProvinsiManual.Items[lstPROVINSIMANUAL.itemindex];
     lstPROVINSIMANUAL.Visible := False;
     edtKABKOTAMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.lstPROVINSIMANUALDblClick(Sender: TObject);
begin
  edtPROVINSIMANUAL.Text := lstPROVINSIMANUAL.Items[lstPROVINSIMANUAL.itemindex];
  lstPROVINSIMANUAL.Visible := False;
  edtKABKOTAMANUAL.SetFocus;
end;

procedure TFSepBpjs.lstKABKOTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKABKOTAMANUAL.Text := lstKABKOTAMANUAL.Items[lstKABKOTAMANUAL.itemindex];
    edtKodeKabKotaManual.Text := lstKodeKabKotaManual.Items[lstKABKOTAMANUAL.itemindex];
    lstKABKOTAMANUAL.Visible := False;
    edtKECAMMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.edtPROVINSIMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilProvinsiManual;
    lstPROVINSIMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.edtKABKOTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKabKotaManual;
    lstKABKOTAMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.lstKABKOTAMANUALDblClick(Sender: TObject);
begin
  edtKABKOTAMANUAL.Text := lstKABKOTAMANUAL.Items[lstKABKOTAMANUAL.itemindex];
  edtKodeKabKotaManual.Text := lstKodeKabKotaManual.Items[lstKABKOTAMANUAL.itemindex];
  lstKABKOTAMANUAL.Visible := False;
  edtKECAMMANUAL.SetFocus;
end;

procedure TFSepBpjs.edtKECAMMANUALKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKecamatanManual;
    lstKECMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.lstKECMANUALKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKECAMMANUAL.Text := lstKECMANUAL.Items[lstKECMANUAL.itemindex];
    lstKECMANUAL.Visible := False;
    mmoCATATANMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.lstDPJPMANUALKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    edtDPJPMANUAL.Text := lstDPJPMANUAL.Items[lstDPJPMANUAL.itemindex];
    lstDPJPMANUAL.Visible := False;
    dtpTGLSEPMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.lstDiagnosaManualKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    edtDIAGNOSAMANUAL.Text := lstDiagnosaManual.Items[lstDiagnosaManual.Itemindex];
    lstDiagnosaManual.Visible := False;
    edtNOTELEPONEMANUAL.SetFocus;
  end;
end;

procedure TFSepBpjs.lstDiagnosaManualDblClick(Sender: TObject);
begin
  edtDIAGNOSAMANUAL.Text := lstDiagnosaManual.Items[lstDiagnosaManual.Itemindex];
  lstDiagnosaManual.Visible := False;
  edtNOTELEPONEMANUAL.SetFocus;
end;

end.

