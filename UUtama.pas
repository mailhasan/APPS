unit UUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFbridgingBpjs = class(TForm)
    mmBpjs: TMainMenu;
    vclaim1: TMenuItem;
    procedure vclaim1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbridgingBpjs: TFbridgingBpjs;

implementation

{$R *.dfm}
uses UVclaim;

procedure TFbridgingBpjs.vclaim1Click(Sender: TObject);
begin
  Fvclaim.Show;
end;

end.
