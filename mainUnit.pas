unit mainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TformMain = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    CadastrarCliente1: TMenuItem;
    CadastrarCliente2: TMenuItem;
    Cadastrar1: TMenuItem;
    procedure Sistema2Click(Sender: TObject);
    procedure CadastrarCliente2Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

{$R *.dfm}

uses cadUnit, consultUnit;

procedure TformMain.Cadastrar1Click(Sender: TObject);
begin
  formCons.ShowModal;
end;

procedure TformMain.CadastrarCliente2Click(Sender: TObject);
begin
    formCad.ShowModal;
end;

procedure TformMain.Sistema2Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja sair do sistema?', 'Confirmação', MB_ICONQUESTION+MB_YESNO) = mrYES then
    begin
      Application.Terminate;
    end
  else
    Begin
      abort
    End;

end;

end.
