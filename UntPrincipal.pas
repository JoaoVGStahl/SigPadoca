unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TFrmPrincipal = class(TForm)
    MMenun: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes2: TMenuItem;
    Produtos2: TMenuItem;
    Fornecedores2: TMenuItem;
    Movimentaes1: TMenuItem;
    EntradadeProdutos1: TMenuItem;
    SaidadeProduts1: TMenuItem;
    Vendas1: TMenuItem;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrio1: TMenuItem;
    Aplicativos1: TMenuItem;
    JogodaVelha1: TMenuItem;
    ClculodeIMC1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    ImgBackground: TImage;
    pnlPrincipal: TPanel;
    btnCalculadora: TBitBtn;
    btnSair: TBitBtn;
    btnRelatorios: TBitBtn;
    btnCalendario: TBitBtn;
    btnCalorias: TBitBtn;
    VerificadordeIdade1: TMenuItem;
    MaiorNumero1: TMenuItem;
    BtnFornecedor: TBitBtn;
    BtnClientes: TBitBtn;
    BtnProdutos: TBitBtn;
    procedure Sair1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure btnCaloriasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VerificadordeIdade1Click(Sender: TObject);
    procedure MaiorNumero1Click(Sender: TObject);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UntClientes, UntProdutos, UntCalorias, UntVerificaIdade, UntMaiorNumero,
  UntFornecedores;


procedure TFrmPrincipal.btnCaloriasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCalorias, FrmCalorias);
  FrmCalorias.ShowModal;
end;

procedure TFrmPrincipal.btnClientesClick(Sender: TObject);
begin
  if frmClientes = nil then
  begin
    Application.CreateForm(TFrmClientes, FrmClientes);
  end;
  frmClientes.ShowModal;
end;

procedure TFrmPrincipal.BtnFornecedorClick(Sender: TObject);
begin
  if FrmFornecedores = nil then
  begin
    Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  end;
  FrmFornecedores.ShowModal
end;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  if FrmProdutos = nil then
  begin
    Application.CreateForm(TFrmProdutos, FrmProdutos);
  end;
  FrmProdutos.ShowModal
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation , [mbYes , mbNo ],0) = mrYes then
  begin
    MessageDlg('Sua aplicação está sendo encerrada.', mtInformation, [mbOK],0);
    Close;
  end;

end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  if frmClientes = nil then
  begin
    Application.CreateForm(TfrmClientes, frmClientes);
  end;
  frmClientes.ShowModal;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  FrmCalorias := nil;
end;

procedure TFrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  if FrmFornecedores = nil then
  begin
    Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  end;
  FrmFornecedores.ShowModal;
end;

procedure TFrmPrincipal.MaiorNumero1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmMaiorNumero, FrmMaiorNumero);
  FrmMaiorNumero.ShowModal;
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
  if FrmProdutos = nil then
  begin
    Application.CreateForm(TFrmProdutos, FrmProdutos);
  end;
  FrmProdutos.ShowModal
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmPrincipal.VerificadordeIdade1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmVerificaIdade, FrmVerificaIdade);
  FrmVerificaIdade.ShowModal;
end;

end.
