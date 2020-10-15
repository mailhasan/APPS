unit UBpjs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Grids, DB, DBClient, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxContainer, cxEdit, cxListBox,
  Menus;

type
  TFBpjs = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    pgcBpjs: TPageControl;
    tsPencarianDataPasien: TTabSheet;
    tsJson: TTabSheet;
    mmoPencarianSep: TMemo;
    grpPencarianBerdasarkanNomer: TGroupBox;
    rbNoBpjs: TRadioButton;
    rbNONIK: TRadioButton;
    edtNomer: TEdit;
    btnTampil: TButton;
    idhtp1: TIdHTTP;
    pnlTengah1: TPanel;
    grpDataPasien: TGroupBox;
    lblNAMAPASIEN: TLabel;
    lblNOMERBPJS: TLabel;
    lblJenisKelamin: TLabel;
    lblSTATUSPESERTA: TLabel;
    lblHAKKELAS: TLabel;
    lblTGLLAHIR: TLabel;
    lblTANGGAL: TLabel;
    edtNAMAPASIEN: TEdit;
    edtNOMERBPJS: TEdit;
    edtNOMERNIK: TEdit;
    edtJENISKELAMIN: TEdit;
    edtSTATUSPESERTA: TEdit;
    edtHAKKELAS: TEdit;
    edtTGLLAHIR: TEdit;
    edtUMUR: TEdit;
    edtTANGGAL: TEdit;
    grpINPUTDATASEP: TGroupBox;
    grpPENCARIANDIAGNOSA: TGroupBox;
    edtPENCARIANDIAGNOSA: TEdit;
    mmoPencarianDiagnosa: TMemo;
    idhtpDiagnosa: TIdHTTP;
    btnCARIDIAGNOSA: TButton;
    idhtpPoli: TIdHTTP;
    mmoPencarianPoli: TMemo;
    grpPencarianPoli: TGroupBox;
    edtPencarianPoli: TEdit;
    btnCariPoli: TButton;
    lblPOLI: TLabel;
    lblPOLIEXKUTIVE: TLabel;
    edtPOLI: TEdit;
    cbbEXCUTIVE: TComboBox;
    lblPENCARIAN: TLabel;
    lblDIAGNOSAAWAL: TLabel;
    edtDIAGNOSAAWAL: TEdit;
    lblPENCARIANDIAGNOSA: TLabel;
    grpINPUTDATASEP1: TGroupBox;
    lblTGLSEP: TLabel;
    dtpTGLSEP: TDateTimePicker;
    lblPPKPELAYANAN: TLabel;
    edtPPKPELAYANAN: TEdit;
    lblJENISPELAYANAN: TLabel;
    cbbJENISPELAYANAN: TComboBox;
    lblKELAS: TLabel;
    cbbKELAS: TComboBox;
    lblNORM: TLabel;
    edtNORM: TEdit;
    lblCOB: TLabel;
    lblKATARAK: TLabel;
    cbbCOB: TComboBox;
    cbbKATARAK: TComboBox;
    grpJAMINAN: TGroupBox;
    lblLAKALANTAS: TLabel;
    lblPENJAMIN: TLabel;
    lblTGLKEJADIAN: TLabel;
    lblKETARANGAN: TLabel;
    cbbLAKALANTAS: TComboBox;
    chkJASARAHARJA: TCheckBox;
    chkBPJSKETENAGAKERJAAN: TCheckBox;
    chkTASPEN: TCheckBox;
    chkASABRI: TCheckBox;
    dtpTGLKEJADIAN: TDateTimePicker;
    mmoKETERANGANJAMINAN: TMemo;
    grpSUPELENSI: TGroupBox;
    grpRUJUKAN: TGroupBox;
    lblASALRUJUKAN: TLabel;
    lblTGLRUJUKAN: TLabel;
    lblNORUJUKAN: TLabel;
    lblPPKRUJUKAN: TLabel;
    cbbASALRUJUKAN: TComboBox;
    dtpTGLRUJUKAN: TDateTimePicker;
    edtNORUJUKAN: TEdit;
    edtPPKRUJUKAN: TEdit;
    lblCATATAN: TLabel;
    mmoCATATAN: TMemo;
    lblSUPLESI: TLabel;
    cbbSUPLESI: TComboBox;
    lblNOSUPLESI: TLabel;
    lblLOKASILAKA: TLabel;
    edtNOSUPLESI: TEdit;
    idhtpPpk: TIdHTTP;
    mmoPpkPelayanan: TMemo;
    btnCariPPK: TButton;
    lblPENCARIANPPKRUJUKAN: TLabel;
    edtPencarianPpkRujukan: TEdit;
    edtKODEPOLI: TEdit;
    edtKODEPPKRUJUKAN: TEdit;
    lblPROVINSI: TLabel;
    lblKABUPATEN: TLabel;
    lblKECAMATAN: TLabel;
    edtPROVINSI: TEdit;
    edtKABUPATEN: TEdit;
    edtKECAMATAN: TEdit;
    edtKODEPROVINSI: TEdit;
    edtKODEKABUPATEN: TEdit;
    edtKODEKECAMATAN: TEdit;
    idhtpPROVINSI: TIdHTTP;
    mmoProvinsi: TMemo;
    lstDiagnosa: TcxListBox;
    lstPencarianPoli: TcxListBox;
    lstKodePoli: TcxListBox;
    lstPPKRUJUKAN: TListBox;
    lstKODEPPK: TListBox;
    btnBARU: TButton;
    btnSIMPAN: TButton;
    btnPRINT: TButton;
    btnUBAH: TButton;
    lstPROVINSI: TListBox;
    lstkodeprovinsi: TListBox;
    mmBriding: TMainMenu;
    RUJUKAN1: TMenuItem;
    procedure btnTampilClick(Sender: TObject);

    procedure btnCARIDIAGNOSAClick(Sender: TObject);
    procedure edtPENCARIANDIAGNOSAKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariPoliClick(Sender: TObject);
    procedure btnCariPPKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPENCARIANDIAGNOSAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdPENCARIANDIAGNOSAKeyPress(Sender: TObject;
      var Key: Char);
    procedure strngrdPENCARIANDIAGNOSADblClick(Sender: TObject);
    procedure strngrdPENCARIANDIAGNOSASelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure edtPencarianPoliKeyPress(Sender: TObject; var Key: Char);
    procedure edtPencarianPoliKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdPencarianPoliKeyPress(Sender: TObject; var Key: Char);
    procedure edtPencarianPpkRujukanKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtNomerKeyPress(Sender: TObject; var Key: Char);
    procedure edtPROVINSIKeyPress(Sender: TObject; var Key: Char);
    procedure lstDiagnosaClick(Sender: TObject);
    procedure lstDiagnosaKeyPress(Sender: TObject; var Key: Char);
    procedure lstPencarianPoliClick(Sender: TObject);
    procedure lstPencarianPoliDblClick(Sender: TObject);
    procedure lstPencarianPoliKeyPress(Sender: TObject; var Key: Char);
    procedure lstPPKRUJUKANClick(Sender: TObject);
    procedure lstPPKRUJUKANKeyPress(Sender: TObject; var Key: Char);
    procedure lstPPKRUJUKANDblClick(Sender: TObject);
    procedure btnBARUClick(Sender: TObject);
    procedure RUJUKAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
  end;

