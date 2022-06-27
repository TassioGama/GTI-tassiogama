program Projeto;

uses
  Vcl.Forms,
  ProjetoPetShop in 'ProjetoPetShop.pas' {MenuPrincipal},
  UnitCadastroPessoa in 'UnitCadastroPessoa.pas' {FormCadastroPessoa},
  DbConection in 'DbConection.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TFormCadastroPessoa, FormCadastroPessoa);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
