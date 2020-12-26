unit UntFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFrmFornecedores = class(TForm)
    QueFornecedores: TADOQuery;
    QueFornecedorescnpj: TBCDField;
    QueFornecedoresrazaoSocial: TStringField;
    QueFornecedoresinscEstadual: TBCDField;
    QueFornecedoresendereco: TStringField;
    QueFornecedoresbairro: TStringField;
    QueFornecedorescidade: TStringField;
    QueFornecedoresestado: TStringField;
    QueFornecedorestelefone: TStringField;
    QueFornecedoresemail: TStringField;
    QueFornecedoressite: TStringField;
    Label1: TLabel;
    EdtCNPJ: TDBEdit;
    DsFornecedores: TDataSource;
    Label2: TLabel;
    EdtRazaoSocial: TDBEdit;
    Label3: TLabel;
    EdtInsEstadual: TDBEdit;
    Label4: TLabel;
    EdtEndereco: TDBEdit;
    Label5: TLabel;
    EdtBairro: TDBEdit;
    Label6: TLabel;
    EdtCidade: TDBEdit;
    Label7: TLabel;
    EdtEstado: TDBEdit;
    Label8: TLabel;
    EdtTelefone: TDBEdit;
    Label9: TLabel;
    EdtEmail: TDBEdit;
    Label10: TLabel;
    EdtSite: TDBEdit;
    DgFornecedores: TDBGrid;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnSair: TBitBtn;
    GbFuncoes: TGroupBox;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure AtivaDesativaBotoes;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

{$R *.dfm}

uses UntBancoDados;

procedure TFrmFornecedores.AtivaDesativaBotoes;
begin
  BtnIncluir.Enabled := not BtnIncluir.Enabled;
  BtnAlterar.Enabled := not BtnAlterar.Enabled;
  BtnExcluir.Enabled := not BtnExcluir.Enabled;
  BtnSalvar.Enabled := not BtnSalvar.Enabled;
  BtnSair.Enabled := not BtnSair.Enabled;
end;

procedure TFrmFornecedores.BtnAlterarClick(Sender: TObject);
begin
  if QueFornecedores.FieldByName('cnpj').IsNull then
  begin
    ShowMessage('Nenhum Registro selecionado para alterar!');
    BtnIncluir.SetFocus;
    Exit;
  end;
  AtivaDesativaBotoes;
  QueFornecedores.Edit;

end;

procedure TFrmFornecedores.BtnExcluirClick(Sender: TObject);
begin
  if QueFornecedores.FieldByName('cnpj').IsNull then
  begin
    ShowMessage('Nenhum registro selecionado para excluir!');
    BtnIncluir.SetFocus;
    Exit;
  end;
  AtivaDesativaBotoes;
  QueFornecedores.Delete;
end;

procedure TFrmFornecedores.BtnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueFornecedores.Append;
  EdtCNPJ.SetFocus;
end;

procedure TFrmFornecedores.BtnSalvarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueFornecedores.Post;
  ShowMessage('Registro Salvo com Sucesso!');
end;

procedure TFrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QueFornecedores.Close;
  Action := caFree;
end;

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin
  QueFornecedores.Active := True;
  QueFornecedores.Open;
end;

procedure TFrmFornecedores.FormDestroy(Sender: TObject);
begin
  FrmFornecedores := nil;
end;

end.
