object FormCadastroPessoa: TFormCadastroPessoa
  Left = 0
  Top = 0
  Caption = 'Cadastro '#218'nico de Pessoa'
  ClientHeight = 507
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 51
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 117
    Top = 51
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object Label3: TLabel
    Left = 16
    Top = 107
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label4: TLabel
    Left = 168
    Top = 107
    Width = 54
    Height = 13
    Caption = 'ENDERE'#199'O'
  end
  object Label5: TLabel
    Left = 440
    Top = 107
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label6: TLabel
    Left = 16
    Top = 163
    Width = 12
    Height = 13
    Caption = 'N'#176
  end
  object Label7: TLabel
    Left = 79
    Top = 163
    Width = 75
    Height = 13
    Caption = 'COMPLEMENTO'
  end
  object Label8: TLabel
    Left = 376
    Top = 163
    Width = 38
    Height = 13
    Caption = 'CIDADE'
  end
  object Label9: TLabel
    Left = 620
    Top = 163
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Label10: TLabel
    Left = 16
    Top = 219
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label11: TLabel
    Left = 113
    Top = 219
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label12: TLabel
    Left = 213
    Top = 219
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
  end
  object Label13: TLabel
    Left = 8
    Top = 8
    Width = 677
    Height = 25
    AutoSize = False
    Caption = 'Cadstro de Pessoa'
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
  object MaskEdit1: TMaskEdit
    Left = 16
    Top = 70
    Width = 93
    Height = 21
    BorderStyle = bsNone
    EditMask = '999.999.999-99;1;_'
    MaxLength = 14
    TabOrder = 0
    Text = '   .   .   -  '
  end
  object Edit1: TEdit
    Left = 117
    Top = 70
    Width = 550
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 168
    Top = 126
    Width = 257
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object MaskEdit2: TMaskEdit
    Left = 16
    Top = 126
    Width = 67
    Height = 21
    BorderStyle = bsNone
    EditMask = '99999-999;1;_'
    MaxLength = 9
    TabOrder = 3
    Text = '     -   '
  end
  object Edit2: TEdit
    Left = 440
    Top = 126
    Width = 233
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 16
    Top = 182
    Width = 52
    Height = 21
    BorderStyle = bsNone
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 79
    Top = 182
    Width = 282
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 376
    Top = 182
    Width = 233
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object Edit7: TEdit
    Left = 620
    Top = 182
    Width = 53
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object Button1: TButton
    Left = 94
    Top = 122
    Width = 61
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = Button1Click
  end
  object MaskEdit3: TMaskEdit
    Left = 16
    Top = 246
    Width = 81
    Height = 21
    BorderStyle = bsNone
    EditMask = '(99)9999-9999;1;_'
    MaxLength = 13
    TabOrder = 10
    Text = '(  )    -    '
  end
  object MaskEdit4: TMaskEdit
    Left = 113
    Top = 246
    Width = 88
    Height = 21
    BorderStyle = bsNone
    EditMask = '(99)99999-9999;1;_'
    MaxLength = 14
    TabOrder = 11
    Text = '(  )     -    '
  end
  object MaskEdit5: TMaskEdit
    Left = 213
    Top = 246
    Width = 68
    Height = 21
    BorderStyle = bsNone
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 12
    Text = '  /  /    '
  end
  object BitBtn1: TBitBtn
    Left = 304
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 13
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 288
    Width = 677
    Height = 152
    DataSource = DataModule1.DSPessoa
    ReadOnly = True
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_NASCIMENTO'
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 391
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 15
    OnClick = BitBtn2Click
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://viacep.com.br/ws'
    Params = <>
    Left = 520
    Top = 448
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 576
    Top = 448
  end
  object RESTResponse1: TRESTResponse
    Left = 552
    Top = 448
  end
  object MemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 592
    Top = 448
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 536
    Top = 448
  end
  object InsertPessoa: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 96
    Top = 456
  end
  object FDQPesquisa: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 184
    Top = 456
  end
  object FDQAlterar: TFDQuery
    Left = 264
    Top = 456
  end
end
