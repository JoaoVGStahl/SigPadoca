unit UntClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmClientes = class(TForm)
    gbDadosPessoais: TGroupBox;
    gbFuncoes: TGroupBox;
    QueClientes: TADOQuery;
    DgClientes: TDBGrid;
    QueClientescpfClientes: TBCDField;
    QueClientesnome: TStringField;
    QueClientesdatanasc: TWideStringField;
    QueClientessexo: TStringField;
    QueClientesrg: TStringField;
    QueClientescelular: TStringField;
    QueClientesemail: TStringField;
    QueClientesendereco: TStringField;
    QueClientesbairro: TStringField;
    QueClientescidade: TStringField;
    QueClientesestado: TStringField;
    Label1: TLabel;
    DbCPF: TDBEdit;
    DsClientes: TDataSource;
    Label2: TLabel;
    DbNome: TDBEdit;
    Label3: TLabel;
    DbDataNasc: TDBEdit;
    Label5: TLabel;
    DbRG: TDBEdit;
    Label6: TLabel;
    DbTelefone: TDBEdit;
    Label7: TLabel;
    DbEmail: TDBEdit;
    Label8: TLabel;
    DbEndereco: TDBEdit;
    Label9: TLabel;
    DbBairro: TDBEdit;
    Label10: TLabel;
    DbCidade: TDBEdit;
    Label11: TLabel;
    DbEstado: TDBEdit;
    DbSexo: TDBRadioGroup;
    BtnIncluir: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AtivaDesativaBotoes;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses UntBancoDados;


procedure TfrmClientes.AtivaDesativaBotoes;
begin
  btnIncluir.Enabled := not btnIncluir.Enabled;
  btnExcluir.Enabled := not btnExcluir.Enabled;
  btnSair.Enabled := not btnSair.Enabled;
  btnAlterar.Enabled := not btnAlterar.Enabled;
  btnSalvar.Enabled := not btnSalvar.Enabled;
end;

procedure TfrmClientes.btnAlterarClick(Sender: TObject);
begin
  if QueClientes.FieldByName('CPF').IsNull then
  begin
    ShowMessage('Nenhum Registro Selecionado para alterar!');
    Exit;
  end;
  AtivaDesativaBotoes;
  QueClientes.Edit;

end;

procedure TfrmClientes.btnExcluirClick(Sender: TObject);
begin
  if QueClientes.FieldByName('CPF').IsNull then
  begin
    ShowMessage('Nenhum registro selecionado para exclusão!');
    Exit;
  end;
  QueClientes.Delete;
  ShowMessage('Cliente excluido com Sucesso');
end;

procedure TfrmClientes.btnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueClientes.Append;
  DbNome.SetFocus;
end;

procedure TfrmClientes.btnSairClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueClientes.Cancel;
  Close;
end;

procedure TfrmClientes.btnSalvarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueClientes.Post;
  ShowMessage('Cliente Salvo com Sucesso!');
end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QueClientes.Close;
  Action := caFree;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  QueClientes.Active := True;
  QueClientes.Open;
end;

procedure TfrmClientes.FormDestroy(Sender: TObject);
begin
  frmClientes := nil;
end;

end.
