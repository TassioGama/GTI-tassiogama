object MenuPrincipal: TMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'PetShop'
  ClientHeight = 448
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 72
    object Cadastro1: TMenuItem
      Caption = 'Cadastrar'
      object Rup1: TMenuItem
        Caption = 'Pessoa'
        OnClick = Rup1Click
      end
      object Funcionrio1: TMenuItem
        Caption = 'Funcion'#225'rio'
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
      end
      object Funo1: TMenuItem
        Caption = 'Fun'#231#227'o'
      end
      object Produto2: TMenuItem
        Caption = 'Setor'
      end
    end
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Clientes2: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Funo2: TMenuItem
        Caption = 'Fun'#231#227'o'
      end
      object Funo3: TMenuItem
        Caption = 'Setor'
      end
    end
    object Cadastro2: TMenuItem
      Caption = 'Alterar'
      object Registrar1: TMenuItem
        Caption = 'Registrar'
      end
      object Registrar2: TMenuItem
        Caption = 'Vinculo Setor'
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object RegistrodeVendas1: TMenuItem
        Caption = 'Nova Venda'
      end
      object Registro1: TMenuItem
        Caption = 'Registros'
      end
      object Registro2: TMenuItem
        Caption = 'Informa'#231#245'es'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end