unit UntTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmTeste = class(TForm)
    lblHora: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTeste: TFrmTeste;

implementation

{$R *.dfm}

procedure TFrmTeste.Timer1Timer(Sender: TObject);
begin
  lblHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
end;

end.
