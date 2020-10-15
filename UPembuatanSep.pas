unit UPembuatanSep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls,cUtils,cHash, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,SuperObject, Menus;

type
  TFPembuatanSep = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    pgcPembuatanSep: TPageControl;
    tsRujukan: TTabSheet;
    tsRujukanManualIgd: TTabSheet;
    pnlKeluar: TPanel;
    lblTGLSEP: TLabel;
    lblASALRUJUKAN: TLabel;
    lblNORUJUKAN: TLabel;
    dtpTGLSEP: TDateTimePicker;
    cbbASALRUJUKAN: TComboBox;
    edtNORUJUKAN: TEdit;
    btnCari: TButton;
    btnNoKartu: TButton;
    tsResponServer: TTabSheet;
    DisplayBody: TMemo;
    mmoSignature: TMemo;
    btnTampil: TButton;
    edtLink: TEdit;
    edtNoBpjs: TEdit;
    idhtp1: TIdHTTP;
    mmoMLog: TMemo;
    mm1: TMainMenu;
    ESTBRIDING1: TMenuItem;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure ESTBRIDING1Click(Sender: TObject);
  private
    { Private declarations }
     procedure createSIGNATURE;
  public
    { Public declarations }
  end;

var
  FPembuatanSep: TFPembuatanSep;
implementation

{$R *.dfm}
uses DateUtils,UDm,Math,uLkJSON,UBpjs;

function UNIXTimeToDateTimeFAST(UnixTime: LongWord): TDateTime;
begin
Result := (UnixTime / 86400) + 25569;
end;

function DateTimeToUNIXTimeFAST(DelphiTime : TDateTime): LongWord;
begin
Result := Round((DelphiTime - 25569) * 86400);
end;

procedure TFPembuatanSep.createSIGNATURE;
var
  sValue:String;
  sTime:cardinal;
  jam:TDateTime;
  UTC: TSystemTime;
begin
  DisplayBody.Clear;
  mmoSignature.Lines.Clear;
  mmoSignature.Clear;
  GetSystemTime(UTC);
  Self.Caption := 'BRIDGING BPJS - UTC: '+DateTimeToStr(EncodeDateTime(utc.wYear,utc.wMonth,utc.wDay,utc.wHour,utc.wMinute,utc.wSecond,utc.wMilliseconds));
  sTime:=DateTimeToUNIXTimeFAST(EncodeDateTime(utc.wYear,utc.wMonth,utc.wDay,utc.wHour,utc.wMinute,utc.wSecond,utc.wMilliseconds));
  sValue:={DM.qryt_koneksi_bpjs['cons_ID']}'10462'+'&'+ FloatToStr(sTime);
  mmoSignature.Lines.Add('Content-type: application/json');
  mmoSignature.Lines.Add('X-Cons-id: '+'isiconid'{DM.qryt_koneksi_bpjs['cons_ID']'});
  mmoSignature.Lines.Add('X-Timestamp: '+ IntToStr(sTime));
  mmoSignature.Lines.Add('X-Signature: '+MIMEBase64Encode(SHA256DigestAsString(CalcHMAC_SHA256('isisignature',sValue))));
end;

procedure TFPembuatanSep.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFPembuatanSep.btnTampilClick(Sender: TObject);
var
  js: TlkJSONobject;
  jsonresponse:String;
  urlTambah:String;

  sElemen: string;
  FmtStngs: TFormatSettings;
begin
  createSIGNATURE;

  if (edtNoBpjs.Text='') then
    MessageDlg('Nomer Bpjs Masih Kosong...!',mtInformation,[mbOK],0);
  try
     edtLink.Text := 'https://new-api.bpjs-kesehatan.go.id:8080/new-vclaim-rest/vclaim/';
    with idhtp1 do
    begin

      {urlTambah := 'noKartu/"'+edtNoBpjs.Text+'"/tglSEP/"'+FormatDateTime('yyyy-mm-dd',Now)+'"';
      jsonresponse := idhtp1.Get(edtLink.Text+urlTambah);
      js := TlkJSON.ParseText(jsonresponse) as TlkJSONobject;
      with DisplayBody.Lines do
      begin
       if js.getInt('metaData.code')= 200 then
       begin
          Add(Format('No. Kartu BPJS: %s',
                [js.getString('response.peserta.noKartu')]));
       end
       else
        begin
          Add(Format('Error: %s', [js.getString('metadata.message')]));
        end;
      end;}
    end;
  except
     on E: Exception do
    begin
      mmoMLog.Lines.Add(E.ClassName + ': ' + e.Message);
    end;
  end;
end;
procedure TFPembuatanSep.ESTBRIDING1Click(Sender: TObject);
begin
  FBpjs.Show;
end;

end.

