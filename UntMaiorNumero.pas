unit UntMaiorNumero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmMaiorNumero = class(TForm)
    lbl1Num: TLabel;
    lbl2Num: TLabel;
    Edt1num: TEdit;
    Edt2Num: TEdit;
    lblResultado: TLabel;
    EdtResultado: TEdit;
    BtnCalcular: TSpeedButton;
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMaiorNumero: TFrmMaiorNumero;

implementation

{$R *.dfm}

procedure TFrmMaiorNumero.BtnCalcularClick(Sender: TObject);
var
  n1, n2, resultado : Integer;
begin
  n1 := StrToInt(Edt1num.Text);
  n2 := StrToInt(Edt2Num.Text);
  if n1 > n2 then
  begin 
    resultado := n1
  end
  else
  begin  
    resultado := n2
  end;
  EdtResultado.Text := IntToStr(resultado);
end;

end.
