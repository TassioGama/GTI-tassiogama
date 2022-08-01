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
      'C:\Users\tassi\OneDrive\Documentos\Embarcadero\Studio\Projects\W' +
      'in32\Debug\libmysql.dll'
    Left = 168
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 288
    Top = 32
  end
  object FDTPessoa: TFDTable
    Connection = FDConnection1
    TableName = 'is_petshop.rup'
    Left = 32
    Top = 160
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 376
    Top = 32
  end
  object DSPessoa: TDataSource
    DataSet = FDTPessoa
    Left = 90
    Top = 161
  end
  object FDTProdutos: TFDTable
    IndexFieldNames = 'IDPRODUTO'
    Connection = FDConnection1
    TableName = 'produtos'
    Left = 32
    Top = 208
  end
  object DSProdutos: TDataSource
    DataSet = FDTProdutos
    Left = 98
    Top = 209
  end
  object FDQFuncionarios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select r.CPF, r.NOME, s.NOME as SETOR, fs.NOME as FUNCAO, f.PIS,' +
        'f.SALARIO,f.DT_ADMISSAO from funcionarios f inner join rup r on ' +
        'r.ID = f.ID'
      'inner join setor s on f.IDSETOR = s.IDSETOR'
      'inner join funcao_setor fs on f.IDFUNCAO_SETOR'
      'group by r.CPF')
    Left = 32
    Top = 272
  end
  object DSFuncionarios: TDataSource
    DataSet = FDQFuncionarios
    Left = 114
    Top = 273
  end
end
