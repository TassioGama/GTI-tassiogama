program Project1;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  DbConection in 'DbConection.pas' {DataModule1: TDataModule},
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadastroPessoa in 'UnitCadastroPessoa.pas' {FormCadastroPessoa},
  UnitCadastroProdutos in 'UnitCadastroProdutos.pas' {FormCadastroProduto},
  UnitCadastroFuncionario in 'UnitCadastroFuncionario.pas' {FormCadastroFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadastroPessoa, FormCadastroPessoa);
  Application.CreateForm(TFormCadastroProduto, FormCadastroProduto);
  Application.CreateForm(TFormCadastroFuncionario, FormCadastroFuncionario);
  Application.Run;
end.
