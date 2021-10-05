{
** DECODE URL ADF.LY                                                 **
** Projeto openSource desenvolvido por Daniel Fernandes              **
** Desenvolvido em 05/10/2021                                        **
}


program PrjDecodeADFly;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