var
  FBpjs: TFBpjs;

implementation

{$R *.dfm}
USES superobject, Math, uLkJSON,USepBpjs;

procedure TFBpjs.awal;
begin
  rbNoBpjs.Checked := True;
  edtNomer.Text := '';

  edtNAMAPASIEN.Text := '';
  edtNOMERBPJS.Text := '';
  edtNOMERNIK.Clear;
  edtJENISKELAMIN.Clear;
  edtHAKKELAS.Clear;
  edtSTATUSPESERTA.Clear;
  edtTGLLAHIR.Clear;
  edtUMUR.Clear;
  edtTANGGAL.Clear;

  dtpTGLSEP.DateTime := Now;
  edtPPKPELAYANAN.Clear;
  cbbJENISPELAYANAN.Text := '';
  cbbKELAS.Text := '';
  edtNORM.Text := '';

  cbbASALRUJUKAN.Text := '';
  dtpTGLRUJUKAN.DateTime := Now;
  edtNORUJUKAN.Text := '';
  edtPencarianPpkRujukan.Text := '';
  edtPPKRUJUKAN.Text := '';
  edtKODEPPKRUJUKAN.Text := '';

  mmoCATATAN.Text := '';

  edtPENCARIANDIAGNOSA.Text := '';
  edtDIAGNOSAAWAL.Text := '';

  cbbCOB.Text := '';
  cbbKATARAK.Text := '';

  edtPencarianPoli.Text := '';
  edtPOLI.Text := '';
  edtKODEPOLI.Text := '';
  cbbEXCUTIVE.Text := '';
  
