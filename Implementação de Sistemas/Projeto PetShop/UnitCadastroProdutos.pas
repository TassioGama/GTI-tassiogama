unit UnitCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.NumberBox, Vcl.DBCtrls;

type
  TFormCadastroProduto = class(TForm)
    Label13: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    InsertProduto: TFDQuery;
    Label5: TLabel;
    Edit4: TEdit;
    DBEdit1: TDBEdit;
    UpdateProdutos: TFDQuery;
    BitBtn1: TBitBtn;
    DeleteProdutos: TFDQuery;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProduto: TFormCadastroProduto;

implementation

Uses DbConection;


{$R *.dfm}

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

procedure TFormCadastroProduto.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
  ShowMessage('Selecione algum produto do Grid!');
  exit;
end;
with DeleteProdutos do
begin
close;
sql.Clear;
   sql.Add('Delete from produtos ');
   sql.Add(' where IDPRODUTO = :idproduto');
   ParamByName('idproduto').AsLargeInt := StrToInt(DBEdit1.Text);
   ExecSQL;
   close;
end;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Memo1.Clear;
  DataModule1.DSProdutos.DataSet.Refresh;
end;

procedure TFormCadastroProduto.BitBtn2Click(Sender: TObject);
begin
 with InsertProduto do
 begin
   close;
   sql.Clear;
   sql.Add('Insert into produtos (NOME,VALOR,QUANTIDADE,MARCA,DESCRICAO)');
   sql.Add('values (:produto, :valor, :quantidade, :marca, :obs)');
   ParamByName('produto').AsString := Edit1.Text;
   ParamByName('valor').AsFloat := StrToFloatDef(Edit2.Text,0);
   ParamByName('quantidade').AsLargeInt := StrToInt(Edit4.Text);
   ParamByName('marca').AsString := Edit3.Text;
   ParamByName('obs').AsString := Memo1.Text;
   ExecSQL;
   close;
 end;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Memo1.Clear;
  DataModule1.DSProdutos.DataSet.Refresh;
end;

procedure TFormCadastroProduto.BitBtn3Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
  ShowMessage('Selecione algum produto do Grid!');
  exit;
end;
with UpdateProdutos do
begin
close;
sql.Clear;
   sql.Add('Update produtos set NOME = :produto,VALOR = :valor,QUANTIDADE = :quantidade,MARCA = :marca,DESCRICAO = :obs');
   sql.Add(' where IDPRODUTO = :idproduto');
   ParamByName('produto').AsString := Edit1.Text;
   ParamByName('valor').AsFloat := StrToFloatDef(Edit2.Text,0);
   ParamByName('quantidade').AsLargeInt := StrToInt(Edit4.Text);
   ParamByName('marca').AsString := Edit3.Text;
   ParamByName('obs').AsString := Memo1.Text;
   ParamByName('idproduto').AsLargeInt := StrToInt(DBEdit1.Text);
   ExecSQL;
   close;
end;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Memo1.Clear;
DataModule1.DSProdutos.DataSet.Refresh;
end;

procedure TFormCadastroProduto.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule1.FDTProdutos.FieldByName('NOME').AsString;
Edit2.Text := FormatFloat('###,###,##0.00', DataModule1.FDTProdutos.FieldByName('VALOR').AsFloat);
Edit3.Text := DataModule1.FDTProdutos.FieldByName('MARCA').AsString;
Edit4.Text := DataModule1.FDTProdutos.FieldByName('QUANTIDADE').AsString;
Memo1.Text := DataModule1.FDTProdutos.FieldByName('DESCRICAO').AsString;
end;

procedure TFormCadastroProduto.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 FormatarComoMoeda( Edit2, Key );
end;

procedure TFormCadastroProduto.FormCreate(Sender: TObject);
begin
Memo1.Clear;
DataModule1.FDTProdutos.Open;
end;

end.
