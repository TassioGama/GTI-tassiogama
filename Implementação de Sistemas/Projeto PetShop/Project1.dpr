program Project1;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  DbConection in 'DbConection.pas' {DataModule1: TDataModule},
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadastroPessoa in 'UnitCadastroPessoa.pas' {FormCadastroPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadastroPessoa, FormCadastroPessoa);
  Application.Run;
end.
