object FormCadastroProduto: TFormCadastroProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
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
    Caption = 'Cadstro de Produtos'
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
    Left = 8
    Top = 51
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object Label1: TLabel
    Left = 519
    Top = 51
    Width = 33
    Height = 13
    Caption = 'VALOR'
  end
  object Label3: TLabel
    Left = 8
    Top = 99
    Width = 36
    Height = 13
    Caption = 'MARCA'
  end
  object Label4: TLabel
    Left = 8
    Top = 157
    Width = 129
    Height = 13
    Caption = 'DESCRI'#199#195'O DO PRODUTO'
  end
  object Label5: TLabel
    Left = 552
    Top = 99
    Width = 66
    Height = 13
    Caption = 'QUANTIDADE'
  end
  object Edit1: TEdit
    Left = 8
    Top = 70
    Width = 489
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 519
    Top = 70
    Width = 166
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    NumbersOnly = True
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 8
    Top = 118
    Width = 522
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 8
    Top = 176
    Width = 677
    Height = 65
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 328
    Width = 677
    Height = 120
    DataSource = DataModule1.DSProdutos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object BitBtn2: TBitBtn
    Left = 523
    Top = 260
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 610
    Top = 260
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object Edit4: TEdit
    Left = 552
    Top = 118
    Width = 133
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    NumbersOnly = True
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 301
    Width = 57
    Height = 21
    DataField = 'IDPRODUTO'
    DataSource = DataModule1.DSProdutos
    TabOrder = 8
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 610
    Top = 454
    Width = 75
    Height = 25
    Caption = 'Apagar'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object InsertProduto: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 96
    Top = 456
  end
  object UpdateProdutos: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 176
    Top = 456
  end
  object DeleteProdutos: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 256
    Top = 456
  end
end
