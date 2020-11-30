unit UntVerificaIdade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmVerificaIdade = class(TForm)
    lblNome: TLabel;
    EdtNome: TEdit;
    lblIdade: TLabel;
    EdtIdade: TEdit;
    btnVerifica: TSpeedButton;
    procedure btnVerificaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVerificaIdade: TFrmVerificaIdade;

implementation

{$R *.dfm}

procedure TFrmVerificaIdade.btnVerificaClick(Sender: TObject);
var
  idade : Integer;
begin
  idade := StrToInt(EdtIdade.Text);
  if (idade >= 18) then
    ShowMessage('Você é maior de idade e pode consumir a bebida')
  else
    ShowMessage('Menor idade. Não pode comprar!');

end;

end.
