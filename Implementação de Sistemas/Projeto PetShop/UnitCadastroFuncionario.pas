unit UnitCadastroFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons;

type
  TFormCadastroFuncionario = class(TForm)
    Label13: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    FDQFuncao: TFDQuery;
    FDQSetor: TFDQuery;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    FDQPesquisa: TFDQuery;
    InsertFuncionario: TFDQuery;
    InsertRup: TFDQuery;
    MaskEdit2: TMaskEdit;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncionario: TFormCadastroFuncionario;

implementation

{$R *.dfm}

Uses DbConection;

Procedure FormatarComoMoeda( Componente : TObject; var Key: Char );
var
   str_valor  : String;
   dbl_valor  : double;
begin

   { verificando se estamos recebendo o TEdit realmente }
   IF Componente is TEdit THEN
   BEGIN
      { se tecla pressionada e' um numero, backspace ou del deixa passar }
      IF ( Key in ['0'..'9', #8, #9] ) THEN
      BEGIN
         { guarda valor do TEdit com que vamos trabalhar }
         str_valor := TEdit( Componente ).Text ;
         { verificando se nao esta vazio }
         IF str_valor = EmptyStr THEN str_valor := '0,00' ;
         { se valor numerico ja insere na string temporaria }
         IF Key in ['0'..'9'] THEN str_valor := Concat( str_valor, Key ) ;
         { retira pontos e virgulas se tiver! }
         str_valor := Trim( StringReplace( str_valor, '.', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
         str_valor := Trim( StringReplace( str_valor, ',', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
         {inserindo 2 casas decimais}
         dbl_valor := StrToFloat( str_valor ) ;
         dbl_valor := ( dbl_valor / 100 ) ;

         {reseta posicao do tedit}
         TEdit( Componente ).SelStart := Length( TEdit( Componente ).Text );
         {retornando valor tratado ao TEdit}
         TEdit( Componente ).Text := FormatFloat( '###,##0.00', dbl_valor ) ;
      END;
      {se nao e' key relevante entao reseta}
      IF NOT( Key in [#8, #9] ) THEN key := #0;
   END;

end;


procedure TFormCadastroFuncionario.BitBtn2Click(Sender: TObject);
var
cpf: string;
id: string;
begin
cpf :=  StringReplace(MaskEdit1.Text,'.','',[rfReplaceAll, rfIgnoreCase]);
cpf :=  StringReplace(cpf,'-','',[rfReplaceAll, rfIgnoreCase]);
  with FDQPesquisa do
  begin
    close;
    sql.Clear;
    sql.Add('select CPF,ID from rup where CPF = :cpf;');
    ParamByName('cpf').AsString := cpf;
    Open;
    if FDQPesquisa.RecordCount = 0 then
    begin
     with InsertRup do
      begin
      close;
      sql.Clear;
      sql.Add('Insert into rup (CPF)');
      sql.Add('values (:cpf)');
      ParamByName('cpf').AsString := cpf;
      ExecSQL;
      close;
      sql.Clear;
      sql.Add('select ID from rup where CPF = :cpf;');
      ParamByName('cpf').AsString := cpf;
      ExecSQL;
      id := InsertRup['ID'];
      end;
    end;
  if FDQPesquisa.RecordCount > 0 then
  begin
    id := FDQPesquisa['ID'];
  end;
  end;

    with InsertFuncionario do
    begin
      close;
      sql.Clear;
      sql.Add('Insert into funcionarios (PIS,SALARIO,DT_ADMISSAO,IDFUNCAO_SETOR,IDSETOR,ID)');
      sql.Add('values (:pis, :salario,:admissao,:idfuncao,:idsetor,:id)');
      ParamByName('pis').AsString := Edit1.Text;
      ParamByName('salario').AsFloat := StrToFloatDef(Edit2.Text,0);
      ParamByName('admissao').AsDate := StrToDate(MaskEdit2.Text);
      ParamByName('idfuncao').AsLargeInt := ComboBox1.ItemIndex;
      ParamByName('idsetor').AsLargeInt := ComboBox2.ItemIndex;
      ParamByName('id').AsLargeInt := StrToInt(id);
      ExecSQL;
    end;


end;

procedure TFormCadastroFuncionario.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
FormatarComoMoeda( Edit2, Key );
end;

procedure TFormCadastroFuncionario.FormCreate(Sender: TObject);
begin
DataModule1.FDQFuncionarios.Open;
with FDQFuncao do
begin
  Close;
  Sql.Clear;
  Sql.Add('SELECT * from funcao_setor');
  Open;

  FDQFuncao.First;

  while not FDQFuncao.Eof do
  begin
    ComboBox1.Items.Add(FDQFuncao['NOME']);
    FDQFuncao.Next;
  end;

end;
with FDQSetor do
begin
  close;
  Sql.Clear;
  Sql.Add('SELECT * from setor');
  Open;

  FDQSetor.First;

  while not FDQSetor.Eof do
  begin
    ComboBox2.Items.Add(FDQSetor['NOME']);
    FDQSetor.Next;
  end;
end;
end;

end.
