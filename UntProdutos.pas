unit UntProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmProdutos = class(TForm)
    gbFuncoes: TGroupBox;
    Label1: TLabel;
    EdtIdProduto: TDBEdit;
    Label2: TLabel;
    EdtDescricao: TDBEdit;
    Label3: TLabel;
    EdtUnidade: TDBEdit;
    Label4: TLabel;
    EdtCodigoMercosul: TDBEdit;
    lblQuantidade: TLabel;
    EdtUniEstoque: TDBEdit;
    Label6: TLabel;
    EdtCategoria: TDBEdit;
    Label7: TLabel;
    EdtPrecoUni: TDBEdit;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnSair: TBitBtn;
    lblFornecedor: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    QueProdutos: TADOQuery;
    QueProdutosidProduto: TAutoIncField;
    QueProdutosdescricao: TStringField;
    QueProdutosunidade: TStringField;
    QueProdutosncm: TIntegerField;
    QueProdutosundEstoque: TIntegerField;
    QueProdutoscategoria: TStringField;
    QueProdutosprecoUnitario: TBCDField;
    QueProdutoscnpjFornece: TBCDField;
    DsProdutos: TDataSource;
    QueForn: TADOQuery;
    DsForn: TDataSource;
    QueForncnpj: TBCDField;
    QueFornrazaoSocial: TStringField;
    QueForninscEstadual: TBCDField;
    QueFornendereco: TStringField;
    QueFornbairro: TStringField;
    QueForncidade: TStringField;
    QueFornestado: TStringField;
    QueForntelefone: TStringField;
    QueFornemail: TStringField;
    QueFornsite: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AtivaDesativaBotoes;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.dfm}

uses UntBancoDados;
procedure TFrmProdutos.AtivaDesativaBotoes;
begin
  BtnIncluir.Enabled := not BtnIncluir.Enabled;
  BtnAlterar.Enabled := not BtnAlterar.Enabled;
  BtnExcluir.Enabled := not BtnExcluir.Enabled;
  BtnSalvar.Enabled := not BtnSalvar.Enabled;
  BtnSair.Enabled := not BtnSair.Enabled;
end;

procedure TFrmProdutos.BtnAlterarClick(Sender: TObject);
begin
  if QueProdutos.FieldByName('IdProduto').IsNull then
  begin
    ShowMessage('Nenhum registro para alterar!');
    BtnIncluir.SetFocus;
    Exit;
  end;
  AtivaDesativaBotoes;
  QueProdutos.Edit;

end;

procedure TFrmProdutos.BtnExcluirClick(Sender: TObject);
begin
  if QueProdutos.FieldByName('IdProduto').IsNull then
  begin
    ShowMessage('Não ha registros para excluir!');
    BtnIncluir.SetFocus;
    Exit;
  end;
  QueProdutos.Delete;
  ShowMessage('Produto Excluido com sucesso!');
end;

procedure TFrmProdutos.BtnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueProdutos.Append;
  EdtIdProduto.SetFocus;
end;

procedure TFrmProdutos.btnSairClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueProdutos.Cancel;
  Close;
end;

procedure TFrmProdutos.BtnSalvarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueProdutos.Post;
  ShowMessage('Produto Salvo com Sucesso!');
end;

procedure TFrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QueProdutos.Close;
  Action := caFree;
end;

procedure TFrmProdutos.FormCreate(Sender: TObject);
begin
  QueProdutos.Active := True;
  QueProdutos.Open;
  QueForn.Active := True;
  QueForn.Open;
end;

procedure TFrmProdutos.FormDestroy(Sender: TObject);
begin
  FrmProdutos := nil;
end;

end.
