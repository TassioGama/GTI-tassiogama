object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 541
  ClientWidth = 584
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
    Left = 648
    Top = 432
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Pessoa1: TMenuItem
        Caption = 'Funcion'#225'rio'
        OnClick = Pessoa1Click
      end
      object Funo1: TMenuItem
        Caption = 'Fun'#231#227'o'
      end
      object Pessoa2: TMenuItem
        Caption = 'Pessoa'
        OnClick = Pessoa2Click
      end
      object Funo2: TMenuItem
        Caption = 'Produto'
        OnClick = Funo2Click
      end
      object Setor1: TMenuItem
        Caption = 'Setor'
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object NovaVenda1: TMenuItem
        Caption = 'Nova Venda'
      end
      object NovaVenda2: TMenuItem
        Caption = 'Relat'#243'rio de Vendas'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
