unit UntCalorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmCalorias = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtProteinas: TEdit;
    edtGorduras: TEdit;
    edtCarboidratos: TEdit;
    mmTabela: TMemo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    cmdProduto: TComboBox;

    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalorias: TFrmCalorias;

implementation

{$R *.dfm}

procedure TFrmCalorias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree
end;

procedure TFrmCalorias.FormDestroy(Sender: TObject);
begin
  FrmCalorias := nil;
end;

procedure TFrmCalorias.SpeedButton1Click(Sender: TObject);
var
  carboidratos, proteinas, gorduras, calorias : real;
begin
  carboidratos := StrToFloat(edtCarboidratos.Text);
  proteinas := StrToFloat(edtProteinas.Text);
  gorduras := StrToFloat(edtGorduras.Text);

  calorias := (carboidratos * 4) + ( proteinas * 4 ) + ( gorduras * 9);

  mmTabela.Lines.Add('---INFORMAÇÃO NUTRICIONAL---');
  mmTabela.Lines.Add('');
  mmTabela.Lines.Add('PRODUTO ESCOLHIDO: '+cmdProduto.Text);
  mmTabela.Lines.Add('CALORIAS DO PRODUTO[KCAL]: '+FloatToStr(calorias));
  mmTabela.Lines.Add('');
  mmTabela.Lines.Add('TOTAL DE CARBOIDRATOS[g]: '+FloatToStr(Carboidratos));
  mmTabela.Lines.Add('TOTAL DE PROTEÍNAS[g]: '+FloatToStr(Proteinas));
  mmTabela.Lines.Add('TOTAL DE GORDURAS[g]: '+FloatToStr(Gorduras));

end;

procedure TFrmCalorias.SpeedButton2Click(Sender: TObject);
begin
  edtProteinas.Clear;
  edtCarboidratos.Clear;
  edtGorduras.Clear;
  mmTabela.Clear;
end;

procedure TFrmCalorias.SpeedButton3Click(Sender: TObject);
begin
  close();
end;

end.
