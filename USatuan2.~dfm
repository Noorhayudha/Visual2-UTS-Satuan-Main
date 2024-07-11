object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 180
  Width = 215
  object ZConnection: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Delphi7\libmysql.dll'
    Left = 40
    Top = 16
  end
  object ZSatuan: TZQuery
    Connection = ZConnection
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 104
    Top = 16
  end
  object dssatuan: TDataSource
    DataSet = ZSatuan
    Left = 104
    Top = 80
  end
end
