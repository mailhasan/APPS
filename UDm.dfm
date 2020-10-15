object DM: TDM
  OldCreateOrder = False
  Left = 359
  Top = 213
  Height = 539
  Width = 818
  object conSimrs: TADOConnection
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 24
    Top = 32
  end
  object qryt_koneksi_bpjs: TADOQuery
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_koneksibpjs')
    Left = 48
    Top = 88
  end
end
