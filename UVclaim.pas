unit UVclaim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxNavBar2Painter, dxNavBar, cxClasses, dxNavBarBase,
  dxNavBarCollns, dxSkinsForm, ExtCtrls, ActnList, StdCtrls;

type
  TFvclaim = class(TForm)
    dxskncntrlr1: TdxSkinController;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlKiri: TPanel;
    dxnvbrVclaim: TdxNavBar;
    dxnvbrgrpDashboard: TdxNavBarGroup;
    dxnvbrgrpSep: TdxNavBarGroup;
    dxnvbrgrpRujukan: TdxNavBarGroup;
    dxnvbrgrpjaminan: TdxNavBarGroup;
    dxnvbrgrplaporan: TdxNavBarGroup;
    dxnvbrtmVclaimItem1: TdxNavBarItem;
    dxnvbrtmVclaimItem2: TdxNavBarItem;
    dxnvbrtmVclaimItem3: TdxNavBarItem;
    actlstVclaim: TActionList;
    actPembuatanSep: TAction;
    actFormRujukan: TAction;
    procedure actPembuatanSepExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fvclaim: TFvclaim;
  TS, Sig: string;

implementation

{$R *.dfm}

uses UPembuatanSep,IdHTTP, IdException, IdStack, uLkJSON;

procedure TFvclaim.actPembuatanSepExecute(Sender: TObject);
var
  sep: TFPembuatanSep;
begin
  sep := TFPembuatanSep.Create(nil);
  sep.Parent := pnlTengah;
  sep.Align := alClient;
  sep.Show;
end;

end.
