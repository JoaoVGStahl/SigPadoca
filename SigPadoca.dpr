program SigPadoca;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UntClientes in 'UntClientes.pas' {frmClientes},
  UntProdutos in 'UntProdutos.pas' {FrmProdutos},
  UntCalorias in 'UntCalorias.pas' {FrmCalorias},
  UntVerificaIdade in 'UntVerificaIdade.pas' {FrmVerificaIdade},
  UntMaiorNumero in 'UntMaiorNumero.pas' {FrmMaiorNumero},
  UntLogin in 'UntLogin.pas' {FrmLogin},
  UntBancoDados in 'UntBancoDados.pas' {DmConexao: TDataModule},
  UntFornecedores in 'UntFornecedores.pas' {FrmFornecedores},
  UntTeste in 'UntTeste.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
