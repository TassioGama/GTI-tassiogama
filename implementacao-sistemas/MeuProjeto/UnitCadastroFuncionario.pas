unit UnitCadastroFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitCadastroPessoa, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls,
  Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  REST.Response.Adapter, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCadastroFuncionario = class(TFormCadastroPessoa)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncionario: TFormCadastroFuncionario;

implementation

{$R *.dfm}

end.
