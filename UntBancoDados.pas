unit UntBancoDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDmConexao = class(TDataModule)
    ADOConexao: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
