program PUtama;

uses
  Forms,
  UUtama in 'UUtama.pas' {FbridgingBpjs},
  UVclaim in 'UVclaim.pas' {Fvclaim},
  UPembuatanSep in 'UPembuatanSep.pas' {FPembuatanSep},
  UDm in 'UDm.pas' {DM: TDataModule},
  UBpjs in 'UBpjs.pas' {FBpjs},
  USepBpjs in 'USepBpjs.pas' {FSepBpjs};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFSepBpjs, FSepBpjs);
  Application.CreateForm(TFBpjs, FBpjs);
  Application.CreateForm(TFPembuatanSep, FPembuatanSep);
  Application.CreateForm(TFvclaim, Fvclaim);
  Application.CreateForm(TFbridgingBpjs, FbridgingBpjs);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
