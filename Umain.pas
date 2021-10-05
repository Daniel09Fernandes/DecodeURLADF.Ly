unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    edtURL: TEdit;
    blUrlEncode: TLabel;
    BtnDecode: TButton;
    lbOutputURL: TLabel;
    PopmOptions: TPopupMenu;
    Copiar1: TMenuItem;
    procedure BtnDecodeClick(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure edtURLClick(Sender: TObject);
    procedure lbOutputURLDblClick(Sender: TObject);
  private
    function decodeURL : String;
    function findDestURL  : String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses ClipBrd,Winapi.ShellAPI;
{ TForm1 }

procedure TForm1.BtnDecodeClick(Sender: TObject);
begin
  lbOutputURL.Caption := decodeURL;
end;

procedure TForm1.Copiar1Click(Sender: TObject);
begin
  Clipboard.AsText := lbOutputURL.Caption;
end;

function TForm1.decodeURL: String;
const
   FIntpuPontoBarra = '%3A%2F%2F'; FOutputPontoBarra = '://';
   FIntpuBarra      = '%2F';       FOutputBarra = '/';
   FIntpuredirect   = '%3F';       FOutputRedirect = '?';
   FIntpuigual      = '%3D';       FOutputIgual = '=';
begin
  if not trim(edtURL.Text).IsEmpty then
  begin
    result := findDestURL;
    result := StringReplace(result,FIntpuPontoBarra,FOutputPontoBarra,[rfReplaceAll]);
    result := StringReplace(result,FIntpuBarra,FOutputBarra,[rfReplaceAll]);
    result := StringReplace(result,FIntpuredirect,FOutputRedirect,[rfReplaceAll]);
    result := StringReplace(result,FIntpuigual,FOutputIgual,[rfReplaceAll]);
  end;
end;

procedure TForm1.edtURLClick(Sender: TObject);
begin
  edtURL.Clear;
end;

function TForm1.findDestURL: String;
begin
  if not trim(edtURL.Text).IsEmpty then
  begin
    result := copy(edtURL.Text,pos('dest=',edtURL.Text));
    result := StringReplace(result, 'dest=','',[]);
    result := copy(result,0, length(result)-1);
  end;
end;

procedure TForm1.lbOutputURLDblClick(Sender: TObject);
begin
 if MessageDlg('Deseja abrir a URL no navegador? ',TMsgDlgType.mtConfirmation,mbYesNo,0) = mrYes then
   ShellExecute(Handle, 'open', Pchar(lbOutputURL.Caption), nil, nil, SW_SHOWMAXIMIZED);
end;

end.
