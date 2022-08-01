object FormCadastroFuncionario: TFormCadastroFuncionario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcio'#225'rio'
  ClientHeight = 507
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 8
    Top = 8
    Width = 677
    Height = 25
    AutoSize = False
    Caption = 'Cadstro de Funcion'#225'rio'
    Color = 2219190
    Font.Charset = ANSI_CHARSET
    Font.Color = clInactiveBorder
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object Label2: TLabel
    Left = 128
    Top = 51
    Width = 16
    Height = 13
    Caption = 'PIS'
  end
  object Label1: TLabel
    Left = 312
    Top = 51
    Width = 42
    Height = 13
    Caption = 'FUN'#199#195'O'
  end
  object Label3: TLabel
    Left = 480
    Top = 51
    Width = 33
    Height = 13
    Caption = 'SETOR'
  end
  object Label4: TLabel
    Left = 111
    Top = 107
    Width = 44
    Height = 13
    Caption = 'SAL'#193'RIO'
  end
  object Label5: TLabel
    Left = 8
    Top = 51
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label6: TLabel
    Left = 8
    Top = 107
    Width = 83
    Height = 13
    Caption = 'DATA ADMISS'#195'O'
  end
  object Edit1: TEdit
    Left = 128
    Top = 70
    Width = 161
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 11
    NumbersOnly = True
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 312
    Top = 70
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object ComboBox2: TComboBox
    Left = 480
    Top = 70
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 111
    Top = 126
    Width = 162
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    NumbersOnly = True
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 70
    Width = 97
    Height = 21
    BorderStyle = bsNone
    EditMask = '999.999.999-99;1;_'
    MaxLength = 14
    TabOrder = 4
    Text = '   .   .   -  '
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 288
    Width = 677
    Height = 120
    DataSource = DataModule1.DSFuncionarios
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn2: TBitBtn
    Left = 298
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object MaskEdit2: TMaskEdit
    Left = 8
    Top = 126
    Width = 83
    Height = 21
    BorderStyle = bsNone
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 7
    Text = '  /  /    '
  end
  object FDQFuncao: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 96
    Top = 456
  end
  object FDQSetor: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 168
    Top = 456
  end
  object FDQPesquisa: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 248
    Top = 456
  end
  object InsertFuncionario: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 328
    Top = 456
  end
  object InsertRup: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 400
    Top = 456
  end
end
