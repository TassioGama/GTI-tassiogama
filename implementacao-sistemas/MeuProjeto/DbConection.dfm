object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 446
  Width = 574
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=is_petshop'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\tassi\OneDrive\'#193'rea de Trabalho\projetoIS\MeuProjeto\Wi' +
      'n32\Debug\libmysql.dll'
    Left = 168
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 288
    Top = 32
  end
  object DSPessoa: TDataSource
    DataSet = FDTPessoa
    Left = 48
    Top = 102
  end
  object FDTPessoa: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    TableName = 'is_petshop.rup'
    Left = 120
    Top = 102
  end
  object FDQPessoa: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from rup')
    Left = 184
    Top = 102
  end
end
