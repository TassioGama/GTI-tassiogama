unit ProjetoPetShop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Vendas1: TMenuItem;
    Rup1: TMenuItem;
    Produto1: TMenuItem;
    Produto2: TMenuItem;
    Funo1: TMenuItem;
    Registrar1: TMenuItem;
    Registrar2: TMenuItem;
    RegistrodeVendas1: TMenuItem;
    Registro1: TMenuItem;
    Registro2: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Rup1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuPrincipal: TMenuPrincipal;

implementation

{$R *.dfm}

uses UnitCadastroPessoa, UnitCadastroFuncionario;

procedure TMenuPrincipal.Registrar1Click(Sender: TObject);
begin
FormCadastroFuncionario.Show();
end;

procedure TMenuPrincipal.Rup1Click(Sender: TObject);
begin
FormCadastroPessoa.Show();
end;

procedure TMenuPrincipal.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
