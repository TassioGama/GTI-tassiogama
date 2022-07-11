unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pessoa1: TMenuItem;
    Setor1: TMenuItem;
    Funo1: TMenuItem;
    Funo2: TMenuItem;
    Vendas1: TMenuItem;
    NovaVenda1: TMenuItem;
    NovaVenda2: TMenuItem;
    Sair1: TMenuItem;
    Pessoa2: TMenuItem;
    procedure Pessoa2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadastroPessoa;

procedure TFormPrincipal.Pessoa2Click(Sender: TObject);
begin
FormCadastroPessoa.ShowModal;
end;

end.