end;

procedure TFBpjs.btnTampilClick(Sender: TObject);
VAR
  get_url: string;
  resp: TMemoryStream;
  json_root:ISuperObject;
begin
IF (edtNomer.Text='') then
  MessageDlg('Nomer Belum Di Isi....!',mtInformation,[mbCancel],0)
else
  begin
    mmoPencarianSep.Lines.Text := '';
    TIdHTTP.Create(nil);
    if rbNoBpjs.Checked = True then
    get_url :='http://localhost:8080/BPJS/tampilPencarianBpjs.php?noBpjs='
    else
    get_url := 'http://localhost:8080/BPJS/tampilPencarianNik.php?noBpjs=';
    resp := TMemoryStream.Create;
    try
      idhtp1.Get(get_url+edtNomer.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmoPencarianSep.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    json_root:=SO(mmoPencarianSep.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
      edtNAMAPASIEN.Text := json_root.S['response.peserta.nama'];
      edtNOMERBPJS.Text :=  json_root.S['response.peserta.noKartu'];
      edtNOMERNIK.Text := json_root.S['response.peserta.nik'];
      edtJENISKELAMIN.Text := json_root.S['response.peserta.sex'];
      edtSTATUSPESERTA.Text := json_root.S['response.peserta.statusPeserta.keterangan'];
      edtHAKKELAS.Text := json_root.S['response.peserta.hakKelas.keterangan'];
      edtTGLLAHIR.Text := json_root.S['response.peserta.tglLahir'];
      edtUMUR.Text := json_root.S['response.peserta.umur.umurSekarang'];
      edtTANGGAL.Text := json_root.S['response.peserta.tglCetakKartu']+json_root.S['response.peserta.tglTAT']+json_root.S['response.peserta.tglTMT'];
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
  end

end;



procedure TFBpjs.btnCARIDIAGNOSAClick(Sender: TObject);
var
  get_url_diagnosa: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_root,nama:ISuperObject;
begin
    mmoPencarianDiagnosa.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_diagnosa := 'http://localhost:8080/bpjs/tampilDiagnosa.php?diagnosa=';
    resp := TMemoryStream.Create;
    try
      idhtpDiagnosa.Get(get_url_diagnosa+edtPENCARIANDIAGNOSA.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmoPencarianDiagnosa.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDiagnosa.Items.Text:= '';
     lstDiagnosa.Visible := True;
    json_root:=SO(mmoPencarianDiagnosa.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    j := 1;
    for i := 0 to json_root.A['response.diagnosa'].Length-1 do
    begin
      nama:=json_root.A['response.diagnosa'].O[i];
      
      lstDiagnosa.Items.Add(nama.S['nama']);

    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);

end;

procedure TFBpjs.edtPENCARIANDIAGNOSAKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
  Key:=#0;
  if (edtPENCARIANDIAGNOSA.MaxLength<0)then
    MessageDlg('pencarian harus lebih dari 3 huruf',mtInformation,[mbCancel],0)
  else
  begin
    btnCARIDIAGNOSA.Click;
    lstDiagnosa.SetFocus;
  end;
end;
end;

procedure TFBpjs.btnCariPoliClick(Sender: TObject);
var
  get_url_poli: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootpoli,nama:ISuperObject;
begin
    mmoPencarianPoli.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_poli := 'http://localhost:8080/BPJS/tampilPoli.php?poli=';
    resp := TMemoryStream.Create;
    try
      idhtpPoli.Get(get_url_poli+edtPencarianPoli.Text, resp);

      resp.Position := 0; // <-- add this!!
      mmoPencarianPoli.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstPencarianPoli.Items.Text := '';
    lstPencarianPoli.Visible := True;
    lstKodePoli.Items.Text := '';
    json_rootpoli:=SO(mmoPencarianPoli.Text);
    if json_rootpoli.I['metaData.code'] = 200  then
    begin
    //j := 1;
    {for i := 0 to json_rootpoli.A['response.poli'].Length-1 do
    begin
      nama:=json_rootpoli.A['response.poli'].O[i];
      //ShowMessage(nama.S['nama']);
      strngrdPencarianPoli.Cells[0,j] := nama.S['nama'];
      strngrdPencarianPoli.Cells[1,j] := nama.S['kode'];
      j := j+1;
    end;   }

    for i := 0 to json_rootpoli.A['response.poli'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootpoli.A['response.poli'].O[i];
    lstPencarianPoli.Items.Add(nama.S['nama']);
    lstKodePoli.Items.Add(nama.S['kode']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootpoli.S['metadata.message'],mtInformation,[mbOK],0);
end;

procedure TFBpjs.btnCariPPKClick(Sender: TObject);
var
  get_url_ppkR,isiAsalRujukan: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_root,nama:ISuperObject;
begin
    mmoPpkPelayanan.Lines.Text := '';
    if cbbASALRUJUKAN.Text = 'FASKES 1' then
         isiAsalRujukan := '1'
      else
        isiAsalRujukan := '2';
    TIdHTTP.Create(nil);
    get_url_ppkR := 'http://localhost:8080/BPJS/tampilPpkRujukan.php?ppkrujukan=';
    resp := TMemoryStream.Create;
    try
      //idhtpPpk.Get(get_url_ppkR+edtPencarianPpkRujukan.Text+'+&faskes1="'+isiAsalRujukan+'"', resp);
      idhtpPpk.Get(get_url_ppkR+edtPencarianPpkRujukan.Text+'&faskes='+isiAsalRujukan+'', resp);

      resp.Position := 0; // <-- add this!!
      mmoPpkPelayanan.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstPPKRUJUKAN.Visible := True;
    lstPPKRUJUKAN.Items.Text := '';
    json_root:=SO(mmoPpkPelayanan.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    j := 1;
    for i := 0 to json_root.A['response.faskes'].Length-1 do
    begin
      nama:=json_root.A['response.faskes'].O[i];
      //ShowMessage(nama.S['nama']);
      lstPPKRUJUKAN.Items.Add(nama.S['nama']);
      lstKODEPPK.Items.Add(nama.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
    
end;

procedure TFBpjs.FormShow(Sender: TObject);
begin
 awal;
end;

procedure TFBpjs.edtPENCARIANDIAGNOSAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_DOWN then
  lstDiagnosa.SetFocus;
end;

procedure TFBpjs.strngrdPENCARIANDIAGNOSAKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    lstDiagnosa.Visible := False;
    edtPENCARIANDIAGNOSA.Text := '';
  end;
end;

procedure TFBpjs.strngrdPENCARIANDIAGNOSADblClick(Sender: TObject);
begin
  lstDiagnosa.Visible := False;
  edtPENCARIANDIAGNOSA.Text := '';
end;

procedure TFBpjs.strngrdPENCARIANDIAGNOSASelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  edtDIAGNOSAAWAL.Text := lstDiagnosa.Items.Text;
end;

procedure TFBpjs.edtPencarianPoliKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
   Key:=#0;
   if (edtPencarianPoli.Text='') then
    MessageDlg('Pencarian Belum Di Isi...!',mtInformation,[mbCancel],0)
   else
   begin
     btnCariPoli.Click;
     lstPencarianPoli.SetFocus;
   end;
end;
end;

procedure TFBpjs.edtPencarianPoliKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_DOWN then
  lstPencarianPoli.SetFocus;
end;

procedure TFBpjs.strngrdPencarianPoliKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    lstPencarianPoli.Visible := False;
    edtPencarianPoli.Text := '';
  end;
end;

procedure TFBpjs.edtPencarianPpkRujukanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
   Key:=#0;
   if (edtPencarianPpkRujukan.Text='') then
    MessageDlg('Pencarian Belum Di Isi...!',mtInformation,[mbCancel],0)
   else
   begin
     btnCariPPK.Click;
     lstPPKRUJUKAN.SetFocus;
   end;
end;
end;

procedure TFBpjs.edtNomerKeyPress(Sender: TObject; var Key: Char);
begin
IF Key=#13 then
begin
  Key:=#0;
  btnTampil.Click;
end;
end;

procedure TFBpjs.edtPROVINSIKeyPress(Sender: TObject; var Key: Char);
var
  get_url_provinsi: string;
  respprov: TMemoryStream;
  iprov,jprov:Integer;
  json_root,prov:ISuperObject;
begin
if Key=#13 then
  begin
    mmoProvinsi.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_provinsi := 'http://localhost:8080/bpjs/tampilProvinsi.php';
    respprov := TMemoryStream.Create;
    try
      idhtpPROVINSI.Get(get_url_provinsi, respprov);

      respprov.Position := 0; // <-- add this!!
      mmoProvinsi.Lines.LoadFromStream(respprov);
    finally
      respprov.Free;
    end;


    lstPROVINSI.Items.Text := '';
    lstPROVINSI.Visible := True;
    json_root:=SO(mmoProvinsi.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    jprov := 1;
    for iprov := 0 to json_root.A['response.list'].Length-1 do
    begin
      prov:=json_root.A['response.list'].O[iprov];
      //ShowMessage(nama.S['nama']);
      lstPROVINSI.Items.Add(prov.S['nama']);
      lstkodeprovinsi.Items.Add(prov.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
  end;
end;

procedure TFBpjs.lstDiagnosaClick(Sender: TObject);
begin
if lstDiagnosa.ItemIndex >= 1 then
  edtDIAGNOSAAWAL.Text := lstDiagnosa.Items[lstDiagnosa.ItemIndex]
else
  MessageDlg('Data Masih Kosong...!',mtWarning,[mbOK],0);
end;

procedure TFBpjs.lstDiagnosaKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    lstDiagnosa.Visible := False;
  end;
end;

procedure TFBpjs.lstPencarianPoliClick(Sender: TObject);
begin
  edtPOLI.Text := lstPencarianPoli.Items[lstPencarianPoli.itemindex];
  edtKODEPOLI.Text := lstKodePoli.Items[lstPencarianPoli.itemindex];
end;

procedure TFBpjs.lstPencarianPoliDblClick(Sender: TObject);
begin
  lstPencarianPoli.Visible := False;
end;

procedure TFBpjs.lstPencarianPoliKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    lstPencarianPoli.Visible := False;
  end;
end;

procedure TFBpjs.lstPPKRUJUKANClick(Sender: TObject);
begin
  edtPPKRUJUKAN.Text := lstPPKRUJUKAN.Items[lstPPKRUJUKAN.itemindex];
  edtKODEPPKRUJUKAN.Text := lstKODEPPK.Items[lstPPKRUJUKAN.itemindex];
end;

procedure TFBpjs.lstPPKRUJUKANKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    lstPPKRUJUKAN.Visible := False;
  end;
end;

procedure TFBpjs.lstPPKRUJUKANDblClick(Sender: TObject);
begin
  lstPPKRUJUKAN.Visible := False;
end;

procedure TFBpjs.btnBARUClick(Sender: TObject);
begin
  awal;
end;

procedure TFBpjs.RUJUKAN1Click(Sender: TObject);
begin
FSepBpjs.Show;
end;

end.

