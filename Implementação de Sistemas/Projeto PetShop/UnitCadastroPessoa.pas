unit UnitCadastroPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,System.JSON,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormCadastroPessoa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Edit3: TEdit;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    MemTable1: TFDMemTable;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    Button1: TButton;
    Label10: TLabel;
    MaskEdit3: TMaskEdit;
    Label11: TLabel;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    Label12: TLabel;
    Label13: TLabel;
    InsertPessoa: TFDQuery;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    FDQPesquisa: TFDQuery;
    FDQAlterar: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPessoa: TFormCadastroPessoa;

implementation

Uses DbConection;

{$R *.dfm}
procedure TFormCadastroPessoa.BitBtn1Click(Sender: TObject);
var
cpf: string;
cep: string;
tel: string;
cel: string;
begin
DataModule1.FDTPessoa.Open;
  with FDQPesquisa do
  begin
    close;
    sql.Clear;
    sql.Add('select CPF from rup where CPF = :cpf;');
    cpf :=  StringReplace(MaskEdit1.Text,'.','',[rfReplaceAll, rfIgnoreCase]);
    cpf :=  StringReplace(cpf,'-','',[rfReplaceAll, rfIgnoreCase]);
    ParamByName('cpf').AsString := cpf;
  if FDQPesquisa.RecordCount = 0 then
    begin
    with InsertPessoa do
      begin
        close;
        sql.Clear;
        sql.Add('insert into rup (CPF,NOME,CEP,ENDERECO,BAIRRO,COMPLEMENTO,NUM_ENDERECO,CIDADE,UF,TELEFONE,CELULAR,DT_NASCIMENTO)');
        sql.Add(' values (:cpf, :nome, :cep, :endereco, :bairro, :complemento, :numendereco, :cidade, :uf, :tel, :cel, :datnascimento)');
        cpf :=  StringReplace(MaskEdit1.Text,'.','',[rfReplaceAll, rfIgnoreCase]);
        cpf :=  StringReplace(cpf,'-','',[rfReplaceAll, rfIgnoreCase]);
        ParamByName('cpf').AsString := cpf;
        ParamByName('nome').AsString := Edit1.Text;
        cep := MaskEdit2.Text;
        cep := StringReplace(cep,'-','',[rfReplaceAll, rfIgnoreCase]);
        cep := Trim(cep);
        ParamByName('cep').AsString := cep;
        ParamByName('endereco').AsString := Edit3.Text;
        ParamByName('bairro').AsString := Edit2.Text;
        ParamByName('complemento').AsString := Edit5.Text;
        ParamByName('numendereco').AsInteger := StrToInt(Edit4.Text);
        ParamByName('cidade').AsString := Edit6.Text;
        ParamByName('uf').AsString := Edit7.Text;
        tel := StringReplace(MaskEdit3.Text,'(','',[rfReplaceAll, rfIgnoreCase]);
        tel := StringReplace(tel,')','',[rfReplaceAll, rfIgnoreCase]);
        tel := StringReplace(tel,'-','',[rfReplaceAll, rfIgnoreCase]);
        ParamByName('tel').AsString := tel;
        cel := StringReplace(MaskEdit4.Text,'(','',[rfReplaceAll, rfIgnoreCase]);
        cel := StringReplace(cel,')','',[rfReplaceAll, rfIgnoreCase]);
        cel := StringReplace(cel,'-','',[rfReplaceAll, rfIgnoreCase]);
        ParamByName('cel').AsString := cel;
        ParamByName('datnascimento').AsDate := StrToDate(MaskEdit5.Text);
        ExecSQL;
      end;
      //limpar os campos aqui receber vazio
      MaskEdit1.Text := '';
      MaskEdit2.Text := '';
      MaskEdit3.Text := '';
      MaskEdit4.Text := '';
      MaskEdit5.Text := '';
      Edit1.Text := '';
      Edit2.Text := '';
      Edit3.Text := '';
      Edit4.Text := '';
      Edit5.Text := '';
      Edit6.Text := '';
      Edit7.Text := '';
    end
    else
      ShowMessage('CPF já Cadastrado!');
      exit;
  end;

  DataModule1.FDTPessoa.Close;
  DataModule1.DSPessoa.DataSet.Refresh;
  DataModule1.FDTPessoa.Refresh;
  DataModule1.FDTPessoa.Open;

