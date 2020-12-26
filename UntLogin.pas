unit UntLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrmLogin = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    EdtUser: TEdit;
    EdtPass: TEdit;
    BtnEntrar: TBitBtn;
    Image1: TImage;
    lblHorario: TLabel;
    Timer1: TTimer;
    lblTest: TLabel;
    Button1: TButton;
    procedure BtnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure lblSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UntPrincipal, UntTeste;

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
var
  user, pass : string;
begin
  user := 'Joao';
  pass := 'admin123@';
  if (user = EdtUser.Text) and ( pass = EdtPass.Text) then
  begin
     if FrmPrincipal = nil then
     begin
       Application.CreateForm(TFrmPrincipal, FrmPrincipal);
     end;
     FrmPrincipal.Show
  end
  else
  begin
    ShowMessage('Usuário Ou Senha Incorreta!');
    EdtUser.Text := '';
    EdtPass.Text := '';
  end
end;
procedure TFrmLogin.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmTeste, FrmTeste);
  FrmTeste.Show;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  FrmLogin := nil;
end;

procedure TFrmLogin.lblSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmLogin.Timer1Timer(Sender: TObject);
begin
  lblHorario.Caption := FormatDateTime('dd/mm/yyyy | hh:mm:ss', Now);
end;

end.
