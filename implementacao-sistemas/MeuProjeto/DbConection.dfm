object DataModule1: TDataModule1
  OldCreateOrder = False
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
end