end;

procedure TFormCadastroPessoa.BitBtn2Click(Sender: TObject);
var
cpf: string;
cep: string;
tel: string;
cel: string;
begin
if trim(MaskEdit1.Text) <> '' then
begin
 with FDQAlterar do
 begin
    close;
    sql.Clear;
    sql.Add('update rup set (NOME,CEP,ENDERECO,BAIRRO,COMPLEMENTO,NUM_ENDERECO,CIDADE,UF,TELEFONE,CELULAR,DT_NASCIMENTO)');
        sql.Add(' values (:nome, :cep, :endereco, :bairro, :complemento, :numendereco, :cidade, :uf, :tel, :cel, :datnascimento)');
        sql.Add(' where CPF = :cpf');
        cpf :=  StringReplace(MaskEdit1.Text,'.','',[rfReplaceAll, rfIgnoreCase]);
        cpf :=  StringReplace(cpf,'-','',[rfReplaceAll, rfIgnoreCase]);
        ParamByName('cpf').AsString := cpf;
        ParamByName('nome').AsString := Edit1.Text;
        cep := MaskEdit2.Text;
        cep := StringReplace(cep,'-','',[rfReplaceAll, rfIgnoreCase]);
        cep := Trim(cep);
        ParamByName('cep').AsString := cep;
        ParamByName('endereco').AsString := Edit3.Text;
        ParamByName('bairro').AsString := Edit2.Text;
        ParamByName('complemento').AsString := Edit5.Text;
        ParamByName('numendereco').AsInteger := StrToInt(Edit4.Text);
        ParamByName('cidade').AsString := Edit6.Text;
        ParamByName('uf').AsString := Edit7.Text;
        tel := StringReplace(MaskEdit3.Text,'(','',[rfReplaceAll, rfIgnoreCase]);
        tel := StringReplace(tel,')','',[rfReplaceAll, rfIgnoreCase]);
        tel := StringReplace(tel,'-','',[rfReplaceAll, rfIgnoreCase]);
        ParamByName('tel').AsString := tel;
        cel := StringReplace(MaskEdit4.Text,'(','',[rfReplaceAll, rfIgnoreCase]);
        cel := StringReplace(cel,')','',[rfReplaceAll, rfIgnoreCase]);
        cel := StringReplace(cel,'-','',[rfReplaceAll, rfIgnoreCase]);
        ParamByName('cel').AsString := cel;
        ParamByName('datnascimento').AsDate := StrToDate(MaskEdit5.Text);
        ExecSQL;
 end;
end
else
begin
  ShowMessage('Favor Selecionar um Registro do Grid!');
  exit;
end;
   //limpar os campos aqui receber vazio
end;

procedure TFormCadastroPessoa.Button1Click(Sender: TObject);
var
Response: TStringStream;
cep: string;
begin
  Response := TStringStream.Create('');
  cep := MaskEdit2.Text;
  cep := StringReplace(cep,'-','',[rfReplaceAll, rfIgnoreCase]);
  cep := Trim(cep);
  if cep.Length <> 8 then
  begin
    ShowMessage('Favor preencher o CEP corretamente!');
      exit;
  end;

  RestClient1.BaseURL := 'https://viacep.com.br/ws/' + cep + '/json/';

  RestRequest1.Execute;
  if RestRequest1.Response.StatusCode = 200 then
    begin
      if RestRequest1.Response.Content.IndexOf('erro') > 0 then
      ShowMessage('CEP não encontrado!')
      else
      begin
        with MemTable1 do
          begin
            MaskEdit2.Text := FieldByName('cep').AsString;
            Edit3.Text := FieldByName('logradouro').AsString;
            Edit2.Text := FieldByName('bairro').AsString;
            Edit6.Text := FieldByName('localidade').AsString;
            Edit7.Text := FieldByName('uf').AsString;
          end;
      end;
   end;


end;

procedure TFormCadastroPessoa.FormCreate(Sender: TObject);
begin
DataModule1.FDTPessoa.Open;
end;

end.

